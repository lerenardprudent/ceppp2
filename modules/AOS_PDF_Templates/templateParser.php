<?php

/**
 * Products, Quotations & Invoices modules.
 * Extensions to SugarCRM
 * @package Advanced OpenSales for SugarCRM
 * @subpackage Products
 * @copyright SalesAgility Ltd http://www.salesagility.com
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU AFFERO GENERAL PUBLIC LICENSE as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU AFFERO GENERAL PUBLIC LICENSE
 * along with this program; if not, see http://www.gnu.org/licenses
 * or write to the Free Software Foundation,Inc., 51 Franklin Street,
 * Fifth Floor, Boston, MA 02110-1301  USA
 *
 * @author SalesAgility Ltd <support@salesagility.com>
 */

use SuiteCRM\Utility\SuiteValidator as SuiteValidator;

class templateParser
{
    public static function parse_template($string, $bean_arr)
    {
        foreach ($bean_arr as $bean_name => $bean_id) {
            $focus = BeanFactory::getBean($bean_name, $bean_id);
            $string = templateParser::parse_template_bean($string, $focus->table_name, $focus);

            foreach ($focus->field_defs as $focus_name => $focus_arr) {
                if ($focus_arr['type'] == 'relate') {
                    if (isset($focus_arr['module']) && $focus_arr['module'] != '' && $focus_arr['module'] != 'EmailAddress') {
                        $idName = $focus_arr['id_name'];
                        $relate_focus = BeanFactory::getBean($focus_arr['module'], $focus->$idName);

                        $string = templateParser::parse_template_bean($string, $focus_arr['name'], $relate_focus);
                    }
                }
            }
        }
        return $string;
    }

