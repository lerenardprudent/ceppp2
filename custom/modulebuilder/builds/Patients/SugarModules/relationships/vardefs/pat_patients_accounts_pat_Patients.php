<?php
// created: 2019-02-26 21:25:30
$dictionary["pat_Patients"]["fields"]["pat_patients_accounts"] = array (
  'name' => 'pat_patients_accounts',
  'type' => 'link',
  'relationship' => 'pat_patients_accounts',
  'source' => 'non-db',
  'module' => 'Accounts',
  'bean_name' => 'Account',
  'vname' => 'LBL_PAT_PATIENTS_ACCOUNTS_FROM_ACCOUNTS_TITLE',
  'id_name' => 'pat_patients_accountsaccounts_idb',
);
$dictionary["pat_Patients"]["fields"]["pat_patients_accounts_name"] = array (
  'name' => 'pat_patients_accounts_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_PAT_PATIENTS_ACCOUNTS_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'pat_patients_accountsaccounts_idb',
  'link' => 'pat_patients_accounts',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["pat_Patients"]["fields"]["pat_patients_accountsaccounts_idb"] = array (
  'name' => 'pat_patients_accountsaccounts_idb',
  'type' => 'link',
  'relationship' => 'pat_patients_accounts',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_PAT_PATIENTS_ACCOUNTS_FROM_ACCOUNTS_TITLE',
);
