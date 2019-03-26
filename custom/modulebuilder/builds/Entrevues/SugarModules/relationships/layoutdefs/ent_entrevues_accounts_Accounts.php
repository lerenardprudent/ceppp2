<?php
 // created: 2018-10-12 21:15:08
$layout_defs["Accounts"]["subpanel_setup"]['ent_entrevues_accounts'] = array (
  'order' => 100,
  'module' => 'ent_Entrevues',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_ENT_ENTREVUES_ACCOUNTS_FROM_ENT_ENTREVUES_TITLE',
  'get_subpanel_data' => 'ent_entrevues_accounts',
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
