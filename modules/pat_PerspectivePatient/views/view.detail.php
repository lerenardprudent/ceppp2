<?php
/**
 *
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
 * Copyright (C) 2011 - 2018 SalesAgility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
 * reasonably feasible for technical reasons, the Appropriate Legal Notices must
 * display the words "Powered by SugarCRM" and "Supercharged by SuiteCRM".
 */
require_once('include/MVC/View/views/view.detail.php');
require_once('include/SugarTinyMCE.php');

class pat_PerspectivePatientViewDetail extends ViewDetail
{
    public function __construct()
    {
        parent::__construct();
    }
    
    public function display()
    {
      parent::display();

      $customJsFilePath = 'modules/pat_PerspectivePatient/custom2.js';
      echo "<script type='text/javascript' src='include/javascript/myutils.js'></script>";
      echo "<script type='text/javascript' src='$customJsFilePath'></script>";
      
      $this->setupPrintAsPdfHtml();
      //$this->displayPopupHtml();
    }
    
    private function setupPrintAsPdfHtml()
    {
      
        $sql = "SELECT id, name FROM aos_pdf_templates WHERE deleted=0 AND type='pat_PerspectivePatient' AND active = 1 ORDER BY date_modified DESC LIMIT 0,1";
        
        $row = $this->bean->db->fetchOne($sql);
        if ( $row && $row['id']){
          $this->embedForm($row['id']);
        }
    }
    
    private function embedForm($templateId) {
      echo '  <div id="popupDiv_ara" style="display:none;position:fixed;top: 39%; left: 41%;opacity:1;z-index:9999;background:#FFFFFF;">
                <form id="popupForm" action="index.php?entryPoint=generatePdf" method="post">
                  <input type="hidden" name="templateID" value="' . $templateId . '" />
                  <input type="hidden" name="task" value="pdf" />
                  <input type="hidden" name="module" value="'.$_REQUEST['module'].'" />
                  <input type="hidden" name="uid" value="'.$this->bean->id.'" />
                </form>
              </div>
              <script>
                  function printAsPDF(task){
                      var form=document.getElementById(\'popupForm\');
                      if( $(\'[name=templateID]\').val() ) {
                          form.task.value=task;
                          form.submit();
                      }else{
                          alert(\'Error!\');
                      }
                  }
              </script>';
    }
}
