<?php
// created: 2018-10-12 21:15:08
$dictionary["ent_entrevues_users"] = array (
  'true_relationship_type' => 'one-to-one',
  'relationships' => 
  array (
    'ent_entrevues_users' => 
    array (
      'lhs_module' => 'ent_Entrevues',
      'lhs_table' => 'ent_entrevues',
      'lhs_key' => 'id',
      'rhs_module' => 'Users',
      'rhs_table' => 'users',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'ent_entrevues_users_c',
      'join_key_lhs' => 'ent_entrevues_usersent_entrevues_ida',
      'join_key_rhs' => 'ent_entrevues_usersusers_idb',
    ),
  ),
  'table' => 'ent_entrevues_users_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'ent_entrevues_usersent_entrevues_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'ent_entrevues_usersusers_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'ent_entrevues_usersspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'ent_entrevues_users_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'ent_entrevues_usersent_entrevues_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'ent_entrevues_users_idb2',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'ent_entrevues_usersusers_idb',
      ),
    ),
  ),
);