<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of User_Hooks
 *
 * @author p0070611
 */
class User_Hooks {
  function now() {
    $localTz = "America/Montreal";
    $dt = new DateTime("now", new DateTimeZone($localTz));
    return $dt->format('Y-m-d H:i:s');
  }
  function recordLoginDateTime($user, $event)
  {
    $user->date_last_login_c = $this->now();
    $user->save();
  }
  
  function recordLogoutDateTime($user, $event)
  {
    $user->date_last_logout_c = $this->now();
    $user->save();
  }
  
  function addRecruiterTitle($user, $event) {
    if ( $user->is_recruiter_c ) {
      $user->title = "Recruteur";
    }
  }
  
  function handleNewRecruiter($user, $event)
  {
    $db = DBManagerFactory::getInstance();
    $recrRoleName = "Recruteur";
    $query = "SELECT * FROM acl_roles WHERE name = '$recrRoleName'";
    $recrRoleId = self::quote($db->getOne($query));
    $userId = self::quote($user->id);
    
    $frStrsPath = str_replace('\\', '/', SUGAR_PATH . "/custom/Extension/application/Ext/Language/fr_FR.Patients.php");
    include $frStrsPath;
    $etablRecr = $app_list_strings['etablissement_recrut_list'];
    $test = $etablRecr['DCPP']['dcpp_cours_css'];
    
    if ( $user->is_recruiter_c ) {
      $hasRecruiterRole = $db->getOne("SELECT * FROM acl_roles_users WHERE role_id = $recrRoleId AND user_id = $userId AND deleted = 0");
      if ( !$hasRecruiterRole ) {
        $id = self::quote(self::gen_uuid());
        $hasRecruiterRole = $db->query("INSERT INTO acl_roles_users (id, role_id, user_id, date_modified) VALUES($id, $recrRoleId, $userId, NOW())");
      } 
      
      if ( $user->etab_recrutement_c ) {
        $parentNode = null;
        $node = null;
        foreach ( $etablRecr as $k => $v ) {
          if ( is_array($v) && isset($v[$user->etab_recrutement_c])) {
            $parentNode = $k;
            $node = $v[$user->etab_recrutement_c];
            $recrSecGrpName = "Centre de recrutement - $parentNode - $node";
            break;
          }
        }
        if ( $recrSecGrpName ) {
          $recrSecGrpName = self::quote($recrSecGrpName);
          $recrSecGrpId = $db->getOne("SELECT * from securitygroups WHERE name = $recrSecGrpName AND deleted = 0");
          if ( !$recrSecGrpId ) {
            // Must create sec group first
            $recrSecGrpId = self::gen_uuid();
            $res = $db->query("INSERT INTO securitygroups (id, name, date_entered, date_modified) VALUES (" . self::quote($recrSecGrpId) . ", $recrSecGrpName, NOW(), NOW())");
          }
          
          $currUserSecGrpId = $db->getOne("SELECT securitygroup_id from securitygroups_users WHERE user_id = $userId AND deleted = 0");
          if ( $currUserSecGrpId && $currUserSecGrpId != $recrSecGrpId) {
            // Delete prev sec group (whatever it is)
            $currUserSecGrpId = false;
            $res = $db->query("DELETE FROM securitygroups_users WHERE user_id = $userId");
          }
          
          if ( !$currUserSecGrpId ) {
            $userSecGrpId = self::quote(self::gen_uuid());
            $recrSecGrpId = self::quote($recrSecGrpId);
            $userInSecGrp = $db->query("INSERT INTO securitygroups_users (id, date_modified, securitygroup_id, user_id) VALUES ($userSecGrpId, NOW(), $recrSecGrpId, $userId)");
          }
        }
      } else {
        $foo = 1; // Remove recruitment security group
      }
    } else {
      $hasRecruiterRole = $db->query("DELETE FROM securitygroups_users WHERE securitygroup_id = $recrRoleId AND user_id = $userId");
    }
  }
  
  static function quote($str) {
    return "\"$str\"";
  }
  
  static function gen_uuid() {
    return sprintf( '%04x%04x-%04x-%04x-%04x-%04x%04x%04x',
        // 32 bits for "time_low"
        mt_rand( 0, 0xffff ), mt_rand( 0, 0xffff ),

        // 16 bits for "time_mid"
        mt_rand( 0, 0xffff ),

        // 16 bits for "time_hi_and_version",
        // four most significant bits holds version number 4
        mt_rand( 0, 0x0fff ) | 0x4000,

        // 16 bits, 8 bits for "clk_seq_hi_res",
        // 8 bits for "clk_seq_low",
        // two most significant bits holds zero and one for variant DCE1.1
        mt_rand( 0, 0x3fff ) | 0x8000,

        // 48 bits for "node"
        mt_rand( 0, 0xffff ), mt_rand( 0, 0xffff ), mt_rand( 0, 0xffff )
    );
  }
}
