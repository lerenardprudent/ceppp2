<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2019-12-19 14:42:17
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


// created: 2019-12-19 14:42:18
$dictionary["pat_PerspectivePatient"]["fields"]["pat_perspectivepatient_pat_experiencepatientpartenaire"] = array (
  'name' => 'pat_perspectivepatient_pat_experiencepatientpartenaire',
  'type' => 'link',
  'relationship' => 'pat_perspectivepatient_pat_experiencepatientpartenaire',
  'source' => 'non-db',
  'module' => 'pat_ExperiencePatientPartenaire',
  'bean_name' => 'pat_ExperiencePatientPartenaire',
  'side' => 'right',
  'vname' => 'LBL_PAT_PERSPECTIVEPATIENT_PAT_EXPERIENCEPATIENTPARTENAIRE_FROM_PAT_EXPERIENCEPATIENTPARTENAIRE_TITLE',
);

?>