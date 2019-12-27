<?php
// created: 2019-12-27 16:52:32
$dictionary["pat_Formation"]["fields"]["pat_perspectivepatient_pat_formation"] = array (
  'name' => 'pat_perspectivepatient_pat_formation',
  'type' => 'link',
  'relationship' => 'pat_perspectivepatient_pat_formation',
  'source' => 'non-db',
  'module' => 'pat_PerspectivePatient',
  'bean_name' => 'pat_PerspectivePatient',
  'vname' => 'LBL_PAT_PERSPECTIVEPATIENT_PAT_FORMATION_FROM_PAT_PERSPECTIVEPATIENT_TITLE',
  'id_name' => 'pat_perspectivepatient_pat_formationpat_perspectivepatient_ida',
);
$dictionary["pat_Formation"]["fields"]["pat_perspectivepatient_pat_formation_name"] = array (
  'name' => 'pat_perspectivepatient_pat_formation_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_PAT_PERSPECTIVEPATIENT_PAT_FORMATION_FROM_PAT_PERSPECTIVEPATIENT_TITLE',
  'save' => true,
  'id_name' => 'pat_perspectivepatient_pat_formationpat_perspectivepatient_ida',
  'link' => 'pat_perspectivepatient_pat_formation',
  'table' => 'pat_perspectivepatient',
  'module' => 'pat_PerspectivePatient',
  'rname' => 'name',
);
$dictionary["pat_Formation"]["fields"]["pat_perspectivepatient_pat_formationpat_perspectivepatient_ida"] = array (
  'name' => 'pat_perspectivepatient_pat_formationpat_perspectivepatient_ida',
  'type' => 'link',
  'relationship' => 'pat_perspectivepatient_pat_formation',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_PAT_PERSPECTIVEPATIENT_PAT_FORMATION_FROM_PAT_FORMATION_TITLE',
);
