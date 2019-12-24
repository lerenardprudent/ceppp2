<?php
// created: 2019-12-24 18:32:57
$dictionary["pat_PerspectivePatient"]["fields"]["pat_patients_pat_perspectivepatient"] = array (
  'name' => 'pat_patients_pat_perspectivepatient',
  'type' => 'link',
  'relationship' => 'pat_patients_pat_perspectivepatient',
  'source' => 'non-db',
  'module' => 'pat_Patients',
  'bean_name' => 'pat_Patients',
  'vname' => 'LBL_PAT_PATIENTS_PAT_PERSPECTIVEPATIENT_FROM_PAT_PATIENTS_TITLE',
  'id_name' => 'pat_patients_pat_perspectivepatientpat_patients_ida',
);
$dictionary["pat_PerspectivePatient"]["fields"]["pat_patients_pat_perspectivepatient_name"] = array (
  'name' => 'pat_patients_pat_perspectivepatient_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_PAT_PATIENTS_PAT_PERSPECTIVEPATIENT_FROM_PAT_PATIENTS_TITLE',
  'save' => true,
  'id_name' => 'pat_patients_pat_perspectivepatientpat_patients_ida',
  'link' => 'pat_patients_pat_perspectivepatient',
  'table' => 'pat_patients',
  'module' => 'pat_Patients',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["pat_PerspectivePatient"]["fields"]["pat_patients_pat_perspectivepatientpat_patients_ida"] = array (
  'name' => 'pat_patients_pat_perspectivepatientpat_patients_ida',
  'type' => 'link',
  'relationship' => 'pat_patients_pat_perspectivepatient',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_PAT_PATIENTS_PAT_PERSPECTIVEPATIENT_FROM_PAT_PATIENTS_TITLE',
);
