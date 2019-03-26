<?php
// created: 2019-02-26 21:25:30
$dictionary["Account"]["fields"]["pat_patients_accounts"] = array (
  'name' => 'pat_patients_accounts',
  'type' => 'link',
  'relationship' => 'pat_patients_accounts',
  'source' => 'non-db',
  'module' => 'pat_Patients',
  'bean_name' => 'pat_Patients',
  'vname' => 'LBL_PAT_PATIENTS_ACCOUNTS_FROM_PAT_PATIENTS_TITLE',
  'id_name' => 'pat_patients_accountspat_patients_ida',
);
$dictionary["Account"]["fields"]["pat_patients_accounts_name"] = array (
  'name' => 'pat_patients_accounts_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_PAT_PATIENTS_ACCOUNTS_FROM_PAT_PATIENTS_TITLE',
  'save' => true,
  'id_name' => 'pat_patients_accountspat_patients_ida',
  'link' => 'pat_patients_accounts',
  'table' => 'pat_patients',
  'module' => 'pat_Patients',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["Account"]["fields"]["pat_patients_accountspat_patients_ida"] = array (
  'name' => 'pat_patients_accountspat_patients_ida',
  'type' => 'link',
  'relationship' => 'pat_patients_accounts',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_PAT_PATIENTS_ACCOUNTS_FROM_PAT_PATIENTS_TITLE',
);
