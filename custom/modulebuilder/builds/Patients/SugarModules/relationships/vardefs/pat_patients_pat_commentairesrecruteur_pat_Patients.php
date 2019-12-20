<?php
// created: 2019-12-20 11:15:49
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
