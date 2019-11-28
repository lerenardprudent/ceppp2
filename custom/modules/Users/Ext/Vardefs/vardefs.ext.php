<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2018-10-12 21:15:08
$dictionary["User"]["fields"]["ent_entrevues_users"] = array (
  'name' => 'ent_entrevues_users',
  'type' => 'link',
  'relationship' => 'ent_entrevues_users',
  'source' => 'non-db',
  'module' => 'ent_Entrevues',
  'bean_name' => 'ent_Entrevues',
  'vname' => 'LBL_ENT_ENTREVUES_USERS_FROM_ENT_ENTREVUES_TITLE',
  'id_name' => 'ent_entrevues_usersent_entrevues_ida',
);
$dictionary["User"]["fields"]["ent_entrevues_users_name"] = array (
  'name' => 'ent_entrevues_users_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ENT_ENTREVUES_USERS_FROM_ENT_ENTREVUES_TITLE',
  'save' => true,
  'id_name' => 'ent_entrevues_usersent_entrevues_ida',
  'link' => 'ent_entrevues_users',
  'table' => 'ent_entrevues',
  'module' => 'ent_Entrevues',
  'rname' => 'name',
);
$dictionary["User"]["fields"]["ent_entrevues_usersent_entrevues_ida"] = array (
  'name' => 'ent_entrevues_usersent_entrevues_ida',
  'type' => 'link',
  'relationship' => 'ent_entrevues_users',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_ENT_ENTREVUES_USERS_FROM_ENT_ENTREVUES_TITLE',
);


 // created: 2019-11-25 17:49:24
$dictionary['User']['fields']['date_last_login_c']['inline_edit']='';
$dictionary['User']['fields']['date_last_login_c']['labelValue']='LBL_DATE_LAST_LOGIN';

 

 // created: 2019-11-25 17:49:41
$dictionary['User']['fields']['date_last_logout_c']['inline_edit']='';
$dictionary['User']['fields']['date_last_logout_c']['labelValue']='LBL_DATE_LAST_LOGOUT';

 
?>