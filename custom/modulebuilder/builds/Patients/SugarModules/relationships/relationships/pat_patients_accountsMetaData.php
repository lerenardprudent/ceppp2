<?php
// created: 2019-02-26 21:25:29
$dictionary["pat_patients_accounts"] = array (
  'true_relationship_type' => 'one-to-one',
  'relationships' => 
  array (
    'pat_patients_accounts' => 
    array (
      'lhs_module' => 'pat_Patients',
      'lhs_table' => 'pat_patients',
      'lhs_key' => 'id',
      'rhs_module' => 'Accounts',
      'rhs_table' => 'accounts',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'pat_patients_accounts_c',
      'join_key_lhs' => 'pat_patients_accountspat_patients_ida',
      'join_key_rhs' => 'pat_patients_accountsaccounts_idb',
    ),
  ),
  'table' => 'pat_patients_accounts_c',
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
      'name' => 'pat_patients_accountspat_patients_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'pat_patients_accountsaccounts_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'pat_patients_accountsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'pat_patients_accounts_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'pat_patients_accountspat_patients_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'pat_patients_accounts_idb2',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'pat_patients_accountsaccounts_idb',
      ),
    ),
  ),
);