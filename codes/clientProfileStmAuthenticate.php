<?php

use controller\FieldDataController\FieldDataController\FieldDataController;

include_once "../controller/FieldDataController.php";
$fields = new FieldDataController();

// Client Savings STM Profile Load
if (isset($_POST['clientProfileSTM']) && isset($_POST['clientID']) && isset($_POST['savingsID']) && $_POST['clientProfileSTM'] == 1) {
    $clientID = $_POST['clientID'];
    $savingsID = $_POST['savingsID'];

    $query = "SELECT s.*, c.name, c.client_img, c.client_mobile_1, f.field_name, cn.center_name, p.period_name,
    (SELECT COUNT(*) FROM saving_collections WHERE savings_prof_id = '${savingsID}' AND status = '1') AS totalInstrallment,
    (SELECT COUNT(*) FROM saving_withdrawals WHERE savings_prof_id = '${savingsID}' AND status = '1') AS totalwithdrawal
     FROM saving_profiles AS s INNER JOIN periods AS p ON p.period_id = s.period_id INNER JOIN feilds AS f ON f.feild_id  = s.field_id INNER JOIN centers AS cn ON cn.center_id  = s.center_id INNER JOIN client_registers AS c ON c.client_id  = s.client_id WHERE s.saving_profiles_id  = '${savingsID}'";

    $result = $fields->clientAccLoad($query);
    if ($result != false) {
        echo json_encode($result);
        // print_r($result);
    } else {
        echo json_encode(false);
    }
}
// Client Loan STM Profile Load
if (isset($_POST['clientProfileSTM']) && isset($_POST['clientID']) && isset($_POST['loansID']) && $_POST['clientProfileSTM'] == 1) {
    $clientID = $_POST['clientID'];
    $loansID = $_POST['loansID'];

    $query = "SELECT l.*, c.name, c.client_img, c.client_mobile_1, f.field_name, cn.center_name, p.period_name,
    (SELECT COUNT(*) FROM loan_collections WHERE loan_prof_id = '${loansID}') AS recoverInstrallment,
    (SELECT COUNT(*) FROM loan_savings_withdrawals WHERE loan_prof_id = '${loansID}') AS totalwithdrawal
     FROM loan_profiles AS l INNER JOIN periods AS p ON p.period_id = l.period_id INNER JOIN feilds AS f ON f.feild_id  = l.field_id INNER JOIN centers AS cn ON cn.center_id  = l.center_id INNER JOIN client_registers AS c ON c.client_id  = l.client_id WHERE l.loan_profile_id   = '${loansID}'";

    $result = $fields->clientAccLoad($query);
    if ($result != false) {
        echo json_encode($result);
        // print_r($result);
    } else {
        echo json_encode(false);
    }
}

