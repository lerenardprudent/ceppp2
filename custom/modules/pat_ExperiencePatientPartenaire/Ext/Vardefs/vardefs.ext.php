<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2019-12-20 16:43:32
$dictionary["pat_ExperiencePatientPartenaire"]["fields"]["pat_perspectivepatient_pat_experiencepatientpartenaire"] = array (
  'name' => 'pat_perspectivepatient_pat_experiencepatientpartenaire',
  'type' => 'link',
  'relationship' => 'pat_perspectivepatient_pat_experiencepatientpartenaire',
  'source' => 'non-db',
  'module' => 'pat_PerspectivePatient',
  'bean_name' => 'pat_PerspectivePatient',
  'vname' => 'LBL_PAT_PERSPECTIVEPATIENT_PAT_EXPERIENCEPATIENTPARTENAIRE_FROM_PAT_PERSPECTIVEPATIENT_TITLE',
  'id_name' => 'pat_perspe53b3patient_ida',
);
$dictionary["pat_ExperiencePatientPartenaire"]["fields"]["pat_perspectivepatient_pat_experiencepatientpartenaire_name"] = array (
  'name' => 'pat_perspectivepatient_pat_experiencepatientpartenaire_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_PAT_PERSPECTIVEPATIENT_PAT_EXPERIENCEPATIENTPARTENAIRE_FROM_PAT_PERSPECTIVEPATIENT_TITLE',
  'save' => true,
  'id_name' => 'pat_perspe53b3patient_ida',
  'link' => 'pat_perspectivepatient_pat_experiencepatientpartenaire',
  'table' => 'pat_perspectivepatient',
  'module' => 'pat_PerspectivePatient',
  'rname' => 'name',
);
$dictionary["pat_ExperiencePatientPartenaire"]["fields"]["pat_perspe53b3patient_ida"] = array (
  'name' => 'pat_perspe53b3patient_ida',
  'type' => 'link',
  'relationship' => 'pat_perspectivepatient_pat_experiencepatientpartenaire',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_PAT_PERSPECTIVEPATIENT_PAT_EXPERIENCEPATIENTPARTENAIRE_FROM_PAT_EXPERIENCEPATIENTPARTENAIRE_TITLE',
);

?>