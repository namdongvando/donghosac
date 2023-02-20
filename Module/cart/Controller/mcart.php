<?php

namespace Module\cart\Controller;

class mcart extends \Controller_backend {

    function __construct() {
        parent::__construct();
    }

    function index() {

        $this->ViewThemeModule();
    }

    function trangnoidung() {
        $path = \Module\cart\Model\Cart::GetPathContent(\Module\cart\Model\Cart::DatHangThanhCong);
        if (isset($_POST["DatHangThanhCong"])) {
            file_put_contents($path, $_POST["DatHangThanhCong"]);
        }
//        $path = \Module\cart\Model\Cart::GetPathContent(\Module\cart\Model\Cart::DatHangThanhCong);
        $content = file_get_contents($path);
        $this->ViewThemeModule(["ContentPage" => $content], null, "news");
    }

}

?>