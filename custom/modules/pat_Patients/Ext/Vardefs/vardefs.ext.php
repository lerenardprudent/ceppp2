<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2019-12-24 18:50:14
$dictionary["pat_Patients"]["fields"]["pat_patients_pat_commentairesrecruteur"] = array (
  'name' => 'pat_patients_pat_commentairesrecruteur',
  'type' => 'link',
  'relationship' => 'pat_patients_pat_commentairesrecruteur',
  'source' => 'non-db',
  'module' => 'pat_CommentairesRecruteur',
  'bean_name' => 'pat_CommentairesRecruteur',
  'vname' => 'LBL_PAT_PATIENTS_PAT_COMMENTAIRESRECRUTEUR_FROM_PAT_COMMENTAIRESRECRUTEUR_TITLE',
  'id_name' => 'pat_patien6159cruteur_idb',
);
$dictionary["pat_Patients"]["fields"]["pat_patients_pat_commentairesrecruteur_name"] = array (
  'name' => 'pat_patients_pat_commentairesrecruteur_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_PAT_PATIENTS_PAT_COMMENTAIRESRECRUTEUR_FROM_PAT_COMMENTAIRESRECRUTEUR_TITLE',
  'save' => true,
  'id_name' => 'pat_patien6159cruteur_idb',
  'link' => 'pat_patients_pat_commentairesrecruteur',
  'table' => 'pat_commentairesrecruteur',
  'module' => 'pat_CommentairesRecruteur',
  'rname' => 'name',
);
$dictionary["pat_Patients"]["fields"]["pat_patien6159cruteur_idb"] = array (
  'name' => 'pat_patien6159cruteur_idb',
  'type' => 'link',
  'relationship' => 'pat_patients_pat_commentairesrecruteur',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_PAT_PATIENTS_PAT_COMMENTAIRESRECRUTEUR_FROM_PAT_COMMENTAIRESRECRUTEUR_TITLE',
);


// created: 2019-12-24 18:50:13
$dictionary["pat_Patients"]["fields"]["pat_patients_pat_perspectivepatient"] = array (
  'name' => 'pat_patients_pat_perspectivepatient',
  'type' => 'link',
  'relationship' => 'pat_patients_pat_perspectivepatient',
  'source' => 'non-db',
  'module' => 'pat_PerspectivePatient',
  'bean_name' => 'pat_PerspectivePatient',
  'vname' => 'LBL_PAT_PATIENTS_PAT_PERSPECTIVEPATIENT_FROM_PAT_PERSPECTIVEPATIENT_TITLE',
  'id_name' => 'pat_patients_pat_perspectivepatientpat_perspectivepatient_idb',
);
$dictionary["pat_Patients"]["fields"]["pat_patients_pat_perspectivepatient_name"] = array (
  'name' => 'pat_patients_pat_perspectivepatient_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_PAT_PATIENTS_PAT_PERSPECTIVEPATIENT_FROM_PAT_PERSPECTIVEPATIENT_TITLE',
  'save' => true,
  'id_name' => 'pat_patients_pat_perspectivepatientpat_perspectivepatient_idb',
  'link' => 'pat_patients_pat_perspectivepatient',
  'table' => 'pat_perspectivepatient',
  'module' => 'pat_PerspectivePatient',
  'rname' => 'name',
);
$dictionary["pat_Patients"]["fields"]["pat_patients_pat_perspectivepatientpat_perspectivepatient_idb"] = array (
  'name' => 'pat_patients_pat_perspectivepatientpat_perspectivepatient_idb',
  'type' => 'link',
  'relationship' => 'pat_patients_pat_perspectivepatient',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_PAT_PATIENTS_PAT_PERSPECTIVEPATIENT_FROM_PAT_PERSPECTIVEPATIENT_TITLE',
);

?>