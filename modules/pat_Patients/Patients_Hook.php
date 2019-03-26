<?php

require_once ('modules/SecurityGroups/SecurityGroup.php');
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Patients_Hook
 *
 * @author p0070611
 */
class Patients_Hook {
  function update_default_name_fields($bean, $event, $arguments)
  {
    if ( $bean->module_name == "pat_Patients") {
      $last_name = $bean->code_ident;
      if ( !empty($bean->nom) ) {
        $last_name = $bean->nom;
      }
      $bean->last_name = $last_name;
    }
  }
         
  function set_security_group_field($bean, $event, $arguments)
  {
    if ( $bean->module_name == "pat_Patients") {
      if ( empty($bean->centre_recrutement) ) {
        global $current_user;
        $user_id = $current_user->id;

        $secG = new SecurityGroup();
        $groups = $secG->getRecordSecurityGroups($bean->id);
        if ( empty($groups) ) {
          $groups = $secG->getUserSecurityGroups($user_id);
        }

        $secGroupName = "";
        foreach ( $groups as $secgid => $secgroup ) {
          $secGroupName = $secgroup['name'];
          break;
        }
        $bean->centre_recrutement = $secGroupName;
      }
    }
  }
  
  function create_patient_access($bean, $event, $arguments) {
    if ( $bean->module_name == "pat_Patients") {
      $db = DBManagerFactory::getInstance();
      $id = $this->quote($this->gen_uuid());
      $code = $bean->code_ident;
      $uname = $this->quote($code);
      $pwd = $code;
      $hash = $this->quote(md5($pwd));
      $last_name = $this->quote($code);
      $false = $this->quote(0);
      $true = $this->quote(1);
      $status = $this->quote("Active");
      $empty = $this->quote("");
      $now = "NOW()";
      $query = "INSERT INTO users (id, user_name, user_hash, system_generated_password, last_name, modified_user_id, created_by, status, deleted, employee_status, reports_to_id, is_group, factor_auth, date_entered, date_modified) VALUES ($id, $uname, $hash, $false, $uname, $true, $true, $status, $false, $status, $empty, $false, $false, $now, $now)";
      $res = $db->query($query);
      $GLOBALS['log']->debug("Creating patient access: $query");
    }
  }
  
  function assign_patient_access_rights($bean, $event, $arguments) {
    if ( $bean->module_name == "pat_Patients") {
      global $current_user;
      $currUserId = $current_user->id;
      $db = DBManagerFactory::getInstance();
      $code = $bean->code_ident;
      $uname = $this->quote($code);
      $false = $this->quote(0);
      $now = "NOW()";

      $query = "SELECT * FROM Users WHERE user_name = $uname";
      $patUserId = $db->getOne($query);
      if ( !empty($patUserId) ) {
        $patUserId = $this->quote($patUserId);

        // Assign security group of user to patient
        $secGroups = SecurityGroup::getUserSecurityGroups($currUserId);
        if ( count($secGroups) == 1 ) {
          $id = $this->quote($this->gen_uuid());
          $secGroupId = $this->quote(array_values($secGroups)[0]['id']);
          $querySec = "INSERT INTO securitygroups_users(id, date_modified, deleted, securitygroup_id, user_id, noninheritable) VALUES ($id, $now, $false, $secGroupId, $patUserId, $false)";
          $res = $db->query($querySec);
        }

        // Assign Patient role to patient
        $roleName = "Patient";
        $checkRoleQuery = "SELECT * FROM acl_roles where name = \"$roleName\"";
        $roleId = $db->getOne($checkRoleQuery);
        if ( !$roleId ) {
          $roleId = $this->gen_uuid();
          $patientRoleId = $this->quote($roleId);
          $patientRoleName = $this->quote($roleName);
          $createRoleQuery = "INSERT INTO acl_roles(id, name, deleted, date_entered, date_modified) VALUES ($patientRoleId, $patientRoleName, $false, $now, $now)";
          $res = $db->query($createRoleQuery);
        } else {
          $patientRoleId = $this->quote($roleId);
        }

        $id = $this->quote($this->gen_uuid());
        $queryRole = "INSERT INTO acl_roles_users(id, role_id, user_id, date_modified, deleted) VALUES ($id, $patientRoleId, $patUserId, $now, $false)";
        $res = $db->query($queryRole);
        $foo = 1;
      }
      $GLOBALS['log']->debug("Assigning patient access rights: $querySec");
    }
  }
  
  function create_patient_perspective($bean, $event, $arguments) {
    if ( $bean->module_name == "pat_Patients") {
      global $current_user;
      $currUserId = $this->quote($current_user->id);
      $db = DBManagerFactory::getInstance();
      $code = $bean->code_ident;
      $uname = $this->quote($code);
      $false = $this->quote(0);
      $now = "NOW()";

      $query = "SELECT * FROM Users WHERE user_name = $uname";
      $patUserId = $db->getOne($query);
      if ( !empty($patUserId) ) {
        $patUserId = $this->quote($patUserId);
        $patPersId = $this->quote($this->gen_uuid());
        $name = $this->quote("Perspective patient de $code");
        $createPatPersQuery = "INSERT INTO pat_perspectivepatient(id, name, date_entered, date_modified, deleted, assigned_user_id) VALUES ($patPersId, $name, $now, $now, $false, $patUserId)";
        $res = $db->query($createPatPersQuery);
      }

      $id = $this->quote($this->gen_uuid());
      $patId = $this->quote($bean->id);
      $linkQuery = "INSERT INTO pat_patients_pat_perspectivepatient_c(id, deleted, date_modified, pat_patients_pat_perspectivepatientpat_patients_ida, pat_patients_pat_perspectivepatientpat_perspectivepatient_idb) ";
      $linkQuery .= "VALUES ($id, $false, $now, $patId, $patPersId)";
      $res = $db->query($linkQuery);
      $GLOBALS['log']->debug("Creating patient perspective");
    }
  }
  
  function gen_uuid() {
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
  
  function quote($str) {
    return "\"$str\"";
  }
}
