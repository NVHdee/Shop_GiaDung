<?php 
    require_once "../commons/utils.php";
    $_SESSION['loginAdmin'] = "";
    header('location: '. SITE_URL. 'index.php');
    die;
?>