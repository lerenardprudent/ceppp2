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
global $current_language;

$lang = substr($current_language, 0, 2);

if (!is_admin($current_user)) {
    sugar_die("Unauthorized access to administration.");
}

$xtpl=new XTemplate('modules/Users/show_connection_log.html');

$xtpl->assign("FOOBAR", "OH HAI!!!");
$dtJsContents = file_get_contents('modules/Users/jquery.datetimepicker.full.js');
$dtCssContents = file_get_contents('modules/Users/jquery.datetimepicker.full.css');
$colon = $lang == "en" ? ":" : ":";
$today = date("Y-m-d");
$xtpl->assign("DTJS", $dtJsContents);
$xtpl->assign("DTCSS", $dtCssContents);
$xtpl->assign("today", $today);
$xtpl->assign("CONNECTION_LOG_HEADING", "CONNECTION LOG");
$xtpl->assign("FROM", "From".$colon);
$xtpl->assign("TO", "To".$colon);
$xtpl->assign("DISPLAY", "Display");
$xtpl->assign("USERNAME", "User name");
$xtpl->assign("USERTYPE", "User type");
$xtpl->assign("LOGIN_TIME", "Login time");
$xtpl->assign("LOGOUT_TIME", "Logout time");

$xtpl->parse("main");

$xtpl->out("main");
