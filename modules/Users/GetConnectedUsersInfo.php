<?php

$db = DBManagerFactory::getInstance();
$sortCol = $_GET['sort_col'] ? $_GET['sort_col'] : "date_last_login_c";
$sortDir = $_GET['sort_dir'] ? $_GET['sort_dir'] : "DESC";
$query = "SELECT user_name, is_admin, p.code_ident IS NOT null AS is_patient, SUBSTRING(date_last_login_c, 1, 16) login, SUBSTRING(date_last_logout_c, 1, 16) logout "
        . "FROM users u1 "
        . "JOIN users_cstm u2 ON u1.id = u2.id_c "
        . "LEFT JOIN pat_patients p ON u1.user_name = p.code_ident AND p.deleted = 0 "
        . "WHERE date_last_login_c BETWEEN \"" . $_GET['connected_from'] . "\" AND \"" . $_GET['connected_to'] . "\" "
        . "ORDER BY $sortCol $sortDir";
$res = $db->query($query);
$rows = [];
while ( $row = $db->fetchByAssoc($res) ) {
  $rows[] = $row;
}
$ret = new \stdClass();
$ret->rows = $rows;
$ret->sql = $query;
$ret->sort_col = strtolower($sortCol);
$ret->sort_dir = strtolower($sortDir);
echo json_encode($ret);
