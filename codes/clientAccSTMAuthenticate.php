<?php

use controller\FieldDataController\FieldDataController\FieldDataController;

include_once "../controller/FieldDataController.php";
$fields = new FieldDataController();

$savingsID = $_POST['savingsID'];
$from_date = date("Y-m-d", strtotime($_POST['from_date']));
$end_date = date("Y-m-d", strtotime($_POST['end_date']));

$query = "SELECT CURRENT_DATE AS date, NVL(SUM(deposit)-SUM(withdrawal),0) AS deposit, 0 AS withdrawal, NVL(SUM(deposit)-SUM(withdrawal),0) AS balance FROM ( SELECT NVL(SUM(deposit),0) AS deposit, 0 AS withdrawal, created_at_date AS date FROM saving_collections WHERE savings_prof_id ='${savingsID}' AND status='1' AND created_at_date NOT BETWEEN '${from_date}' AND '${end_date}' UNION ALL SELECT 0 AS deposit, NVL(SUM(withdrawal),0) AS withdrawal, created_at AS date FROM saving_withdrawals WHERE savings_prof_id ='${savingsID}' AND status='1' AND created_at NOT BETWEEN '${from_date}' AND '${end_date}' ) AS a

UNION ALL

SELECT date, NVL(SUM(deposit),0) AS deposit, NVL(SUM(withdrawal),0) AS withdrawal, NVL(SUM(deposit)-SUM(withdrawal),0) AS balance FROM (
SELECT deposit, 0 AS withdrawal, created_at_date AS date FROM saving_collections WHERE savings_prof_id ='${savingsID}' AND status='1' AND created_at_date BETWEEN '${from_date}' AND '${end_date}'
UNION ALL
SELECT 0 AS deposit, withdrawal, created_at AS date FROM saving_withdrawals WHERE savings_prof_id ='${savingsID}' AND status='1' AND created_at BETWEEN '${from_date}' AND '${end_date}'
) AS b GROUP BY date";

// $query1 = "SELECT CURRENT_DATE AS date, NVL(SUM(deposit)-SUM(withdrawal),0) AS deposit, 0 AS withdrawal, NVL(SUM(deposit)-SUM(withdrawal),0) AS balance FROM ( SELECT NVL(SUM(deposit),0) AS deposit, 0 AS withdrawal, created_at_date AS date FROM saving_collections WHERE savings_prof_id ='${savingsID}' AND status='1' AND created_at_date NOT BETWEEN '${from_date}' AND '${end_date}' UNION ALL SELECT 0 AS deposit, NVL(SUM(withdrawal),0) AS withdrawal, created_at AS date FROM saving_withdrawals WHERE savings_prof_id ='${savingsID}' AND status='1' AND created_at NOT BETWEEN '${from_date}' AND '${end_date}' ) AS a";


$result = $fields->clientAccLoad($query);
// $result1 = $fields->clientAccLoad($query);

if ($result != false && $result != null) {
    // print_r($result);
    // die();
    $i = 1;
    // $balance = "";
    // $combine = array_merge($result, $result1);
    $sum = [];
    foreach ($result as $keys => $value) {
        // $balances = 0;
        if ($keys > 0) {
            // $balances = $value['balance'] + $result[$keys - 1]['balance'];
            $balances += $result[$keys]['balance'];
        } else {
            $balances = $value['balance'];
        }

        $subarray = array();
        $subarray[] = $i++;
        $subarray[] = date("d/m/Y", strtotime($value['date']));
        $subarray[] = $value['deposit'];
        $subarray[] = $value['withdrawal'];
        $subarray[] = $balances;

        $output[] = $subarray;
    }
    $data = array(
        // "recordsFiltered" => $rowCount,
        "data" => $output,
    );
    echo json_encode($data);
    // print_r($output);
} else {
    echo json_encode(null);
}