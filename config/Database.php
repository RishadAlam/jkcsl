<?php

namespace config\Database;

use PDO;
use PDOException;

class Database
{
    // Database 
    public $db_name = "mysql:host=localhost;dbname=gkcsl";
    public $db_user = "root";
    public $db_pass = "";
    public $dbName = "gkcsl";

    // Create Variable
    public $link;

    public function __construct()
    {
        $this->db_connect();
    }

    public function db_connect()
    {
        // Connect Database
        try {
            $this->link = new PDO($this->db_name, $this->db_user, $this->db_pass);
            // set the PDO error mode to exception
            $this->link->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            // echo "Connected successfully";
        } catch (PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
    }

    // Sidebar Field Menu Load
    public function fieldLoad()
    {
        $sql = $this->link->prepare("SELECT feild_id, field_name FROM feilds WHERE status = '1'");
        $sql->execute();

        if ($sql->rowCount() > 0) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }
    // Sidebar Centers Menu Load
    public function centersLoad()
    {
        $sql = $this->link->prepare("SELECT center_id, center_name FROM centers WHERE status = '1'");
        $sql->execute();

        if ($sql->rowCount() > 0) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }
    // Sidebar Periods Menu Load
    public function periodsLoad($type)
    {
        $sql = $this->link->prepare("SELECT period_id, period_name FROM periods WHERE period_type LIKE '%${type}%' AND status = '1'");
        $sql->execute();

        if ($sql->rowCount() > 0) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }

    // Sidebar Periods Menu Load
    public function loadsite()
    {

        $sql = $this->link->prepare("SELECT * FROM settings AS s WHERE s.id = '1'");
        $sql->execute();

        if ($sql->rowCount() > 0) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            return false;
        }
    }

    // Sidebar Periods Menu Load
    public function bgTheme($officerID)
    {
        $officerID = $officerID;
        $sql = $this->link->prepare("SELECT bg_img FROM themes WHERE officers_id = '${officerID}' LIMIT 1");
        $sql->execute();

        if ($sql->rowCount() > 0) {
            $result = $sql->fetchALL(PDO::FETCH_ASSOC);
            return $result;
        } else {
            $sql = $this->link->prepare("SELECT bg_img FROM themes WHERE id = '1' LIMIT 1");
            $sql->execute();

            if ($sql->rowCount() > 0) {
                $result = $sql->fetchALL(PDO::FETCH_ASSOC);
                return $result;
            }
        }
    }
}

// $db = new Database();

// // var_dump($db);