    public function parse_template_bean($string, $key, &$focus)
    {
        global $app_strings, $sugar_config, $app_list_strings;
        $repl_arr = array();
        $isValidator = new SuiteValidator();
        $nullVal = "--";

        foreach ($focus->field_defs as $field_def) {
            if (isset($field_def['name']) && $field_def['name'] != '') {
                $fieldName = $field_def['name'];
                
                if ( empty($focus->$fieldName)) {
                  $repl_arr[$key . "_" . $fieldName] = $nullVal;
                  continue;
                }
                
                if ($field_def['type'] == 'currency') {
                    $repl_arr[$key . "_" . $fieldName] = currency_format_number($focus->$fieldName, $params = array('currency_symbol' => false));
                } elseif (($field_def['type'] == 'radioenum' || $field_def['type'] == 'enum' || $field_def['type'] == 'dynamicenum') && isset($field_def['options'])) {
                    $repl_arr[$key . "_" . $fieldName] = translate($field_def['options'], $focus->module_dir, $focus->$fieldName);
                } elseif ($field_def['type'] == 'multienum' && isset($field_def['options'])) {
                    $mVals = unencodeMultienum($focus->$fieldName);
                    $translatedVals = array();
                    foreach ($mVals as $mVal) {
                        $translatedVals[] = translate($field_def['options'], $focus->module_dir, $mVal);
                    }
                    $repl_arr[$key . "_" . $fieldName] = implode(", ", $translatedVals);
                } //Fix for Windows Server as it needed to be converted to a string.
                elseif ($field_def['type'] == 'int') {
                    $repl_arr[$key . "_" . $fieldName] = strval($focus->$fieldName);
                } elseif ($field_def['type'] == 'bool') {
                    if ($focus->$fieldName == "1") {
                        $repl_arr[$key . "_" . $fieldName] = "true";
                    } else {
                        $repl_arr[$key . "_" . $fieldName] = "false";
                    }
                } elseif ($field_def['type'] == 'image') {
                    $secureLink = $sugar_config['site_url'] . '/' . "public/". $focus->id .  '_' . $fieldName;
                    $file_location = $sugar_config['upload_dir'] . '/'  . $focus->id .  '_' . $fieldName;
                    // create a copy with correct extension by mime type
                    if (!file_exists('public')) {
                        sugar_mkdir('public', 0777);
                    }
                    if (!copy($file_location, "public/{$focus->id}".  '_' . "$fieldName")) {
                        $secureLink = $sugar_config['site_url'] . '/'. $file_location;
                    }

                    if (empty($focus->$fieldName)) {
                        $repl_arr[$key . "_" . $fieldName] = "";
                    } else {
                        $link = $secureLink;
                        $repl_arr[$key . "_" . $fieldName] = '<img src="' . $link . '" width="'.$field_def['width'].'" height="'.$field_def['height'].'"/>';
                    }
                } elseif ( $field_def['type'] == 'SmartDropdown') {
                  if ( $focus->{$field_def['name']} ) {
                    $optionsListName = $field_def['options'];
                    $options = $app_list_strings[$optionsListName];
                    $flattenedOptions = [];
                    array_walk_recursive($options, function($item, $key) use (&$flattenedOptions) {
                      if ( $key ) {
                        $flattenedOptions[$key] = $item;
                      }
                    });
                    $full_strs = [];
                    foreach ( explode('&', $focus->{$field_def['name']}) as $val ) {
                      $full_strs[] = $flattenedOptions[$val];
                    }
                    $repl_arr[$key . "_" . $fieldName] = implode(', ', $full_strs);
                  }
                  
                } else {
                  $repl_arr[$key . "_" . $fieldName] = $focus->$fieldName;
                }
            }
        } // end foreach()

        /* HACK DMARG 2019-12-21
         * Look for related Experiences
         */
        
        $html = preg_match('/EXPÉRIENCE PARTENARIAT.+?(?=<table)(.+?(?=<\/table)<\/table>)/', $string, $match);
        if ( $match ) {
          $expTblTemplHtml = $match[1];
          preg_match_all('/\$[a-zA-Z_]+/', $expTblTemplHtml, $varMatches);
          $db = DBManagerFactory::getInstance();
          $sql = "SELECT pe.* FROM `pat_perspectivepatient_pat_experiencepatientpartenaire_c` p1
                  JOIN pat_experiencepatientpartenaire pe ON p1.pat_perspe53b3patient_ida = '" . $focus->id .
                  "' AND p1.pat_perspe7214tenaire_idb = pe.id";
          $result = $db->query($sql);
          $expTblsHtml = [];
          while ( $row = $db->fetchByAssoc($result) ) {
            $freshTblHtml = $expTblTemplHtml;
            foreach ( $varMatches[0] as $var ) {
              $varName = substr($var, 1);
              $freshTblHtml = str_replace($var, isset($row[$varName]) ? trim($row[$varName]) : $nullVal, $freshTblHtml);
            }
            $expTblsHtml[] = $freshTblHtml;
          }
          $replHtml = !empty($expTblsHtml) ? implode("<br>", $expTblsHtml) : "<br>";
          $string = str_replace($expTblTemplHtml, $replHtml, $string);
        }
        
        
        krsort($repl_arr);
        reset($repl_arr);

        foreach ($repl_arr as $name => $value) {
            if (strpos($name, 'product_discount') !== false || strpos($name, 'quotes_discount') !== false) {
                if ($value != '' && $value != '0.00') {
                    if ($isValidator->isPercentageField($repl_arr['aos_products_quotes_discount'])) {
                        $sep = get_number_seperators();
                        $value = rtrim(rtrim(format_number($value), '0'),
                                $sep[1]) . $app_strings['LBL_PERCENTAGE_SYMBOL'];
                    }
                } else {
                    $value = '';
                }
            }
            if ($name === 'aos_products_product_image' && !empty($value)) {
                $value = '<img src="' . $value . '" class="img-responsive"/>';
            }
            if ($name === 'aos_products_quotes_product_qty') {
                $sep = get_number_seperators();
                $value = rtrim(rtrim(format_number($value), '0'), $sep[1]);
            }

            if ($isValidator->isPercentageField($name)) {
                $sep = get_number_seperators();
                $value = rtrim(rtrim(format_number($value), '0'), $sep[1]) . $app_strings['LBL_PERCENTAGE_SYMBOL'];
            }
            if ($focus->field_defs[$name][dbType] == 'datetime' &&
                (strpos($name, 'date') > 0 || strpos($name, 'expiration') > 0)) {
                if ($value != '') {
                    $dt = explode(' ', $value);
                    $value = $dt[0];
                }
            }
            if ($value != '' && is_string($value)) {
                $string = str_replace("\$$name", $value, $string);
            } elseif (strpos($name, 'address') > 0) {
                $string = str_replace("\$$name<br />", '', $string);
                $string = str_replace("\$$name <br />", '', $string);
                $string = str_replace("\$$name", '', $string);
            } else {
                $string = str_replace("\$$name", '&nbsp;', $string);
            }
        }

        return $string;
    }
}
