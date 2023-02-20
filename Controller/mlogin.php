<?php

class Controller_mlogin extends Application {

    function __construct() {
        $a = new Model_Adapter();
        if (isset($_SESSION[QuanTri])) {
            $a->_header("/backend");
        }
        Model_ViewTheme::set_viewthene("backend");
    }

    function index() {

        if (isset($_POST["dangnhap"])) {
            $Admin = new \Model\Admin();
            $_SESSION[QuanTri] = $Admin->CheckLogin($_POST["Username"], $_POST["Password"], FALSE);
//            var_dump($_SESSION[QuanTri]);
            $Admin->_header("/backend/");
        }
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "login");
    }

}

?>