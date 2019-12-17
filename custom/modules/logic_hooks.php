<?php
// Do not store anything in this file that is not part of the array or the hook version.  This file will	
// be automatically rebuilt in the future. 
 $hook_version = 1; 
$hook_array = Array(); 
// position, file, function 
$hook_array['before_save'] = Array(); 
//$hook_array['before_save'][] = Array(2, 'Assign Patient ID', 'modules/pat_Patients/Patients_Hook.php','Patients_Hook', 'assign_patient_id'); 
$hook_array['before_save'][] = Array(2, 'Update First Name field', 'modules/pat_Patients/Patients_Hook.php','Patients_Hook', 'update_default_name_fields'); 
$hook_array['before_save'][] = Array(3, 'Set Security Group Field', 'modules/pat_Patients/Patients_Hook.php','Patients_Hook', 'set_security_group_field'); 
$hook_array['before_save'][] = Array(4, 'Add Recruiter Title', 'modules/Users/User_Hooks.php', 'User_Hooks', 'addRecruiterTitle');
$hook_array['before_save'][] = Array(5, 'Save multiple Pat Persp experiences', 'modules/pat_PerspectivePatient/PerspectivePatient_Hooks.php','PerspectivePatient_Hooks', 'saveMultExperiences');

$hook_array['process_record'] = Array(); 
$hook_array['process_record'][] = Array(1, 'Test for catching database error', 'modules/pat_Patients/Patients_Hook.php','Patients_Hook', 'catch_db_error'); 
$hook_array['after_save'] = Array(); 
$hook_array['after_save'][] = Array(1, 'Create Patient user', 'modules/pat_Patients/Patients_Hook.php','Patients_Hook', 'create_patient_access'); 
$hook_array['after_save'][] = Array(2, 'Assign role and sec group to Patient user', 'modules/pat_Patients/Patients_Hook.php','Patients_Hook', 'assign_patient_access_rights'); 
$hook_array['after_save'][] = Array(3, 'Create PerspectivePatient', 'modules/pat_Patients/Patients_Hook.php','Patients_Hook', 'create_patient_perspective'); 
$hook_array['after_save'][] = Array(4, 'Initiate Preferences', 'modules/pat_Patients/Patients_Hook.php','Patients_Hook', 'initiate_patient_preferences'); 
$hook_array['after_save'][] = Array(5, 'Add Recruiter to Sec Group and Assign Recruiter Role', 'modules/Users/User_Hooks.php','User_Hooks', 'handleNewRecruiter');

$hook_array['after_login'] = Array(); 
$hook_array['after_login'][] = Array(1, 'Record login date/time', 'modules/Users/User_Hooks.php','User_Hooks', 'recordLoginDateTime');
$hook_array['after_login'][] = Array(2, 'Redirect patient to their Perspective entry', 'modules/pat_PerspectivePatient/PerspectivePatient_Hooks.php','PerspectivePatient_Hooks', 'homeRedirect');
$hook_array['before_logout'][] = Array(1, 'Record logout date/time', 'modules/Users/User_Hooks.php','User_Hooks', 'recordLogoutDateTime');

$hook_array['after_entry_point'] = Array(); 
//$hook_array['after_entry_point'][] = Array(1, 'Load DateTimePicker', 'modules/Users/User_Hooks.php','User_Hooks', 'loadDateTimePicker');
/*$hook_array['after_save'][] = Array(1, 'AOD Index Changes', 'modules/AOD_Index/AOD_LogicHooks.php','AOD_LogicHooks', 'saveModuleChanges'); 
$hook_array['after_save'][] = Array(30, 'popup_select', 'modules/SecurityGroups/AssignGroups.php','AssignGroups', 'popup_select'); 
$hook_array['after_delete'] = Array(); 
$hook_array['after_delete'][] = Array(1, 'AOD Index changes', 'modules/AOD_Index/AOD_LogicHooks.php','AOD_LogicHooks', 'saveModuleDelete'); 
$hook_array['after_restore'] = Array(); 
$hook_array['after_restore'][] = Array(1, 'AOD Index changes', 'modules/AOD_Index/AOD_LogicHooks.php','AOD_LogicHooks', 'saveModuleRestore'); 
$hook_array['after_ui_footer'] = Array(); 
$hook_array['after_ui_footer'][] = Array(10, 'popup_onload', 'modules/SecurityGroups/AssignGroups.php','AssignGroups', 'popup_onload'); 
$hook_array['after_ui_frame'] = Array(); 
$hook_array['after_ui_frame'][] = Array(20, 'mass_assign', 'modules/SecurityGroups/AssignGroups.php','AssignGroups', 'mass_assign'); 
$hook_array['after_ui_frame'][] = Array(1, 'Load Social JS', 'include/social/hooks.php','hooks', 'load_js'); */



?>