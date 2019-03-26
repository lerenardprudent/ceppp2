<?php
// created: 2019-02-26 21:25:28
$dictionary["pat_Partenariats"]["fields"]["pat_partenariats_pat_patients"] = array (
  'name' => 'pat_partenariats_pat_patients',
  'type' => 'link',
  'relationship' => 'pat_partenariats_pat_patients',
  'source' => 'non-db',
  'module' => 'pat_Patients',
  'bean_name' => 'pat_Patients',
  'vname' => 'LBL_PAT_PARTENARIATS_PAT_PATIENTS_FROM_PAT_PATIENTS_TITLE',
  'id_name' => 'pat_partenariats_pat_patientspat_patients_idb',
);
$dictionary["pat_Partenariats"]["fields"]["pat_partenariats_pat_patients_name"] = array (
  'name' => 'pat_partenariats_pat_patients_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_PAT_PARTENARIATS_PAT_PATIENTS_FROM_PAT_PATIENTS_TITLE',
  'save' => true,
  'id_name' => 'pat_partenariats_pat_patientspat_patients_idb',
  'link' => 'pat_partenariats_pat_patients',
  'table' => 'pat_patients',
  'module' => 'pat_Patients',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["pat_Partenariats"]["fields"]["pat_partenariats_pat_patientspat_patients_idb"] = array (
  'name' => 'pat_partenariats_pat_patientspat_patients_idb',
  'type' => 'link',
  'relationship' => 'pat_partenariats_pat_patients',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_PAT_PARTENARIATS_PAT_PATIENTS_FROM_PAT_PATIENTS_TITLE',
);
