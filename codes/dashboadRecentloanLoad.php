<?php

use controller\CollectionController\CollectionController\CollectionController;

include_once "../controller/CollectionController.php";
// session_start();

$collection = new CollectionController();

$officer_id = null;
if ($_SESSION['auth']['user_role'] > 0) {
    $officer_id = $_SESSION['auth']['user_id'];
}
// echo $officer_id;
// die();
$result = $collection->dashboardloanCollecReportload($officer_id);
if ($result != false && $result != null) {
    // print_r($result);
    // die();
    $i = 1;
    foreach ($result as $keys => $value) {
        $subarray = array();
        $subarray[] = $i++;
        $subarray[] = $value['client_name'];
        $subarray[] = $value['book'];
        $subarray[] = $value['field_name'];
        $subarray[] = $value['center_name'];
        $subarray[] = $value['period_name'];
        $subarray[] = $value['deposit'];
        $subarray[] = $value['loan'];
        $subarray[] = $value['interest'];
        $subarray[] = $value['total'];
        $subarray[] = $value['officer_name'];
        $subarray[] = date("h:i:s A", strtotime($value['created_at_time']));
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
