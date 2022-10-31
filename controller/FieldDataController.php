<?php

namespace controller\FieldDataController\FieldDataController;

use PDO;
use config\Database\Database;

include_once "../config/app.php";
// include_once "../config/database.php";

class FieldDataController
{
    public function __construct()
    {
        $this->db = new Database();
        $this->conn = $this->db->link;
        $this->db_name = $this->db->dbName;
    }

    // Field Cards load
    public function fieldCardsLoad($query)
    {
        // return $query;
        // die();
        $sql = $this->conn->prepare($query);
        $sql->execute();

        if (
            $sql->rowCount() > 0
        ) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }

    // Field Cards load
    public function totalChart($query)
    {
        // return $query;
        // die();
        $sql = $this->conn->prepare($query);
        $sql->execute();

        if (
            $sql->rowCount() > 0
        ) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }

    // Field Cards load
    public function chartLoad($query)
    {
        $sql = $this->conn->prepare($query);
        $sql->execute();

        if (
            $sql->rowCount() > 0
        ) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }

    // Field clientAccLoad load
    public function clientAccLoad($query)
    {

        $sql = $this->conn->prepare($query);
        $sql->execute();

        if (
            $sql->rowCount() > 0
        ) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }

    public function clientEdit($id, $name, $husband_name = null, $father_name = null, $mother_name, $nid, $birth_reg_id_no, $up_occapasion, $up_religion, $up_gender, $phone_number, $phone_number_2, $income, $up_position, $blood_group = null, $bank_account, $check_no, $up_present_address, $up_parmanent_address, $client_img_name = null)
    {
        if ($client_img_name != null) {
            $query = "UPDATE client_registers SET name=:name,husbands_name=:husband,fathers_name=:father,mothers_name=:mother,client_nid=:nid,client_dob=:dob,client_occupation=:occupation,religion=:religion,client_gander=:gander,client_img='${client_img_name}',client_mobile_1=:mobile1,client_mobile_2=:mobile2,client_income=:income,client_position=:position,blood_grp=:blood,client_back_acc=:bankAcc,check_no=:bankCheck,present_address=:presentAddress,parmanent_address=:permanentAddress,updated_at= CURRENT_DATE() WHERE client_id = :id";
        } else {
            $query = "UPDATE client_registers SET name=:name,husbands_name=:husband,fathers_name=:father,mothers_name=:mother,client_nid=:nid,client_dob=:dob,client_occupation=:occupation,religion=:religion,client_gander=:gander,client_mobile_1=:mobile1,client_mobile_2=:mobile2,client_income=:income,client_position=:position,blood_grp=:blood,client_back_acc=:bankAcc,check_no=:bankCheck,present_address=:presentAddress,parmanent_address=:permanentAddress,updated_at= CURRENT_DATE() WHERE client_id = :id";
            // $query = "UPDATE client_registers SET name='$name',husbands_name='$husband_name',fathers_name='$father_name',mothers_name = '$mother_name',client_nid='$nid',client_dob='$birth_reg_id_no',client_occupation='$up_occapasion',religion='$up_religion',client_gander='$up_gender',client_mobile_1='$phone_number',client_mobile_2='$phone_number_2',client_income='$income',client_position='$up_position',blood_grp='$blood_group',client_back_acc='$bank_account',check_no='$check_no',present_address='$up_present_address',parmanent_address'$up_parmanent_address',updated_at= CURRENT_DATE() WHERE client_id = '$id'";
        }
        // echo $query;
        // die();
        $sql = $this->conn->prepare($query);
        $sql->execute([":name" => $name, ":husband" => $husband_name, ":father" => $father_name, ":mother" => $mother_name, ":nid" => $nid, ":dob" => $birth_reg_id_no, ":occupation" => $up_occapasion, ":religion" => $up_religion, ":gander" => $up_gender, ":mobile1" => $phone_number, ":mobile2" => $phone_number_2, ":income" => $income, ":position" => $up_position, ":blood" => $blood_group, ":bankAcc" => $bank_account, ":bankCheck" => $check_no, ":presentAddress" => $up_present_address, ":permanentAddress" => $up_parmanent_address, ":id" => $id]);

        if (
            $sql->rowCount() > 0
        ) {
            return true;
        } else {
            return false;
        }
    }

    // Audit Functions
    // Savings Audit Function
    public function savingsAuditLoad()
    {
        $query = "SELECT SUM(deposit) AS total, period_name FROM ( SELECT NVL(l.deposit,0) AS deposit, p.period_name FROM saving_collections AS l INNER JOIN periods AS p ON p.period_id = l.period_id WHERE l.status = '1' UNION ALL SELECT 0 AS deposit, period_name FROM periods WHERE period_type LIKE '%1%' ) AS a GROUP BY period_name";
        $sql = $this->conn->prepare($query);
        $sql->execute();

        if (
            $sql->rowCount() > 0
        ) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }

