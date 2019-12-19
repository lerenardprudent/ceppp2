<?php
// created: 2019-12-19 13:08:50
$dictionary["pat_perspectivepatient_pat_experiencepatientpartenaire"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'pat_perspectivepatient_pat_experiencepatientpartenaire' => 
    array (
      'lhs_module' => 'pat_PerspectivePatient',
      'lhs_table' => 'pat_perspectivepatient',
      'lhs_key' => 'id',
      'rhs_module' => 'pat_ExperiencePatientPartenaire',
      'rhs_table' => 'pat_experiencepatientpartenaire',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'pat_perspectivepatient_pat_experiencepatientpartenaire_c',
      'join_key_lhs' => 'pat_perspe53b3patient_ida',
      'join_key_rhs' => 'pat_perspe7214tenaire_idb',
    ),
  ),
  'table' => 'pat_perspectivepatient_pat_experiencepatientpartenaire_c',
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
      'name' => 'pat_perspe53b3patient_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'pat_perspe7214tenaire_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'pat_perspectivepatient_pat_experiencepatientpartenairespk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'pat_perspectivepatient_pat_experiencepatientpartenaire_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'pat_perspe53b3patient_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'pat_perspectivepatient_pat_experiencepatientpartenaire_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'pat_perspe7214tenaire_idb',
      ),
    ),
  ),
);