// Client Chart Profile Load
if (isset($_POST['clientProfileChartLoad']) && isset($_POST['clientID']) && isset($_POST['savingsID']) && isset($_POST['fieldID']) && isset($_POST['centerID']) && $_POST['clientProfileChartLoad'] == 1) {
    $clientID = $_POST['clientID'];
    $savingsID = $_POST['savingsID'];
    $fieldID = $_POST['fieldID'];
    $centerID = $_POST['centerID'];

    // $query = "SELECT SUM(deposit) AS deposit, DATE_FORMAT(created_at_date, '%d-%m-%Y') AS dDate FROM saving_collections WHERE savings_prof_id = '${savingsID}' AND feild_id = '${fieldID}' AND status = '1' AND center_id = '${centerID}' AND MONTH(created_at_date) = MONTH(CURRENT_DATE()) AND YEAR(created_at_date) = YEAR(CURRENT_DATE())  GROUP BY created_at_date";

    // $query2 = "SELECT SUM(withdrawal) AS withdrawal, DATE_FORMAT(created_at, '%d-%m-%Y') AS wDate FROM saving_withdrawals WHERE savings_prof_id = '${savingsID}' AND feild_id = '${fieldID}' AND status = '1' AND center_id = '${centerID}' AND MONTH(created_at) = MONTH(CURRENT_DATE()) AND YEAR(created_at) = YEAR(CURRENT_DATE()) GROUP BY created_at";

    // $result = $fields->clientAccLoad($query);
    // $result2 = $fields->clientAccLoad($query2);
    // if ($result != false && $result2 != false) {
    //     $combine = array_merge($result, $result2);
    //     $data = [];
    //     foreach ($combine as $keys => $row) {

    //         if (isset($row['dDate']) && isset($row['wDate'])) {
    //             if ($row['dDate'] == $row['wDate']) {
    //                 $data[$keys]['date'] = $row['dDate'];
    //                 if (isset($row['deposit']) && isset($row['withdrawal'])) {
    //                     $data[$keys]['deposit'] = $row['deposit'];
    //                     $data[$keys]['withdrawal'] = $row['withdrawal'];
    //                 } elseif (isset($row['deposit']) && !isset($row['withdrawal'])) {
    //                     $data[$keys]['deposit'] = $row['deposit'];
    //                     $data[$keys]['withdrawal'] = 0;
    //                 } elseif (isset($row['withdrawal']) && !isset($row['deposit'])) {
    //                     $data[$keys]['deposit'] = 0;
    //                     $data[$keys]['withdrawal'] = $row['withdrawal'];
    //                 }
    //             }
    //         } elseif (isset($row['dDate']) && !isset($row['wDate'])) {
    //             $data[$keys]['date'] = $row['dDate'];
    //             $data[$keys]['deposit'] = $row['deposit'];
    //             $data[$keys]['withdrawal'] = 0;
    //         } elseif (isset($row['wDate']) && !isset($row['dDate'])) {
    //             $data[$keys]['date'] = $row['wDate'];
    //             $data[$keys]['deposit'] = 0;
    //             $data[$keys]['withdrawal'] = $row['withdrawal'];
    //         }

    //         // if ($row['dDate'] == $row['wDate']) {
    //         //     $data['date'] = $row['dDate'];
    //         // } else {
    //         //     $data['date'] = $row['wDate'];
    //         // }
    //         // if ($data[$keys]['date'] = $row['date']) {
    //         //     $data[$keys]['deposit'] = (isset($row['deposit'])) ? $row['deposit'] : null;
    //         //     $data[$keys]['withdrawal'] = (isset($row['withdrawal'])) ? $row['withdrawal'] : null;
    //         // }
    //     }
    //     echo json_encode($data);
    //     // print_r($combine);
    // } elseif ($result != false) {
    //     echo json_encode($result);
    //     // print_r($combine);
    // } elseif ($result2 != false) {
    //     echo json_encode($result2);
    //     // print_r($combine);
    // } else {
    //     echo json_encode(false);
    // }

    $query = "SELECT date, SUM(deposit) AS deposit, SUM(withdrawal) AS withdrawal FROM (
                SELECT deposit, 0 withdrawal,  DATE_FORMAT(created_at_date, '%d-%m-%Y') AS date FROM saving_collections WHERE savings_prof_id = '${savingsID}' AND feild_id = '${fieldID}' AND status = '1' AND center_id = '${centerID}' AND MONTH(created_at_date) = MONTH(CURRENT_DATE()) AND YEAR(created_at_date) = YEAR(CURRENT_DATE())
                UNION ALL
                SELECT 0 deposit, withdrawal, DATE_FORMAT(created_at, '%d-%m-%Y') AS date FROM saving_withdrawals WHERE savings_prof_id = '${savingsID}' AND feild_id = '${fieldID}' AND status = '1' AND center_id = '${centerID}' AND MONTH(created_at) = MONTH(CURRENT_DATE()) AND YEAR(created_at) = YEAR(CURRENT_DATE())
                ) AS a GROUP BY date";


    $result = $fields->clientAccLoad($query);
    if ($result != false) {
        echo json_encode($result);
        // print_r($result);
    } else {
        echo json_encode(false);
    }
}

// SELECT date, officers_id, expression, deposit, withdrawal FROM (
// SELECT deposit, 0 AS withdrawal, expression, officers_id, created_at_date AS date FROM saving_collections WHERE savings_prof_id ='26' AND status='1'
// UNION ALL
// SELECT 0 AS deposit, withdrawal, expression, officers_id, created_at AS date FROM saving_withdrawals WHERE savings_prof_id ='26' AND status='1'
// ) AS a;