    // Loan Savings Audit Function
    public function loanSavingsAuditLoad()
    {
        $query = "SELECT SUM(deposit) AS total, period_name FROM ( SELECT NVL(l.deposit,0) AS deposit, p.period_name FROM loan_collections AS l INNER JOIN periods AS p ON p.period_id = l.period_id WHERE l.period_id IN (SELECT period_id FROM periods WHERE period_type LIKE '%2%') AND l.status = '1' UNION ALL SELECT 0 AS deposit, period_name FROM periods WHERE period_type LIKE '%2%' ) AS a GROUP BY period_name";

        $sql = $this->conn->prepare($query);
        $sql->execute();

        if (
            $sql->rowCount() > 0
        ) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }

    // Loan  Audit Function
    public function loansAuditLoad()
    {
        $query = "SELECT SUM(total_loan) AS total_loan, SUM(total_interest) AS total_interest, SUM(loan) AS loan, SUM(interest) AS interest, (SUM(total_loan)-SUM(loan)) AS loan_rem, (SUM(total_interest)-SUM(interest)) AS interest_rem, (SUM(loan)+(SUM(total_loan)-SUM(loan))) AS loan_total, (SUM(interest)+(SUM(total_interest)-SUM(interest))) AS interest_total, period_name FROM ( SELECT lp.total_loan, lp.total_interest, 0 AS loan, 0 AS interest, p.period_name FROM loan_profiles AS lp INNER JOIN periods AS p ON p.period_id = lp.period_id WHERE lp.status = '1' UNION ALL SELECT 0 AS total_loan, 0 AS total_interest, NVL(l.loan,0) AS loan, NVL(l.interest,0) AS interest, p.period_name FROM loan_collections AS l INNER JOIN periods AS p ON p.period_id = l.period_id WHERE l.status = '1' UNION ALL SELECT 0 AS total_loan, 0 AS total_interest, 0 AS loan, 0 AS interest, period_name FROM periods WHERE period_type LIKE '%2%' ) AS a GROUP BY period_name";
        $sql = $this->conn->prepare($query);
        $sql->execute();

        if (
            $sql->rowCount() > 0
        ) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }

    // Total Savings Function
    public function totalFDRLoad()
    {
        $query = "SELECT 'সাধারণ সঞ্চয়' AS name, NVL(SUM(deposit),0) AS savings FROM saving_collections WHERE status = '1'
                    UNION ALL
                    SELECT 'ঋণ সঞ্চয়' AS name, NVL(SUM(deposit),0) AS savings FROM loan_collections WHERE status = '1'
                    UNION ALL 
                    SELECT 'এফ.ডি.আর' AS name, NVL(SUM(deposit),0) AS savings FROM fdr_lists WHERE status = '1'";
        $sql = $this->conn->prepare($query);
        $sql->execute();

        if (
            $sql->rowCount() > 0
        ) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }

    // Final Audit Calculation Function
    public function finalAuditLoad()
    {
        $query = "SELECT 'সর্বমোট ঋণ বাকি' AS name, (SUM(totalLoan)-SUM(loan)) AS tk FROM ( 
            SELECT NVL(SUM(total_loan),0) AS totalLoan, 0 AS loan FROM loan_profiles WHERE status = '1' UNION ALL SELECT 0 AS totalLoan, NVL(SUM(loan),0) AS loan FROM loan_collections WHERE status = '1' ) AS a
            UNION ALL
            SELECT 'সর্বমোট সঞ্চয়' AS name, NVL(SUM(savings),0) AS tk FROM (
                SELECT 'সাধারণ সঞ্চয়' AS name, NVL(SUM(deposit),0) AS savings FROM saving_collections WHERE status = '1'
                UNION ALL
                SELECT 'ঋণ সঞ্চয়' AS name, NVL(SUM(deposit),0) AS savings FROM loan_collections WHERE status = '1'
                UNION ALL 
                SELECT 'এফ.ডি.আর' AS name, NVL(SUM(deposit),0) AS savings FROM fdr_lists WHERE status = '1') AS b";

        $sql = $this->conn->prepare($query);
        $sql->execute();

