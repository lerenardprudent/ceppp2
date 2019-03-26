<?php

class PerspectivePatient_Hooks {
  function homeRedirect($bean, $event, $arguments)
  {
    global $current_user;
    $db = DBManagerFactory::getInstance();
    
    if ( $bean->module_name == "Users") {
      $roles = ACLRole::getUserRoleNames($current_user->id);
      if ( count($roles) == 1 && $roles[0] == "Patient" ) {
        $perspModuleName = "pat_PerspectivePatient";
        $userId = $current_user->id;
        $query = "SELECT * FROM $perspModuleName WHERE assigned_user_id = \"$userId\"";
        $recordId = $db->getOne($query);
        if ( $recordId ) {
          $redirectUrl = "index.php?action=ajaxui#ajaxUILoc=" . urlencode("index.php?module=$perspModuleName&return_module=$perspModuleName&action=EditView&record=$recordId");
          SugarApplication::redirect($redirectUrl);
          $GLOBALS['log']->debug("Redirecting: $redirectUrl");
        }
      }
    }
  }

}
