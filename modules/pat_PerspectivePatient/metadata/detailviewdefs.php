<?php
$module_name = 'pat_PerspectivePatient';
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
          4 => 
          array (
            'customCode' => '<input type="button" class="button" onClick="printAsPDF(\'pdf\')" value="{$MOD.LBL_PRINT_AS_PDF}">',
          ),
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
          'panelDefault' => 'collapsed',
        ),
        'LBL_EDITVIEW_PANEL4' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
        'LBL_EDITVIEW_PANEL5' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
        'LBL_EDITVIEW_PANEL7' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
      ),
      'syncDetailEditViews' => true,
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
      'lbl_editview_panel4' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'experience_maladie_pa',
            'studio' => 'visible',
            'label' => 'LBL_EXPERIENCE_MALADIE_PA',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'experience_maladie_proche',
            'studio' => 'visible',
            'label' => 'LBL_EXPERIENCE_MALADIE_PROCHE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'rel_patient',
            'studio' => 'visible',
            'label' => 'LBL_REL_PATIENT',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'domaine_soin_pa',
            'label' => 'LBL_DOMAINE_SOIN_PA',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'prob_sant_pa',
            'label' => 'LBL_PROB_SANT_PA',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'etabl_sante_pa',
            'label' => 'LBL_ETABL_SANTE_PA',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'etabl_prem_ligne_pa',
            'label' => 'LBL_ETABL_PREM_LIGNE_PA',
          ),
        ),
      ),
      'lbl_editview_panel5' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'role_pp',
            'label' => 'LBL_ROLE_PP',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'descr_exp',
            'label' => 'LBL_DESCR_EXP',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'formation_pp',
            'studio' => 'visible',
            'label' => 'LBL_FORMATION_PP',
          ),
          1 => 
          array (
            'name' => 'formation_oui',
            'label' => 'LBL_FORMATION_OUI',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'formation_qui',
            'label' => 'LBL_FORMATION_QUI',
          ),
          1 => 
          array (
            'name' => 'formation_date',
            'label' => 'LBL_FORMATION_DATE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'exp_sante',
            'studio' => 'visible',
            'label' => 'LBL_EXP_SANTE',
          ),
          1 => 
          array (
            'name' => 'exp_sante_detail',
            'studio' => 'visible',
            'label' => 'LBL_EXP_SANTE_DETAIL',
          ),
        ),
      ),
      'lbl_editview_panel7' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'membre_assoc_comite',
            'studio' => 'visible',
            'label' => 'LBL_MEMBRE_ASSOC_COMITE',
          ),
          1 => 
          array (
            'name' => 'membre_assoc_comite_detail',
            'studio' => 'visible',
            'label' => 'LBL_MEMBRE_ASSOC_COMITE_DETAIL',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'conflit_interet',
            'studio' => 'visible',
            'label' => 'LBL_CONFLIT_INTERET',
          ),
          1 => 
          array (
            'name' => 'conflit_interet_detail',
            'studio' => 'visible',
            'label' => 'LBL_CONFLIT_INTERET_DETAIL',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'motivations_implication',
            'studio' => 'visible',
            'label' => 'LBL_MOTIVATIONS_IMPLICATION',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'disponibilites',
            'label' => 'LBL_DISPONIBILITES',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'preferences',
            'label' => 'LBL_PREFERENCES',
          ),
          1 => 
          array (
            'name' => 'preferences_autre',
            'studio' => 'visible',
            'label' => 'LBL_PREFERENCES_AUTRE',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'duree_experience',
            'label' => 'LBL_DUREE_EXPERIENCE',
          ),
        ),
      ),
    ),
  ),
);
;
?>
