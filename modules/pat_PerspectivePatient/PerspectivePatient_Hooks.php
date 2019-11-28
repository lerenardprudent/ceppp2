<?php

class PerspectivePatient_Hooks {
  function homeRedirect($bean, $event, $arguments)
  {
    global $current_user;
    $db = DBManagerFactory::getInstance();
    
    if ( $bean->module_name == "Users") {
      $roles = ACLRole::getUserRoleNames($current_user->id);
      if ( count($roles) == 1 ) {
        $role = strtolower($roles[0]);
      
        if ( $role == "patient" ) {
          $perspModuleName = "pat_PerspectivePatient";
          $userId = $current_user->id;
          $query = "SELECT * FROM ". strtolower($perspModuleName) . " WHERE modified_user_id = \"$userId\"";
          $recordId = $db->getOne($query);
          if ( $recordId ) {
            $redirectUrl = "index.php?action=ajaxui#ajaxUILoc=" . urlencode("index.php?module=$perspModuleName&return_module=$perspModuleName&action=EditView&record=$recordId");
            SugarApplication::redirect($redirectUrl);
            $GLOBALS['log']->debug("Redirecting: $redirectUrl");
          }
        } else
        if ( $role == "recruteur" ) {
          $redirectUrl = "index.php?module=pat_Patients&action=index";
          SugarApplication::redirect($redirectUrl);
          $GLOBALS['log']->debug("Redirecting: $redirectUrl");
        }
      }
    }
  }

}
