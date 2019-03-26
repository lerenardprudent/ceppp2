<?php
// created: 2018-09-21 22:27:38
$dictionary["Account"]["fields"]["accounts_am_projecttemplates_1"] = array (
  'name' => 'accounts_am_projecttemplates_1',
  'type' => 'link',
  'relationship' => 'accounts_am_projecttemplates_1',
  'source' => 'non-db',
  'module' => 'AM_ProjectTemplates',
  'bean_name' => 'AM_ProjectTemplates',
  'vname' => 'LBL_ACCOUNTS_AM_PROJECTTEMPLATES_1_FROM_AM_PROJECTTEMPLATES_TITLE',
  'id_name' => 'accounts_am_projecttemplates_1am_projecttemplates_idb',
);
$dictionary["Account"]["fields"]["accounts_am_projecttemplates_1_name"] = array (
  'name' => 'accounts_am_projecttemplates_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_AM_PROJECTTEMPLATES_1_FROM_AM_PROJECTTEMPLATES_TITLE',
  'save' => true,
  'id_name' => 'accounts_am_projecttemplates_1am_projecttemplates_idb',
  'link' => 'accounts_am_projecttemplates_1',
  'table' => 'am_projecttemplates',
  'module' => 'AM_ProjectTemplates',
  'rname' => 'name',
);
$dictionary["Account"]["fields"]["accounts_am_projecttemplates_1am_projecttemplates_idb"] = array (
  'name' => 'accounts_am_projecttemplates_1am_projecttemplates_idb',
  'type' => 'link',
  'relationship' => 'accounts_am_projecttemplates_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_ACCOUNTS_AM_PROJECTTEMPLATES_1_FROM_AM_PROJECTTEMPLATES_TITLE',
);
