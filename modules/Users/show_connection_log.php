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

$xtpl = new XTemplate('modules/Users/show_connection_log.html');
$en = $lang == "en";

$colon = $en ? ":" : ":";
$today = date("Y-m-d");

$xtpl->assign("from", $today. " 00:00");
$xtpl->assign("to", $today. " 23:00");
$xtpl->assign("CONNECTION_LOG_HEADING", $en ? "CONNECTION LOG" : "JOURNAL DES ACCÈS");
$xtpl->assign("FROM", ($en ? "From" : "De").$colon);
$xtpl->assign("TO", ($en ? "To" : "À").$colon);
$xtpl->assign("DISPLAY", $en ? "DISPLAY" : "AFFICHER");
$xtpl->assign("USERNAME", $en ? "User name" : "Nom d'utilisateur");
$xtpl->assign("USERTYPE", $en ? "User type" : "Type d'utilisateur");
$xtpl->assign("LOGIN_TIME", $en ? "Login time" : "Heure de connexion");
$xtpl->assign("LOGOUT_TIME", $en ? "Logout time" : "Heure de déconnexion");
$xtpl->assign("admin_lbl", $en ? "administrator" : "administrateur");
$xtpl->assign("patient_lbl", "patient");

$xtpl->parse("main");

$xtpl->out("main");
