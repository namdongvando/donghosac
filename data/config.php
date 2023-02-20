<?php

define("DEFAULT_CONTROLLER", "index");
define("DEFAULT_ACTION", "index");
define("BASE_URL", "http://tamtriluc.2splus.com/");
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
$INI['username'] = "oetkpjhosting_tamtri";
$INI['password'] = "132077621442";
$INI['DBname'] = "oetkpjhosting_tamtri";

function __autoload($class) {
    $class = str_replace("\\", "_", $class);
    $class = str_replace("_", "/", $class) . ".php";
    if (file_exists($class)) {
        include_once $class;
    }
}
?>




