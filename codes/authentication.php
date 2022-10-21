<?php

use controller\LoginController\LoginController\LoginController;


// include_once "../config/app.php";
include_once "../controller/LoginController.php";

// Login Functionality
if (isset($_POST['login'])) {
    $auth = new LoginController();

    $email = $_POST['email'];
    $password = $_POST['password'];
    if (isset($_POST['remember_me'])) {
        $rememberMe = $_POST['remember_me'];
    }

    // Empty Email or Password Checking
    if (!required($email)) {
        redirect("login.php", "email_error", "ইমেল প্রয়োজন");
    }

    // Empty Password Checking
    if (!required($_POST['password'])) {
        redirect("login.php", "password_error", "পাসওয়ার্ড প্রয়োজন");
    }

    // Invalid Email Checking
    if (!emailValidate($email)) {
        redirect("login.php", "email_error", "আপনার ইমেলটি সঠিক নয়");
    }

    $Pass = sha1($password);

    $login = $auth->login($email, $Pass, $rememberMe);

    if ($login) {
        redirect("index.php", "login_success", "স্বাগতম");
    }
}

// Logout Functionality
if (isset($_POST['logout'])) {
    $auth = new LoginController();

    $logout = $auth->logout();

    if ($logout) {
        redirect("login.php");
    } else {
        redirect("404.php");
    }
}
