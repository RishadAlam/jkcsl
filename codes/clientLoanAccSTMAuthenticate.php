<?php

use controller\FieldDataController\FieldDataController\FieldDataController;

include_once "../controller/FieldDataController.php";
$fields = new FieldDataController();

$loansID = $_POST['loansID'];
$from_date = date("Y-m-d", strtotime($_POST['from_date']));
$end_date = date("Y-m-d", strtotime($_POST['end_date']));

$query = "SELECT DATE_FORMAT(CURRENT_DATE, '%d-%m-%Y') AS date, exp, SUM(deposit) AS deposit, SUM(withdrawal) AS withdrawal, NVL((SUM(deposit) - SUM(withdrawal)),0) AS balance, SUM(loan) AS loan, SUM(interest) AS interest FROM ( 
    SELECT NVL(SUM(deposit),0) AS deposit, 'পূর্বের লেনদেন' AS exp, NVL(SUM(loan),0) AS loan, NVL(SUM(interest),0) AS interest, 0 AS withdrawal, DATE_FORMAT(created_at_date, '%d-%m-%Y') AS date FROM loan_collections WHERE loan_prof_id = '${loansID}' AND status = '1' AND created_at_date NOT BETWEEN '${from_date}' AND '${end_date}' 
    UNION ALL 
    SELECT 0 AS deposit,'পূর্বের লেনদেন' AS exp, 0 AS loan, 0 AS interest, NVL(SUM(withdrawal),0) AS withdrawal, DATE_FORMAT(created_at, '%d-%m-%Y') AS date FROM loan_savings_withdrawals WHERE loan_prof_id = '${loansID}' AND status = '1' AND created_at NOT BETWEEN '${from_date}' AND '${end_date}') AS a
    UNION ALL
    SELECT date, ' ' AS exp, SUM(deposit) AS deposit, SUM(withdrawal) AS withdrawal, NVL((SUM(deposit) - SUM(withdrawal)),0) AS balance, SUM(loan) AS loan, SUM(interest) AS interest FROM ( 
    SELECT ' ' AS exp,  deposit, loan, interest, 0 withdrawal, DATE_FORMAT(created_at_date, '%d-%m-%Y') AS date FROM loan_collections WHERE loan_prof_id = '${loansID}' AND status = '1' AND created_at_date BETWEEN '${from_date}' AND '${end_date}' 
    UNION ALL 
    SELECT ' ' AS exp,  0 AS deposit, 0 AS loan, 0 AS interest, withdrawal, DATE_FORMAT(created_at, '%d-%m-%Y') AS date FROM loan_savings_withdrawals WHERE loan_prof_id = '${loansID}' AND status = '1' AND created_at BETWEEN '${from_date}' AND '${end_date}') AS b GROUP BY date";

$query2 = "SELECT total_loan, total_interest FROM `loan_profiles` WHERE loan_profile_id = '${loansID}'";

$result = $fields->clientAccLoad($query);
$result2 = $fields->clientAccLoad($query2);

if ($result != false && $result != null && $result2 != false && $result2 != null) {
    // print_r($result);
    // die();
    $totalLoan = $result2[0]['total_loan'];
    $totalInterest = $result2[0]['total_interest'];
    $i = 1;
    foreach ($result as $keys => $value) {
        // $balances = 0;
        // if ($keys > 0) {
        //     // $balances = $value['balance'] + $result[$keys - 1]['balance'];
        //     $balances += $result[$keys]['balance'];
        // } else {
        //     $balances = $value['balance'];
        // }
        if (!isset($leftLoan)) {
            $leftLoan = $totalLoan - $result[$keys]['loan'];
        } else {
            $leftLoan = $leftLoan - $result[$keys]['loan'];
        }
        if (!isset($leftInterest)) {
            $leftInterest = $totalInterest - $result[$keys]['interest'];
        } else {
            $leftInterest = $leftInterest - $result[$keys]['interest'];
        }

        $subarray = array();
        $subarray[] = $i++;
        $subarray[] = date("d/m/Y", strtotime($value['date']));
        $subarray[] = $value['exp'];
        $subarray[] = $value['deposit'];
        $subarray[] = $value['withdrawal'];
        $subarray[] = $value['balance'];
        $subarray[] = $value['loan'];
        $subarray[] = $leftLoan;
        $subarray[] = $value['interest'];
        $subarray[] = $leftInterest;

        $output[] = $subarray;
    }
    $data = array(
        // "recordsFiltered" => $rowCount,
        "data" => $output,
    );
    echo json_encode($data);
    // print_r($result);
} else {
    echo json_encode(null);
}
