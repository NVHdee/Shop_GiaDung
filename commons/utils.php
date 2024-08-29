<?php 
    session_start();
    $host = "localhost";
    $dbname="store_giadung";
    $dbusername="root";
    $dbpw = "";
    $_SERVER['REQUEST_METHOD']="";
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8",$dbusername,$dbpw);
    define('TABLE_WEBSETTING','web_settings');
    define('TABLE_SLIDESHOW','slideshows');
    define('TABLE_CATEGORY','categories');
    define('TABLE_PRODUCT','products');
    define('TABLE_BRAND','brands');
    $_SESSION['loginAdmin'] = "";
    define('SITE_URL','http://localhost/Shop_GiaDung/');
    
    $ADMIN_URL = "http://localhost/Shop_GiaDung/admin/";
    $ADMIN_ASSET_URL = "http://localhost/Shop_GiaDung/admin/adminlte/";

?>