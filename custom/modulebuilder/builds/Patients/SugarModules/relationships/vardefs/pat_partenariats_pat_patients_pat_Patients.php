<?php
// created: 2019-02-26 21:25:28
$dictionary["pat_Patients"]["fields"]["pat_partenariats_pat_patients"] = array (
  'name' => 'pat_partenariats_pat_patients',
  'type' => 'link',
  'relationship' => 'pat_partenariats_pat_patients',
  'source' => 'non-db',
  'module' => 'pat_Partenariats',
  'bean_name' => 'pat_Partenariats',
  'vname' => 'LBL_PAT_PARTENARIATS_PAT_PATIENTS_FROM_PAT_PARTENARIATS_TITLE',
  'id_name' => 'pat_partenariats_pat_patientspat_partenariats_ida',
);
$dictionary["pat_Patients"]["fields"]["pat_partenariats_pat_patients_name"] = array (
  'name' => 'pat_partenariats_pat_patients_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_PAT_PARTENARIATS_PAT_PATIENTS_FROM_PAT_PARTENARIATS_TITLE',
  'save' => true,
  'id_name' => 'pat_partenariats_pat_patientspat_partenariats_ida',
  'link' => 'pat_partenariats_pat_patients',
  'table' => 'pat_partenariats',
  'module' => 'pat_Partenariats',
  'rname' => 'name',
);
$dictionary["pat_Patients"]["fields"]["pat_partenariats_pat_patientspat_partenariats_ida"] = array (
  'name' => 'pat_partenariats_pat_patientspat_partenariats_ida',
  'type' => 'link',
  'relationship' => 'pat_partenariats_pat_patients',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_PAT_PARTENARIATS_PAT_PATIENTS_FROM_PAT_PARTENARIATS_TITLE',
);
