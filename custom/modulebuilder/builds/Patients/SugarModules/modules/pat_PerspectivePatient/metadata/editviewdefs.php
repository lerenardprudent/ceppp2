<?php
$module_name = 'pat_PerspectivePatient';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
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
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL2' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL3' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
        ),
      ),
      'lbl_editview_panel2' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'adresse_perso',
            'label' => 'LBL_ADRESSE_PERSO',
          ),
          1 => 
          array (
            'name' => 'adresse_perso_city',
            'label' => 'LBL_ADRESSE_PERSO_CITY',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'adresse_perso_state',
            'label' => 'LBL_ADRESSE_PERSO_STATE',
          ),
          1 => 
          array (
            'name' => 'adresse_perso_postalcode',
            'label' => 'LBL_ADRESSE_PERSO_POSTALCODE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'adresse_perso_country',
            'label' => 'LBL_ADRESSE_PERSO_COUNTRY',
          ),
        ),
      ),
      'lbl_editview_panel3' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'experience_maladie',
            'studio' => 'visible',
            'label' => 'LBL_EXPERIENCE_MALADIE',
          ),
          1 => '',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'domaine_soin',
            'label' => 'LBL_DOMAINE_SOIN',
          ),
          1 => '',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'prob_sant',
            'studio' => 'visible',
            'label' => 'LBL_PROB_SANT',
          ),
          1 => 
          array (
            'name' => 'maladie_rare_details',
            'studio' => 'visible',
            'label' => 'LBL_MALADIE_RARE_DETAILS',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'med_1',
            'studio' => 'visible',
            'label' => 'LBL_MED_1',
          ),
          1 => '',
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'etabl_sante',
            'label' => 'LBL_ETABL_SANTE',
          ),
          1 => '',
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'etabl_prem_ligne',
            'label' => 'LBL_ETABL_PREM_LIGNE',
          ),
          1 => '',
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'exp_decision',
            'studio' => 'visible',
            'label' => 'LBL_EXP_DECISION',
          ),
          1 => 
          array (
            'name' => 'preneur_decisions',
            'studio' => 'visible',
            'label' => 'LBL_PRENEUR_DECISIONS',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'professionnels_sante',
            'label' => 'LBL_PROFESSIONNELS_SANTE',
          ),
          1 => '',
        ),
      ),
    ),
  ),
);
;
?>
