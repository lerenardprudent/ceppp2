<?php
// created: 2019-02-26 21:25:30
$dictionary["pat_Partenariats"]["fields"]["pat_patients_pat_partenariats"] = array (
  'name' => 'pat_patients_pat_partenariats',
  'type' => 'link',
  'relationship' => 'pat_patients_pat_partenariats',
  'source' => 'non-db',
  'module' => 'pat_Patients',
  'bean_name' => 'pat_Patients',
  'vname' => 'LBL_PAT_PATIENTS_PAT_PARTENARIATS_FROM_PAT_PATIENTS_TITLE',
  'id_name' => 'pat_patients_pat_partenariatspat_patients_ida',
);
$dictionary["pat_Partenariats"]["fields"]["pat_patients_pat_partenariats_name"] = array (
  'name' => 'pat_patients_pat_partenariats_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_PAT_PATIENTS_PAT_PARTENARIATS_FROM_PAT_PATIENTS_TITLE',
  'save' => true,
  'id_name' => 'pat_patients_pat_partenariatspat_patients_ida',
  'link' => 'pat_patients_pat_partenariats',
  'table' => 'pat_patients',
  'module' => 'pat_Patients',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["pat_Partenariats"]["fields"]["pat_patients_pat_partenariatspat_patients_ida"] = array (
  'name' => 'pat_patients_pat_partenariatspat_patients_ida',
  'type' => 'link',
  'relationship' => 'pat_patients_pat_partenariats',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_PAT_PATIENTS_PAT_PARTENARIATS_FROM_PAT_PATIENTS_TITLE',
);
