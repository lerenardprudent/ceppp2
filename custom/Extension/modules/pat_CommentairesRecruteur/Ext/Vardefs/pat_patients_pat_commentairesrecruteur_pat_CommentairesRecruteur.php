<?php
// created: 2019-12-20 13:14:36
$dictionary["pat_CommentairesRecruteur"]["fields"]["pat_patients_pat_commentairesrecruteur"] = array (
  'name' => 'pat_patients_pat_commentairesrecruteur',
  'type' => 'link',
  'relationship' => 'pat_patients_pat_commentairesrecruteur',
  'source' => 'non-db',
  'module' => 'pat_Patients',
  'bean_name' => 'pat_Patients',
  'vname' => 'LBL_PAT_PATIENTS_PAT_COMMENTAIRESRECRUTEUR_FROM_PAT_PATIENTS_TITLE',
  'id_name' => 'pat_patients_pat_commentairesrecruteurpat_patients_ida',
);
$dictionary["pat_CommentairesRecruteur"]["fields"]["pat_patients_pat_commentairesrecruteur_name"] = array (
  'name' => 'pat_patients_pat_commentairesrecruteur_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_PAT_PATIENTS_PAT_COMMENTAIRESRECRUTEUR_FROM_PAT_PATIENTS_TITLE',
  'save' => true,
  'id_name' => 'pat_patients_pat_commentairesrecruteurpat_patients_ida',
  'link' => 'pat_patients_pat_commentairesrecruteur',
  'table' => 'pat_patients',
  'module' => 'pat_Patients',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["pat_CommentairesRecruteur"]["fields"]["pat_patients_pat_commentairesrecruteurpat_patients_ida"] = array (
  'name' => 'pat_patients_pat_commentairesrecruteurpat_patients_ida',
  'type' => 'link',
  'relationship' => 'pat_patients_pat_commentairesrecruteur',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_PAT_PATIENTS_PAT_COMMENTAIRESRECRUTEUR_FROM_PAT_PATIENTS_TITLE',
);
