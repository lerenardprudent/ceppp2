<?php
// created: 2018-10-12 21:18:51
$subpanel_layout['list_fields'] = array (
  'date_entrevue' => 
  array (
    'type' => 'date',
    'vname' => 'LBL_DATE_ENTREVUE',
    'width' => '10%',
    'default' => true,
  ),
  'ent_entrevues_users_name' => 
  array (
    'type' => 'relate',
    'link' => true,
    'vname' => 'LBL_ENT_ENTREVUES_USERS_FROM_USERS_TITLE',
    'id' => 'ENT_ENTREVUES_USERSUSERS_IDB',
    'width' => '10%',
    'default' => true,
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => 'Users',
    'target_record_key' => 'ent_entrevues_usersusers_idb',
  ),
  'edit_button' => 
  array (
    'vname' => 'LBL_EDIT_BUTTON',
    'widget_class' => 'SubPanelEditButton',
    'module' => 'ent_Entrevues',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'ent_Entrevues',
    'width' => '5%',
    'default' => true,
  ),
);