        if (
            $sql->rowCount() > 0
        ) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }

    public function userPermission($query)
    {

        $sql = $this->conn->prepare($query);
        $sql->execute();

        if (
            $sql->rowCount() > 0
        ) {
            return true;
        } else {
            return false;
        }
    }

    // Checking CLient ACCOUNT Function
    public function checkingACC($query)
    {
        $sql = $this->conn->prepare($query);
        $sql->execute();

        if (
            $sql->rowCount() > 0
        ) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }

    public function savingsAccChecking($savingsID, $checkID)
    {
        $query = "SELECT saving_profiles_id, client_id, book, field_id, center_id, period_id, balance FROM saving_profiles WHERE saving_profiles_id = '${savingsID}' LIMIT 1";

        $sql = $this->conn->prepare($query);
        $sql->execute();
        if ($sql->rowCount() > 0) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);

            $savingsCheckID = $result[0]['saving_profiles_id'];
            $client_id = $result[0]['client_id'];
            $book = $result[0]['book'];
            $field_id = $result[0]['field_id'];
            $center_id = $result[0]['center_id'];
            $period_id = $result[0]['period_id'];
            $balance = $result[0]['balance'];

            if ($period_id == 25) {
                $nextCheckDate = date("Y-m-d", strtotime("+90days"));
            } else {
                $nextCheckDate = date("Y-m-d", strtotime("+30days"));
            }
            $officerID = $_SESSION['auth']['user_id'];

            $insertQuery = "INSERT INTO savings_acc_checks(saving_profiles_id, client_id, book, field_id, center_id, period_id, balance, checked_officer_id, next_check_date) VALUES ('${savingsCheckID}', '${client_id}', '${book}', '${field_id}', '${center_id}', '${period_id}', '${balance}', '${officerID}', '${nextCheckDate}')";

            $this->conn->beginTransaction();
            $sql = $this->conn->prepare($insertQuery);
            $sql->execute();
            if ($sql->rowCount() > 0) {
                $updateQuery = "UPDATE `savings_acc_checks` SET status ='2' WHERE acc_check_id = '${checkID}'";

                $sql = $this->conn->prepare($updateQuery);
                $sql->execute();
                if ($sql->rowCount() > 0) {
                    $this->conn->commit();
                    return true;
                } else {
                    $this->conn->rollback();
                    return false;
                }
            } else {
                $this->conn->rollback();
                return false;
            }
        } else {
            return false;
        }
    }
    public function loanAccChecking($loanCheckID, $checkID)
    {
        $query = "SELECT loan_profile_id, client_id, book, field_id, center_id, period_id, balance, loan_recover, loan_remaining, interest_recover, interest_remaining FROM loan_profiles WHERE loan_profile_id = '${loanCheckID}' LIMIT 1";

        $sql = $this->conn->prepare($query);
        $sql->execute();
        if ($sql->rowCount() > 0) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);

            $loanCheckID = $result[0]['loan_profile_id'];
            $client_id = $result[0]['client_id'];
            $book = $result[0]['book'];
            $field_id = $result[0]['field_id'];
            $center_id = $result[0]['center_id'];
            $period_id = $result[0]['period_id'];
            $balance = $result[0]['balance'];
            $loan_recover = $result[0]['loan_recover'];
            $loan_remaining = $result[0]['loan_remaining'];
            $interest_recover = $result[0]['interest_recover'];
            $interest_remaining = $result[0]['interest_remaining'];

            if ($period_id == 26) {
                $nextCheckDate = date("Y-m-d", strtotime("+90days"));
            } else {
                $nextCheckDate = date("Y-m-d", strtotime("+30days"));
            }
            $officerID = $_SESSION['auth']['user_id'];

            $insertQuery = "INSERT INTO loan_acc_checks(loan_profile_id, client_id, book, field_id, center_id, period_id, balance, loan_recover, loan_remaining, interest_recover, interest_remaining, checked_officer_id, next_check_date) VALUES ('${loanCheckID}', '${client_id}', '${book}', '${field_id}', '${center_id}', '${period_id}', '${balance}', '${loan_recover}', '${loan_remaining}', '${interest_recover}', '${interest_remaining}', '${officerID}', '${nextCheckDate}')";

            $this->conn->beginTransaction();
            $sql = $this->conn->prepare($insertQuery);
            $sql->execute();
            if ($sql->rowCount() > 0) {
                $updateQuery = "UPDATE loan_acc_checks SET status ='2' WHERE acc_check_id = '${checkID}'";

                $sql = $this->conn->prepare($updateQuery);
                $sql->execute();
                if ($sql->rowCount() > 0) {
                    $this->conn->commit();
                    return true;
                } else {
                    $this->conn->rollback();
                    return false;
                }
            } else {
                $this->conn->rollback();
                return false;
            }
        } else {
            return false;
        }
    }
}
