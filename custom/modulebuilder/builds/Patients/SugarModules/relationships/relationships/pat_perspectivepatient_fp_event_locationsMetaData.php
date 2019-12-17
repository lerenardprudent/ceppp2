<?php
// created: 2019-12-17 13:54:32
$dictionary["pat_perspectivepatient_fp_event_locations"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'pat_perspectivepatient_fp_event_locations' => 
    array (
      'lhs_module' => 'pat_PerspectivePatient',
      'lhs_table' => 'pat_perspectivepatient',
      'lhs_key' => 'id',
      'rhs_module' => 'FP_Event_Locations',
      'rhs_table' => 'fp_event_locations',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'pat_perspectivepatient_fp_event_locations_c',
      'join_key_lhs' => 'pat_perspe9a6dpatient_ida',
      'join_key_rhs' => 'pat_perspectivepatient_fp_event_locationsfp_event_locations_idb',
    ),
  ),
  'table' => 'pat_perspectivepatient_fp_event_locations_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'pat_perspe9a6dpatient_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'pat_perspectivepatient_fp_event_locationsfp_event_locations_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'pat_perspectivepatient_fp_event_locationsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'pat_perspectivepatient_fp_event_locations_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'pat_perspe9a6dpatient_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'pat_perspectivepatient_fp_event_locations_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'pat_perspectivepatient_fp_event_locationsfp_event_locations_idb',
      ),
    ),
  ),
);