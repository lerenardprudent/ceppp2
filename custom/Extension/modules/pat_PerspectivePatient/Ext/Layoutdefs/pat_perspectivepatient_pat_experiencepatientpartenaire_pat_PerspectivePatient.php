<?php
 // created: 2019-12-21 20:40:28
$layout_defs["pat_PerspectivePatient"]["subpanel_setup"]['pat_perspectivepatient_pat_experiencepatientpartenaire'] = array (
  'order' => 100,
  'module' => 'pat_ExperiencePatientPartenaire',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_PAT_PERSPECTIVEPATIENT_PAT_EXPERIENCEPATIENTPARTENAIRE_FROM_PAT_EXPERIENCEPATIENTPARTENAIRE_TITLE',
  'get_subpanel_data' => 'pat_perspectivepatient_pat_experiencepatientpartenaire',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
