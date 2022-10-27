<?php

use controller\CollectionController\CollectionController\CollectionController;

include_once "../controller/CollectionController.php";
// session_start();

$collection = new CollectionController();

$from_date = date("Y-m-d", strtotime($_POST['from_date']));
$end_date = date("Y-m-d", strtotime($_POST['end_date']));
$field = $_POST['field'];
$center = $_POST['center'];
$period = $_POST['period'];
$officer = $_POST['officer'];

if ($field == null && $center == null && $officer == null && $period == null) {

    $query = "SELECT name, book, field_name, center_name, period_name, officer, NVL(deposit,0) as deposit, NVL(withdrawal,0) as withdrawal, date FROM (SELECT c.name, s.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, s.deposit as deposit, 0 as withdrawal, s.created_at_date AS date FROM saving_collections AS s INNER JOIN client_registers AS c ON c.client_id = s.client_id INNER JOIN feilds AS f ON f.feild_id = s.feild_id INNER JOIN centers AS cn ON cn.center_id = s.center_id INNER JOIN periods AS p ON p.period_id = s.period_id INNER JOIN users AS u ON u.id = s.officers_id WHERE s.created_at_date BETWEEN '${from_date}' AND '${end_date}' UNION ALL SELECT c.name, sw.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, 0 as deposit, sw.withdrawal as withdrawal, sw.created_at AS date FROM saving_withdrawals AS sw INNER JOIN client_registers AS c ON c.client_id = sw.client_id INNER JOIN feilds AS f ON f.feild_id = sw.feild_id INNER JOIN centers AS cn ON cn.center_id = sw.center_id INNER JOIN periods AS p ON p.period_id = sw.period_id INNER JOIN users AS u ON u.id = sw.officers_id WHERE sw.created_at BETWEEN '${from_date}' AND '${end_date}') AS a ORDER BY date";
} elseif ($field != null && $center == null && $officer == null && $period == null) {

    $query = "SELECT name, book, field_name, center_name, period_name, officer, NVL(deposit,0) as deposit, NVL(withdrawal,0) as withdrawal, date FROM (SELECT c.name, s.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, s.deposit as deposit, 0 as withdrawal, s.created_at_date AS date FROM saving_collections AS s INNER JOIN client_registers AS c ON c.client_id = s.client_id INNER JOIN feilds AS f ON f.feild_id = s.feild_id INNER JOIN centers AS cn ON cn.center_id = s.center_id INNER JOIN periods AS p ON p.period_id = s.period_id INNER JOIN users AS u ON u.id = s.officers_id WHERE s.feild_id = ${field} AND s.created_at_date BETWEEN '${from_date}' AND '${end_date}' UNION ALL SELECT c.name, sw.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, 0 as deposit, sw.withdrawal as withdrawal, sw.created_at AS date FROM saving_withdrawals AS sw INNER JOIN client_registers AS c ON c.client_id = sw.client_id INNER JOIN feilds AS f ON f.feild_id = sw.feild_id INNER JOIN centers AS cn ON cn.center_id = sw.center_id INNER JOIN periods AS p ON p.period_id = sw.period_id INNER JOIN users AS u ON u.id = sw.officers_id WHERE sw.feild_id = ${field} AND sw.created_at BETWEEN '${from_date}' AND '${end_date}') AS a ORDER BY date";
} elseif ($field != null && $center != null && $officer == null && $period == null) {

    $query = "SELECT name, book, field_name, center_name, period_name, officer, NVL(deposit,0) as deposit, NVL(withdrawal,0) as withdrawal, date FROM (SELECT c.name, s.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, s.deposit as deposit, 0 as withdrawal, s.created_at_date AS date FROM saving_collections AS s INNER JOIN client_registers AS c ON c.client_id = s.client_id INNER JOIN feilds AS f ON f.feild_id = s.feild_id INNER JOIN centers AS cn ON cn.center_id = s.center_id INNER JOIN periods AS p ON p.period_id = s.period_id INNER JOIN users AS u ON u.id = s.officers_id WHERE s.feild_id = ${field} AND s.center_id= ${center} AND s.created_at_date BETWEEN '${from_date}' AND '${end_date}' UNION ALL SELECT c.name, sw.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, 0 as deposit, sw.withdrawal as withdrawal, sw.created_at AS date FROM saving_withdrawals AS sw INNER JOIN client_registers AS c ON c.client_id = sw.client_id INNER JOIN feilds AS f ON f.feild_id = sw.feild_id INNER JOIN centers AS cn ON cn.center_id = sw.center_id INNER JOIN periods AS p ON p.period_id = sw.period_id INNER JOIN users AS u ON u.id = sw.officers_id WHERE sw.feild_id = ${field} AND sw.center_id= ${center} AND sw.created_at BETWEEN '${from_date}' AND '${end_date}') AS a ORDER BY date";
} elseif ($field != null && $center != null && $officer != null && $period == null) {

    $query = "SELECT name, book, field_name, center_name, period_name, officer, NVL(deposit,0) as deposit, NVL(withdrawal,0) as withdrawal, date FROM (SELECT c.name, s.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, s.deposit as deposit, 0 as withdrawal, s.created_at_date AS date FROM saving_collections AS s INNER JOIN client_registers AS c ON c.client_id = s.client_id INNER JOIN feilds AS f ON f.feild_id = s.feild_id INNER JOIN centers AS cn ON cn.center_id = s.center_id INNER JOIN periods AS p ON p.period_id = s.period_id INNER JOIN users AS u ON u.id = s.officers_id WHERE s.feild_id = ${field} AND s.center_id= ${center} AND s.officers_id = ${officer} AND s.created_at_date BETWEEN '${from_date}' AND '${end_date}' UNION ALL SELECT c.name, sw.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, 0 as deposit, sw.withdrawal as withdrawal, sw.created_at AS date FROM saving_withdrawals AS sw INNER JOIN client_registers AS c ON c.client_id = sw.client_id INNER JOIN feilds AS f ON f.feild_id = sw.feild_id INNER JOIN centers AS cn ON cn.center_id = sw.center_id INNER JOIN periods AS p ON p.period_id = sw.period_id INNER JOIN users AS u ON u.id = sw.officers_id WHERE sw.feild_id = ${field} AND sw.center_id= ${center} AND sw.officers_id = ${officer} AND sw.created_at BETWEEN '${from_date}' AND '${end_date}') AS a ORDER BY date";
} elseif ($field != null && $center != null && $officer != null && $period != null) {

    $query = "SELECT name, book, field_name, center_name, period_name, officer, NVL(deposit,0) as deposit, NVL(withdrawal,0) as withdrawal, date FROM (SELECT c.name, s.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, s.deposit as deposit, 0 as withdrawal, s.created_at_date AS date FROM saving_collections AS s INNER JOIN client_registers AS c ON c.client_id = s.client_id INNER JOIN feilds AS f ON f.feild_id = s.feild_id INNER JOIN centers AS cn ON cn.center_id = s.center_id INNER JOIN periods AS p ON p.period_id = s.period_id INNER JOIN users AS u ON u.id = s.officers_id WHERE s.feild_id = ${field} AND s.center_id= ${center} AND s.officers_id = ${officer} AND s.period_id = '${period}' AND s.created_at_date BETWEEN '${from_date}' AND '${end_date}' UNION ALL SELECT c.name, sw.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, 0 as deposit, sw.withdrawal as withdrawal, sw.created_at AS date FROM saving_withdrawals AS sw INNER JOIN client_registers AS c ON c.client_id = sw.client_id INNER JOIN feilds AS f ON f.feild_id = sw.feild_id INNER JOIN centers AS cn ON cn.center_id = sw.center_id INNER JOIN periods AS p ON p.period_id = sw.period_id INNER JOIN users AS u ON u.id = sw.officers_id WHERE sw.feild_id = ${field} AND sw.center_id= ${center} AND sw.officers_id = ${officer} AND sw.period_id = '${period}' AND sw.created_at BETWEEN '${from_date}' AND '${end_date}') AS a ORDER BY date";
} elseif ($field == null && $center == null && $officer == null && $period != null) {

    $query = "SELECT name, book, field_name, center_name, period_name, officer, NVL(deposit,0) as deposit, NVL(withdrawal,0) as withdrawal, date FROM (SELECT c.name, s.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, s.deposit as deposit, 0 as withdrawal, s.created_at_date AS date FROM saving_collections AS s INNER JOIN client_registers AS c ON c.client_id = s.client_id INNER JOIN feilds AS f ON f.feild_id = s.feild_id INNER JOIN centers AS cn ON cn.center_id = s.center_id INNER JOIN periods AS p ON p.period_id = s.period_id INNER JOIN users AS u ON u.id = s.officers_id WHERE s.period_id = '${period}' AND s.created_at_date BETWEEN '${from_date}' AND '${end_date}' UNION ALL SELECT c.name, sw.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, 0 as deposit, sw.withdrawal as withdrawal, sw.created_at AS date FROM saving_withdrawals AS sw INNER JOIN client_registers AS c ON c.client_id = sw.client_id INNER JOIN feilds AS f ON f.feild_id = sw.feild_id INNER JOIN centers AS cn ON cn.center_id = sw.center_id INNER JOIN periods AS p ON p.period_id = sw.period_id INNER JOIN users AS u ON u.id = sw.officers_id WHERE sw.period_id = '${period}' AND sw.created_at BETWEEN '${from_date}' AND '${end_date}') AS a ORDER BY date";
} elseif ($field == null && $center == null && $officer != null && $period != null) {

    $query = "SELECT name, book, field_name, center_name, period_name, officer, NVL(deposit,0) as deposit, NVL(withdrawal,0) as withdrawal, date FROM (SELECT c.name, s.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, s.deposit as deposit, 0 as withdrawal, s.created_at_date AS date FROM saving_collections AS s INNER JOIN client_registers AS c ON c.client_id = s.client_id INNER JOIN feilds AS f ON f.feild_id = s.feild_id INNER JOIN centers AS cn ON cn.center_id = s.center_id INNER JOIN periods AS p ON p.period_id = s.period_id INNER JOIN users AS u ON u.id = s.officers_id WHERE s.officers_id = ${officer} AND s.period_id = '${period}' AND s.created_at_date BETWEEN '${from_date}' AND '${end_date}' UNION ALL SELECT c.name, sw.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, 0 as deposit, sw.withdrawal as withdrawal, sw.created_at AS date FROM saving_withdrawals AS sw INNER JOIN client_registers AS c ON c.client_id = sw.client_id INNER JOIN feilds AS f ON f.feild_id = sw.feild_id INNER JOIN centers AS cn ON cn.center_id = sw.center_id INNER JOIN periods AS p ON p.period_id = sw.period_id INNER JOIN users AS u ON u.id = sw.officers_id WHERE sw.officers_id = ${officer} AND sw.period_id = '${period}' AND sw.created_at BETWEEN '${from_date}' AND '${end_date}') AS a ORDER BY date";
} elseif ($field != null && $center == null && $officer != null && $period != null) {

    $query = "SELECT name, book, field_name, center_name, period_name, officer, NVL(deposit,0) as deposit, NVL(withdrawal,0) as withdrawal, date FROM (SELECT c.name, s.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, s.deposit as deposit, 0 as withdrawal, s.created_at_date AS date FROM saving_collections AS s INNER JOIN client_registers AS c ON c.client_id = s.client_id INNER JOIN feilds AS f ON f.feild_id = s.feild_id INNER JOIN centers AS cn ON cn.center_id = s.center_id INNER JOIN periods AS p ON p.period_id = s.period_id INNER JOIN users AS u ON u.id = s.officers_id WHERE s.feild_id = ${field} AND s.officers_id = ${officer} AND s.period_id = '${period}' AND s.created_at_date BETWEEN '${from_date}' AND '${end_date}' UNION ALL SELECT c.name, sw.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, 0 as deposit, sw.withdrawal as withdrawal, sw.created_at AS date FROM saving_withdrawals AS sw INNER JOIN client_registers AS c ON c.client_id = sw.client_id INNER JOIN feilds AS f ON f.feild_id = sw.feild_id INNER JOIN centers AS cn ON cn.center_id = sw.center_id INNER JOIN periods AS p ON p.period_id = sw.period_id INNER JOIN users AS u ON u.id = sw.officers_id WHERE sw.feild_id = ${field} AND sw.officers_id = ${officer} AND sw.period_id = '${period}' AND sw.created_at BETWEEN '${from_date}' AND '${end_date}') AS a ORDER BY date";
} elseif ($field != null && $center != null && $officer == null && $period != null) {

    $query = "SELECT name, book, field_name, center_name, period_name, officer, NVL(deposit,0) as deposit, NVL(withdrawal,0) as withdrawal, date FROM (SELECT c.name, s.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, s.deposit as deposit, 0 as withdrawal, s.created_at_date AS date FROM saving_collections AS s INNER JOIN client_registers AS c ON c.client_id = s.client_id INNER JOIN feilds AS f ON f.feild_id = s.feild_id INNER JOIN centers AS cn ON cn.center_id = s.center_id INNER JOIN periods AS p ON p.period_id = s.period_id INNER JOIN users AS u ON u.id = s.officers_id WHERE s.feild_id = ${field} AND s.center_id= ${center} AND s.period_id = '${period}' AND s.created_at_date BETWEEN '${from_date}' AND '${end_date}' UNION ALL SELECT c.name, sw.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, 0 as deposit, sw.withdrawal as withdrawal, sw.created_at AS date FROM saving_withdrawals AS sw INNER JOIN client_registers AS c ON c.client_id = sw.client_id INNER JOIN feilds AS f ON f.feild_id = sw.feild_id INNER JOIN centers AS cn ON cn.center_id = sw.center_id INNER JOIN periods AS p ON p.period_id = sw.period_id INNER JOIN users AS u ON u.id = sw.officers_id WHERE sw.feild_id = ${field} AND sw.center_id= ${center} AND sw.period_id = '${period}' AND sw.created_at BETWEEN '${from_date}' AND '${end_date}') AS a ORDER BY date";
} elseif ($field != null && $center == null && $officer == null && $period != null) {

    $query = "SELECT name, book, field_name, center_name, period_name, officer, NVL(deposit,0) as deposit, NVL(withdrawal,0) as withdrawal, date FROM (SELECT c.name, s.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, s.deposit as deposit, 0 as withdrawal, s.created_at_date AS date FROM saving_collections AS s INNER JOIN client_registers AS c ON c.client_id = s.client_id INNER JOIN feilds AS f ON f.feild_id = s.feild_id INNER JOIN centers AS cn ON cn.center_id = s.center_id INNER JOIN periods AS p ON p.period_id = s.period_id INNER JOIN users AS u ON u.id = s.officers_id WHERE s.feild_id = ${field} AND s.period_id = '${period}' AND s.created_at_date BETWEEN '${from_date}' AND '${end_date}' UNION ALL SELECT c.name, sw.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, 0 as deposit, sw.withdrawal as withdrawal, sw.created_at AS date FROM saving_withdrawals AS sw INNER JOIN client_registers AS c ON c.client_id = sw.client_id INNER JOIN feilds AS f ON f.feild_id = sw.feild_id INNER JOIN centers AS cn ON cn.center_id = sw.center_id INNER JOIN periods AS p ON p.period_id = sw.period_id INNER JOIN users AS u ON u.id = sw.officers_id WHERE sw.feild_id = ${field} AND sw.period_id = '${period}' AND sw.created_at BETWEEN '${from_date}' AND '${end_date}') AS a ORDER BY date";
} elseif ($field == null && $center == null && $officer != null && $period == null) {

    $query = "SELECT name, book, field_name, center_name, period_name, officer, NVL(deposit,0) as deposit, NVL(withdrawal,0) as withdrawal, date FROM (SELECT c.name, s.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, s.deposit as deposit, 0 as withdrawal, s.created_at_date AS date FROM saving_collections AS s INNER JOIN client_registers AS c ON c.client_id = s.client_id INNER JOIN feilds AS f ON f.feild_id = s.feild_id INNER JOIN centers AS cn ON cn.center_id = s.center_id INNER JOIN periods AS p ON p.period_id = s.period_id INNER JOIN users AS u ON u.id = s.officers_id WHERE s.officers_id = ${officer} AND s.created_at_date BETWEEN '${from_date}' AND '${end_date}' UNION ALL SELECT c.name, sw.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, 0 as deposit, sw.withdrawal as withdrawal, sw.created_at AS date FROM saving_withdrawals AS sw INNER JOIN client_registers AS c ON c.client_id = sw.client_id INNER JOIN feilds AS f ON f.feild_id = sw.feild_id INNER JOIN centers AS cn ON cn.center_id = sw.center_id INNER JOIN periods AS p ON p.period_id = sw.period_id INNER JOIN users AS u ON u.id = sw.officers_id WHERE sw.officers_id = ${officer} AND sw.created_at BETWEEN '${from_date}' AND '${end_date}') AS a ORDER BY date";
} elseif ($field != null && $center == null && $officer != null && $period == null) {

    $query = "SELECT name, book, field_name, center_name, period_name, officer, NVL(deposit,0) as deposit, NVL(withdrawal,0) as withdrawal, date FROM (SELECT c.name, s.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, s.deposit as deposit, 0 as withdrawal, s.created_at_date AS date FROM saving_collections AS s INNER JOIN client_registers AS c ON c.client_id = s.client_id INNER JOIN feilds AS f ON f.feild_id = s.feild_id INNER JOIN centers AS cn ON cn.center_id = s.center_id INNER JOIN periods AS p ON p.period_id = s.period_id INNER JOIN users AS u ON u.id = s.officers_id WHERE s.feild_id = ${field} AND s.officers_id = ${officer} AND s.created_at_date BETWEEN '${from_date}' AND '${end_date}' UNION ALL SELECT c.name, sw.book, f.field_name, cn.center_name, p.period_name, u.name AS officer, 0 as deposit, sw.withdrawal as withdrawal, sw.created_at AS date FROM saving_withdrawals AS sw INNER JOIN client_registers AS c ON c.client_id = sw.client_id INNER JOIN feilds AS f ON f.feild_id = sw.feild_id INNER JOIN centers AS cn ON cn.center_id = sw.center_id INNER JOIN periods AS p ON p.period_id = sw.period_id INNER JOIN users AS u ON u.id = sw.officers_id WHERE sw.feild_id = ${field} AND sw.officers_id = ${officer} AND sw.created_at BETWEEN '${from_date}' AND '${end_date}') AS a ORDER BY date";
}
// echo json_encode($query);
// die();
$result = $collection->incomeExpanceRecordload($query);
if ($result != false && $result != null) {
    // print_r($result);
    // die();
    $i = 1;
    foreach ($result as $keys => $value) {
        $subarray = array();
        $subarray[] = $i++;
        $subarray[] = date("d-m-Y", strtotime($value['date']));
        $subarray[] = $value['name'];
        $subarray[] = $value['book'];
        $subarray[] = $value['field_name'];
        $subarray[] = $value['center_name'];
        $subarray[] = $value['period_name'];
        $subarray[] = $value['deposit'];
        $subarray[] = $value['withdrawal'];
        $subarray[] = $value['officer'];

        $output[] = $subarray;
    }
    $data = array(
        // "recordsFiltered" => $rowCount,
        "data" => $output,
    );
    echo json_encode($data);
} else {
    echo json_encode(null);
}