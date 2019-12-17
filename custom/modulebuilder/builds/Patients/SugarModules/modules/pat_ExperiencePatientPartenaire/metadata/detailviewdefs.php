<?php
$module_name = 'pat_ExperiencePatientPartenaire';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'LBL_EDITVIEW_PANEL3' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'lbl_editview_panel3' => 
      array (
        0 => 
        array (
          0 => '',
          1 => '',
        ),
        1 => 
        array (
          0 => 'name',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'role_experience',
            'label' => 'LBL_ROLE_EXPERIENCE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'description_experience',
            'studio' => 'visible',
            'label' => 'LBL_DESCRIPTION_EXPERIENCE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'formation_suivie',
            'studio' => 'visible',
            'label' => 'LBL_FORMATION_SUIVIE',
          ),
          1 => 
          array (
            'name' => 'nom_formation_suivie',
            'label' => 'LBL_NOM_FORMATION_SUIVIE',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'formation_qui',
            'label' => 'LBL_FORMATION_QUI',
          ),
          1 => 
          array (
            'name' => 'date_formation',
            'label' => 'LBL_DATE_FORMATION',
          ),
        ),
      ),
    ),
  ),
);
;
?>
