<?php

define("DEFAULT_CONTROLLER", "index");
define("DEFAULT_ACTION", "index");
define("BASE_URL", "https://donghoxac.2splus.com/");
define("DOMAIN", ".2splus.com/");
define("BASE_DIR", "/");
define("ROOT_DIR", __DIR__);
define("NgonNgu", "NgonNgu");
define("Password", "@NguyenVanDo1");
define("QuanTri", "QuanTri_PGV");
define("table_prefix", "bakcodt_");
$_SESSION['TenHienThi'] = 0;
global $INI;
$INI['host'] = "localhost";
// $INI['username'] = "tefdqcgmhosting_donghoxac";
$INI['username'] = "root";

// $INI['password'] = "zaq@123Abc456";
$INI['password'] = ""; 
$INI['DBname'] = "tefdqcgmhosting_donghoxac";
spl_autoload_register(function ($class) {
    $class = str_replace("\\", "_", $class);
    $class = str_replace("_", "/", $class) . ".php";
    if (file_exists($class)) {
        include_once $class;
    }
});
