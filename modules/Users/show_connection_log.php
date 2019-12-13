<?php
if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}

require_once('XTemplate/xtpl.php');

require_once('modules/Administration/Administration.php');

global $mod_strings;
global $app_list_strings;
global $app_strings;
global $current_user;

if (!is_admin($current_user)) {
    sugar_die("Unauthorized access to administration.");
}

$xtpl=new XTemplate('modules/Users/show_connection_log.html');

$xtpl->assign("FOOBAR", "OH HAI!!!");

$xtpl->parse("main");

$xtpl->out("main");
