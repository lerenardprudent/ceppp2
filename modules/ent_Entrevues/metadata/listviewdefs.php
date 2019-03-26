<?php
$module_name = 'ent_Entrevues';
$listViewDefs [$module_name] = 
array (
  'DATE_ENTREVUE' => 
  array (
    'type' => 'date',
    'label' => 'LBL_DATE_ENTREVUE',
    'width' => '10%',
    'default' => true,
  ),
  'ENT_ENTREVUES_USERS_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_ENT_ENTREVUES_USERS_FROM_USERS_TITLE',
    'id' => 'ENT_ENTREVUES_USERSUSERS_IDB',
    'width' => '10%',
    'default' => true,
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => false,
  ),
);
;
?>
