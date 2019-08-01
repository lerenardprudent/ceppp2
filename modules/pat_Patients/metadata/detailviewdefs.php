<?php
$module_name = 'pat_Patients';
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
        'LBL_EDITVIEW_PANEL13' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL12' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_CONTACT_INFORMATION' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
        'LBL_EDITVIEW_PANEL1' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
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
        'LBL_EDITVIEW_PANEL6' => 
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
        'LBL_EDITVIEW_PANEL9' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
        'LBL_EDITVIEW_PANEL10' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
        'LBL_EDITVIEW_PANEL2' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
        'LBL_EDITVIEW_PANEL11' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
        'LBL_EDITVIEW_PANEL14' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'lbl_editview_panel13' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'code_ident',
            'label' => 'LBL_CODE_IDENT',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'genre',
            'studio' => 'visible',
            'label' => 'LBL_GENRE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'etat',
            'studio' => 'visible',
            'label' => 'LBL_ETAT',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO_NAME',
          ),
          1 => '',
        ),
      ),
      'lbl_editview_panel12' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'consentement_dcpp_recrut',
            'studio' => 'visible',
            'label' => 'LBL_CONSENTEMENT_DCPP_RECRUT',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'consentement_recherche',
            'studio' => 'visible',
            'label' => 'LBL_CONSENTEMENT_RECHERCHE',
          ),
        ),
      ),
      'lbl_contact_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'prenom',
            'label' => 'LBL_PRENOM',
          ),
          1 => 
          array (
            'name' => 'nom',
            'label' => 'LBL_NOM',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'salutation',
            'comment' => 'Contact salutation (e.g., Mr, Ms)',
            'label' => 'LBL_SALUTATION',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'email_perso',
            'label' => 'LBL_EMAIL_PERSO',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'tel_dom_perso',
            'label' => 'LBL_TEL_DOM_PERSO',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'tel_travail_perso',
            'label' => 'LBL_TEL_TRAVAIL_PERSO',
          ),
          1 => 
          array (
            'name' => 'tel_mobile_perso',
            'label' => 'LBL_TEL_MOBILE_PERSO',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'nas_perso_',
            'label' => 'LBL_NAS_PERSO_',
          ),
        ),
      ),
      'lbl_editview_panel1' => 
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
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'domaine_soin',
            'label' => 'LBL_DOMAINE_SOIN',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'prob_sant',
            'studio' => 'visible',
            'label' => 'LBL_PROB_SANT',
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
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'etabl_sante',
            'label' => 'LBL_ETABL_SANTE',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'etabl_prem_ligne',
            'label' => 'LBL_ETABL_PREM_LIGNE',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'exp_decision',
            'studio' => 'visible',
            'label' => 'LBL_EXP_DECISION',
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
          1 => '',
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
            'studio' => 'visible',
            'label' => 'LBL_PROB_SANT_PA',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'etabl_sante_pa_',
            'label' => 'LBL_ETABL_SANTE_PA_',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'etabl_prem_ligne_pa_',
            'label' => 'LBL_ETABL_PREM_LIGNE_PA_',
          ),
        ),
      ),
      'lbl_editview_panel6' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'role_pp',
            'studio' => 'visible',
            'label' => 'LBL_ROLE_PP',
          ),
          1 => '',
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
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'exp_sante',
            'studio' => 'visible',
            'label' => 'LBL_EXP_SANTE',
          ),
        ),
      ),
      'lbl_editview_panel5' => 
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
            'label' => 'LBL_CONFLIT_INTERET_DETAIL',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'motivations_implication',
            'label' => 'LBL_MOTIVATIONS_IMPLICATION',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'disponibilites',
            'studio' => 'visible',
            'label' => 'LBL_DISPONIBILITES',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'preferences',
            'studio' => 'visible',
            'label' => 'LBL_PREFERENCES',
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
      'lbl_editview_panel7' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'competences_pp',
            'studio' => 'visible',
            'label' => 'LBL_COMPETENCES_PP',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'competences_ppc',
            'studio' => 'visible',
            'label' => 'LBL_COMPETENCES_PPC',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'competences_pr',
            'studio' => 'visible',
            'label' => 'LBL_COMPETENCES_PR',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'habiletes_pp',
            'studio' => 'visible',
            'label' => 'LBL_HABILETES_PP',
          ),
        ),
      ),
      'lbl_editview_panel9' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'patient_ajout',
            'studio' => 'visible',
            'label' => 'LBL_PATIENT_AJOUT',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'comm_recruteur',
            'studio' => 'visible',
            'label' => 'LBL_COMM_RECRUTEUR',
          ),
        ),
      ),
      'lbl_editview_panel10' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'langue_parlee',
            'studio' => 'visible',
            'label' => 'LBL_LANGUE_PARLEE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'langue_corresp',
            'studio' => 'visible',
            'label' => 'LBL_LANGUE_CORRESP',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'niveau_mob',
            'studio' => 'visible',
            'label' => 'LBL_NIVEAU_MOB',
          ),
          1 => 
          array (
            'name' => 'assistance_mob',
            'label' => 'LBL_ASSISTANCE_MOB',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'niveau_aud',
            'studio' => 'visible',
            'label' => 'LBL_NIVEAU_AUD',
          ),
          1 => 
          array (
            'name' => 'assistance_audition',
            'studio' => 'visible',
            'label' => 'LBL_ASSISTANCE_AUDITION',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'niveau_vue',
            'studio' => 'visible',
            'label' => 'LBL_NIVEAU_VUE',
          ),
          1 => 
          array (
            'name' => 'assistance_vision',
            'studio' => 'visible',
            'label' => 'LBL_ASSISTANCE_VISION',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'niveau_autre',
            'label' => 'LBL_NIVEAU_AUTRE',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'association_etablissement_recr',
            'studio' => 'visible',
            'label' => 'LBL_ASSOCIATION_ETABLISSEMENT_RECR',
          ),
        ),
      ),
      'lbl_editview_panel2' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'naissance_perso',
            'label' => 'LBL_NAISSANCE_PERSO',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'emploi_perso',
            'studio' => 'visible',
            'label' => 'LBL_EMPLOI_PERSO',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'education_perso',
            'studio' => 'visible',
            'label' => 'LBL_EDUCATION_PERSO',
          ),
          1 => 
          array (
            'name' => 'education_perso_autre',
            'label' => 'LBL_EDUCATION_PERSO_AUTRE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'groupe_designe',
            'studio' => 'visible',
            'label' => 'LBL_GROUPE_DESIGNE',
          ),
        ),
      ),
      'lbl_editview_panel11' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'date_entrevue',
            'label' => 'LBL_DATE_ENTREVUE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'recruteur',
            'label' => 'LBL_RECRUTEUR',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'personne_reference_recrut',
            'label' => 'LBL_PERSONNE_REFERENCE_RECRUT',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'comment_refere',
            'label' => 'LBL_COMMENT_REFERE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'org_ref_recrut',
            'label' => 'LBL_ORG_REF_RECRUT',
          ),
        ),
      ),
      'lbl_editview_panel14' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'pat_patients_pat_perspectivepatient_name',
            'label' => 'LBL_PAT_PATIENTS_PAT_PERSPECTIVEPATIENT_FROM_PAT_PERSPECTIVEPATIENT_TITLE',
          ),
          1 => '',
        ),
      ),
    ),
  ),
);
;
?>
