<?php

use controller\FieldDataController\FieldDataController\FieldDataController;

include_once "../controller/FieldDataController.php";
$fields = new FieldDataController();

$savingsID = $_POST['savingsID'];
$from_date = date("Y-m-d", strtotime($_POST['from_date']));
$end_date = date("Y-m-d", strtotime($_POST['end_date']));

$query = "SELECT s.deposit, s.created_at_date AS date, s.created_at_time AS time, s.expression, u.name FROM saving_collections AS s INNER JOIN users AS u ON s.officers_id = u.id WHERE s.savings_prof_id ='${savingsID}' AND s.status='1' AND s.created_at_date BETWEEN '${from_date}' AND '${end_date}'";

$result = $fields->clientAccLoad($query);

if ($result != false && $result != null) {

    $i = 1;
    foreach ($result as $keys => $value) {

        $subarray = array();
        $subarray[] = $i++;
        $subarray[] = date("d/m/Y", strtotime($value['date']));
        $subarray[] = date("h:i:s A", strtotime($value['time']));
        $subarray[] = $value['name'];
        $subarray[] = $value['expression'];
        $subarray[] = $value['deposit'];

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
