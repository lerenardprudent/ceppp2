<?php
// created: 2018-09-21 22:27:38
$dictionary["AM_ProjectTemplates"]["fields"]["accounts_am_projecttemplates_1"] = array (
  'name' => 'accounts_am_projecttemplates_1',
  'type' => 'link',
  'relationship' => 'accounts_am_projecttemplates_1',
  'source' => 'non-db',
  'module' => 'Accounts',
  'bean_name' => 'Account',
  'vname' => 'LBL_ACCOUNTS_AM_PROJECTTEMPLATES_1_FROM_ACCOUNTS_TITLE',
  'id_name' => 'accounts_am_projecttemplates_1accounts_ida',
);
$dictionary["AM_ProjectTemplates"]["fields"]["accounts_am_projecttemplates_1_name"] = array (
  'name' => 'accounts_am_projecttemplates_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_AM_PROJECTTEMPLATES_1_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'accounts_am_projecttemplates_1accounts_ida',
  'link' => 'accounts_am_projecttemplates_1',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["AM_ProjectTemplates"]["fields"]["accounts_am_projecttemplates_1accounts_ida"] = array (
  'name' => 'accounts_am_projecttemplates_1accounts_ida',
  'type' => 'link',
  'relationship' => 'accounts_am_projecttemplates_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_ACCOUNTS_AM_PROJECTTEMPLATES_1_FROM_ACCOUNTS_TITLE',
);
