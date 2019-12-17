<?php
 // created: 2019-12-17 13:54:32
$layout_defs["pat_PerspectivePatient"]["subpanel_setup"]['pat_perspectivepatient_fp_event_locations'] = array (
  'order' => 100,
  'module' => 'FP_Event_Locations',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_PAT_PERSPECTIVEPATIENT_FP_EVENT_LOCATIONS_FROM_FP_EVENT_LOCATIONS_TITLE',
  'get_subpanel_data' => 'pat_perspectivepatient_fp_event_locations',
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
