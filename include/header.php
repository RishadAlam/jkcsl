<?php
include_once "config/app.php";
if (!isset($_SESSION['authenticate']) && !isset($_COOKIE['userID'])) {
    redirect("login.php");
}
if (!isset($_SESSION['authenticate']) && isset($_COOKIE['userID'])) {
    $_SESSION['authenticate'] = true;
    $_SESSION['auth']['user_name'] = $_COOKIE['userName'];
    $_SESSION['auth']['user_id'] = $_COOKIE['userID'];
    $_SESSION['auth']['user_role'] = $_COOKIE['userRole'];
    $_SESSION['auth']['user_img'] = $_COOKIE['userImg'];
}
date_default_timezone_set('Asia/Dhaka');
$theme = $db->bgTheme($_SESSION['auth']['user_id']);
?>
<!DOCTYPE html>
<html lang="bn">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>জনকল্যাণ কর্মজীবি কো-অপারেটিভ সোসাইটি লিমিটেড</title>
    <link rel="icon" type="image/x-icon" href="./img/download.jpg">
    <!-- Kalpurush Font -->
    <link href="https://fonts.maateen.me/kalpurush/font.css" rel="stylesheet" />
    <!-- bootstrap5 -->
    <link href="./CSS/bootstrap.min.css" rel="stylesheet">
    <!-- Font Aowsome -->
    <link rel="stylesheet" href="./CSS/all.min.css">
    <!-- Box icon -->
    <link rel="stylesheet" href="./CSS/boxicons.min.css">
    <!-- Data Table -->
    <link rel="stylesheet" href="./CSS/jquery.dataTables.min.css">
    <link rel="stylesheet" href="./CSS/responsive.dataTables.min.css">
    <!-- Tabs -->
    <link rel="stylesheet" href="./CSS/addTabs.min.css">
    <!-- Date Range Picker -->
    <link rel="stylesheet" type="text/css" href="./CSS/daterangepicker.css" />
    <!-- Time Picker -->
    <link rel="stylesheet" href="./CSS/mdtimepicker.min.css">
    <!-- Custom scrolling -->
    <link rel="stylesheet" href="./CSS/perfect-scrollbar.css">
    <!-- Tail Select -->
    <link rel="stylesheet" href="./CSS/tail.select-light.css">
    <!-- Select2 -->
    <link href="./CSS/select2.min.css" rel="stylesheet" />
    <!-- google font (Poppins) -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- CSS -->
    <link rel="stylesheet" href="./CSS/style.css">
    <!-- Responsive Css -->
    <link rel="stylesheet" href="./CSS/responsive.css">
</head>

<body style="background-image: <?php foreach ($theme as $row) { ?> url(<?= baseUrl('/') ?>img/<?= $row['bg_img'] ?>) <?php } ?>; background-position: center; background-size: cover; background-repeat: no-repeat;">

    <!-- PreLoader -->
    <div id="overlayer"></div>
    <div id="preloader">
        <div id="loader"></div>
    </div>