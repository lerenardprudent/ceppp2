<?php
// created: 2019-12-17 13:54:32
$dictionary["FP_Event_Locations"]["fields"]["pat_perspectivepatient_fp_event_locations"] = array (
  'name' => 'pat_perspectivepatient_fp_event_locations',
  'type' => 'link',
  'relationship' => 'pat_perspectivepatient_fp_event_locations',
  'source' => 'non-db',
  'module' => 'pat_PerspectivePatient',
  'bean_name' => 'pat_PerspectivePatient',
  'vname' => 'LBL_PAT_PERSPECTIVEPATIENT_FP_EVENT_LOCATIONS_FROM_PAT_PERSPECTIVEPATIENT_TITLE',
  'id_name' => 'pat_perspe9a6dpatient_ida',
);
$dictionary["FP_Event_Locations"]["fields"]["pat_perspectivepatient_fp_event_locations_name"] = array (
  'name' => 'pat_perspectivepatient_fp_event_locations_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_PAT_PERSPECTIVEPATIENT_FP_EVENT_LOCATIONS_FROM_PAT_PERSPECTIVEPATIENT_TITLE',
  'save' => true,
  'id_name' => 'pat_perspe9a6dpatient_ida',
  'link' => 'pat_perspectivepatient_fp_event_locations',
  'table' => 'pat_perspectivepatient',
  'module' => 'pat_PerspectivePatient',
  'rname' => 'name',
);
$dictionary["FP_Event_Locations"]["fields"]["pat_perspe9a6dpatient_ida"] = array (
  'name' => 'pat_perspe9a6dpatient_ida',
  'type' => 'link',
  'relationship' => 'pat_perspectivepatient_fp_event_locations',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_PAT_PERSPECTIVEPATIENT_FP_EVENT_LOCATIONS_FROM_FP_EVENT_LOCATIONS_TITLE',
);
