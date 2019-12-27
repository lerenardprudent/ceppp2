<?php
 // created: 2019-12-27 16:52:31
$layout_defs["pat_PerspectivePatient"]["subpanel_setup"]['pat_perspectivepatient_pat_formation'] = array (
  'order' => 100,
  'module' => 'pat_Formation',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_PAT_PERSPECTIVEPATIENT_PAT_FORMATION_FROM_PAT_FORMATION_TITLE',
  'get_subpanel_data' => 'pat_perspectivepatient_pat_formation',
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
