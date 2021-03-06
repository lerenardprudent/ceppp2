<?php
// created: 2019-12-27 18:18:58
$dictionary["pat_perspectivepatient_pat_formation"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'pat_perspectivepatient_pat_formation' => 
    array (
      'lhs_module' => 'pat_PerspectivePatient',
      'lhs_table' => 'pat_perspectivepatient',
      'lhs_key' => 'id',
      'rhs_module' => 'pat_Formation',
      'rhs_table' => 'pat_formation',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'pat_perspectivepatient_pat_formation_c',
      'join_key_lhs' => 'pat_perspectivepatient_pat_formationpat_perspectivepatient_ida',
      'join_key_rhs' => 'pat_perspectivepatient_pat_formationpat_formation_idb',
    ),
  ),
  'table' => 'pat_perspectivepatient_pat_formation_c',
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
      'name' => 'pat_perspectivepatient_pat_formationpat_perspectivepatient_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'pat_perspectivepatient_pat_formationpat_formation_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'pat_perspectivepatient_pat_formationspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'pat_perspectivepatient_pat_formation_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'pat_perspectivepatient_pat_formationpat_perspectivepatient_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'pat_perspectivepatient_pat_formation_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'pat_perspectivepatient_pat_formationpat_formation_idb',
      ),
    ),
  ),
);