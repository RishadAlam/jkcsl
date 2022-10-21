<?php

use controller\CollectionController\CollectionController\CollectionController;

include_once "../controller/CollectionController.php";
// session_start();

$collection = new CollectionController();

// Income Chart Load
if (isset($_POST['income']) && $_POST['income'] == 1) {
    $query = "SELECT SUM(income) AS income, date FROM incomes WHERE MONTH(date) = MONTH(CURRENT_DATE()) GROUP BY date";
    // echo json_encode($from_date);
    // die();

    $result = $collection->incomeExpanceRecordload($query);
    if ($result != false && $result != null) {
        echo json_encode($result);
    } else {
        echo json_encode(null);
    }
}

// Totsl Income Chart Load
if (isset($_POST['total_income']) && $_POST['total_income'] == 1) {
    $query = "SELECT SUM(income) AS income FROM incomes WHERE MONTH(date) = MONTH(CURRENT_DATE())";
    // echo json_encode($from_date);
    // die();

    $result = $collection->incomeExpanceRecordload($query);
    if ($result != false && $result != null) {
        foreach ($result as $val) {
            $income = $val['income'];
        }
        echo $income;
    } else {
        echo null;
    }
}

// Income edit Load
if (isset($_POST['income_id'])) {
    $id = $_POST['income_id'];
    $query = "SELECT * FROM incomes WHERE id = '${id}' LIMIT 1";
    // echo json_encode($from_date);
    // die();

    $result = $collection->incomeExpanceRecordload($query);
    if ($result != false && $result != null) {
        echo json_encode($result);
    } else {
        echo json_encode(null);
    }
}

// expance edit Load
if (isset($_POST['expance1_id'])) {
    $id = $_POST['expance1_id'];
    $query = "SELECT * FROM expenses WHERE id = '${id}' LIMIT 1";
    // echo json_encode($from_date);
    // die();

    $result = $collection->incomeExpanceRecordload($query);
    if ($result != false && $result != null) {
        echo json_encode($result);
    } else {
        echo json_encode(null);
    }
}

// Totsl Income Chart Load
if (isset($_POST['total_expance_type'])) {
    $type = $_POST['total_expance_type'];
    $query = "SELECT SUM(expence) AS expence FROM expenses WHERE type = '${type}' AND MONTH(date) = MONTH(CURRENT_DATE())";
    // echo json_encode($from_date);
    // die();

    $result = $collection->incomeExpanceRecordload($query);
    if ($result != false && $result != null) {
        foreach ($result as $val) {
            $expence = $val['expence'];
        }
        echo $expence;
    } else {
        echo null;
    }
}

// Income Chart Load
if (isset($_POST['expence_type'])) {
    $type = $_POST['expence_type'];
    $query = "SELECT SUM(expence) AS expence, date FROM expenses WHERE type = '${type}' AND MONTH(date) = MONTH(CURRENT_DATE()) GROUP BY date";
    // echo json_encode($from_date);
    // die();

    $result = $collection->incomeExpanceRecordload($query);
    if ($result != false && $result != null) {
        echo json_encode($result);
    } else {
        echo json_encode(null);
    }
}
