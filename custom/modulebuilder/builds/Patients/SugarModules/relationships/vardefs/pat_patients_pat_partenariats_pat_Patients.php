<?php
// created: 2019-02-26 21:25:30
$dictionary["pat_Patients"]["fields"]["pat_patients_pat_partenariats"] = array (
  'name' => 'pat_patients_pat_partenariats',
  'type' => 'link',
  'relationship' => 'pat_patients_pat_partenariats',
  'source' => 'non-db',
  'module' => 'pat_Partenariats',
  'bean_name' => 'pat_Partenariats',
  'vname' => 'LBL_PAT_PATIENTS_PAT_PARTENARIATS_FROM_PAT_PARTENARIATS_TITLE',
  'id_name' => 'pat_patients_pat_partenariatspat_partenariats_idb',
);
$dictionary["pat_Patients"]["fields"]["pat_patients_pat_partenariats_name"] = array (
  'name' => 'pat_patients_pat_partenariats_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_PAT_PATIENTS_PAT_PARTENARIATS_FROM_PAT_PARTENARIATS_TITLE',
  'save' => true,
  'id_name' => 'pat_patients_pat_partenariatspat_partenariats_idb',
  'link' => 'pat_patients_pat_partenariats',
  'table' => 'pat_partenariats',
  'module' => 'pat_Partenariats',
  'rname' => 'name',
);
$dictionary["pat_Patients"]["fields"]["pat_patients_pat_partenariatspat_partenariats_idb"] = array (
  'name' => 'pat_patients_pat_partenariatspat_partenariats_idb',
  'type' => 'link',
  'relationship' => 'pat_patients_pat_partenariats',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_PAT_PATIENTS_PAT_PARTENARIATS_FROM_PAT_PARTENARIATS_TITLE',
);
