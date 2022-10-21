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
        $query = "SELECT SUM(s.deposit) AS total, p.period_name FROM saving_collections AS s INNER JOIN periods AS p ON p.period_id = s.period_id WHERE s.status = '1' GROUP BY s.period_id";
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
        $query = "SELECT SUM(l.deposit) AS total, p.period_name FROM loan_collections AS l INNER JOIN periods AS p ON p.period_id = l.period_id WHERE l.status = '1' GROUP BY l.period_id";
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
        $query = "SELECT SUM(l.loan) AS loan, SUM(l.interest) AS interest, SUM(lp.total_loan) p.period_name FROM loan_collections AS l LEFT JOIN periods AS p ON p.period_id = l.period_id RIGHT JOIN loan_profiles AS lp ON lp.period_id = p.period_id WHERE l.status = '1' GROUP BY l.period_id";
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
}
