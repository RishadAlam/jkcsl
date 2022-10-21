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

    // $query = "SELECT s.deposit, s.created_at_date, sw.withdrawal, sw.created_at FROM saving_collections AS s INNER JOIN saving_withdrawals AS sw ON sw.savings_prof_id = s.savings_prof_id WHERE s.savings_prof_id = '26' AND s.feild_id = '16' AND s.status = '1' AND s.center_id = '11' AND MONTH(s.created_at_date) = MONTH(CURRENT_DATE()) AND YEAR(s.created_at_date) = YEAR(CURRENT_DATE()) AND sw.savings_prof_id = '26' AND sw.feild_id = '16' AND sw.status = '1' AND sw.center_id = '11' AND MONTH(sw.created_at) = MONTH(CURRENT_DATE()) AND YEAR(sw.created_at) = YEAR(CURRENT_DATE())";

    $query = "SELECT SUM(deposit) AS deposit, created_at_date AS date FROM saving_collections WHERE savings_prof_id = '${savingsID}' AND feild_id = '${fieldID}' AND status = '1' AND center_id = '${centerID}' AND MONTH(created_at_date) = MONTH(CURRENT_DATE()) AND YEAR(created_at_date) = YEAR(CURRENT_DATE())  GROUP BY created_at_date";

    $query2 = "SELECT SUM(withdrawal) AS withdrawal, created_at AS date FROM saving_withdrawals WHERE savings_prof_id = '26' AND feild_id = '16' AND status = '1' AND center_id = '11' AND MONTH(created_at) = MONTH(CURRENT_DATE()) AND YEAR(created_at) = YEAR(CURRENT_DATE()) GROUP BY created_at";

    // echo $query2;
    // die();
    $result = $fields->clientAccLoad($query);
    $result2 = $fields->clientAccLoad($query2);
    if ($result != false && $result2 != false) {
        // echo json_encode($result);
        $combine = array_merge($result, $result2);
        // $combine = [$result, $result2];
        $group = [];
        foreach ($combine as $data) {
            if (!isset($group[$data['date']])) {
                $group[$data['date']] = [];
            }
            foreach ($data as $key => $value) {
                if ($key == 'date') continue;
                $group[$data['date']][$key] = $value;
            }
        }

        // foreach($combine as $array){
        //     foreach($array as $key => $subArray){
        //         if($key != "date"){
        //             $group[$array['date']][$key] = $subArray
        //         }
        //     }
        // }
        echo json_encode ($group);
        // print_r($result2);
    } else {
        echo json_encode(false);
    }
}
