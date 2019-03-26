<?php
// created: 2018-10-12 21:15:08
$dictionary["ent_Entrevues"]["fields"]["ent_entrevues_users"] = array (
  'name' => 'ent_entrevues_users',
  'type' => 'link',
  'relationship' => 'ent_entrevues_users',
  'source' => 'non-db',
  'module' => 'Users',
  'bean_name' => 'User',
  'vname' => 'LBL_ENT_ENTREVUES_USERS_FROM_USERS_TITLE',
  'id_name' => 'ent_entrevues_usersusers_idb',
);
$dictionary["ent_Entrevues"]["fields"]["ent_entrevues_users_name"] = array (
  'name' => 'ent_entrevues_users_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ENT_ENTREVUES_USERS_FROM_USERS_TITLE',
  'save' => true,
  'id_name' => 'ent_entrevues_usersusers_idb',
  'link' => 'ent_entrevues_users',
  'table' => 'users',
  'module' => 'Users',
  'rname' => 'name',
);
$dictionary["ent_Entrevues"]["fields"]["ent_entrevues_usersusers_idb"] = array (
  'name' => 'ent_entrevues_usersusers_idb',
  'type' => 'link',
  'relationship' => 'ent_entrevues_users',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_ENT_ENTREVUES_USERS_FROM_USERS_TITLE',
);
