<?php

namespace Module\minfor\Controller;



class index extends \Controller_backend
{



    public $infor;

    public $Breadcrumb;



    function __construct()
    {

        parent::__construct();

        $this->Breadcrumb = new \Model\Breadcrumb();

        $this->Bread[] = [

            "title" => "Thông Tin Cộng Ty",

            "link" => "#"

        ];

        $this->infor = new \Module\minfor\Model\infor();
    }



    function index()
    {

        if (isset($_POST["Name"])) {

            foreach ($_POST["Name"] as $ID => $value) {

                $In = $this->infor->inforById($ID);

                $In["Name"] = $_POST["Name"][$ID];

                $In["Content"] = $_POST["Content"][$ID];

                $In["Title"] = $_POST["Title"][$ID];

                $In["Config"] = $_POST["Config"][$ID];

                $In["dataConfig"] = $_POST["dataConfig"][$ID];

                $this->infor->editinfor($In);
            }
        }

        $this->Breadcrumb->setBreadcrumb($this->Bread);

        $this->ViewThemeModule();
    }



    function thongtincongty()
    {

        if (isset($_POST["Name"])) {

            foreach ($_POST["Name"] as $ID => $value) {

                $In = $this->infor->inforById($ID);

                $_con = $this->infor->_decode($In["Config"]);

                if ($_con->Type == "text") {

                    $In["Content"] = $_POST["Content"][$ID];
                }

                $this->infor->editinfor($In);
            }



            if (isset($_FILES["Content"]["name"])) {

                //                    unlink(substr($In["Content"], 1, strlen($In["Content"])));

                $img = $this->infor->upload_multi_image($_FILES["Content"], "public/img/images/information/", "img-");

                foreach ($img as $k => $value) {

                    $In = $this->infor->inforById($k);

                    if ($In) {

                        $In["Content"] = "/" . $value;

                        $this->infor->editinfor($In);
                    }
                }
            }
        }



        $this->Breadcrumb->setBreadcrumb($this->Bread);

        $this->ViewThemeModule();;
    }



    function deleteinfor()
    {

        $this->infor->deleteinfor($this->param[0]);

        $this->infor->_header($_SERVER["HTTP_REFERER"]);
    }



    function addinfor()
    {

        $infor["ID"] = time();

        $infor["Content"] = "";

        $infor["Name"] = "";

        $infor["Title"] = "";

        $infor["Config"] = "";

        $infor["dataConfig"] = "";

        $this->infor->addinfor($infor);

        $this->infor->_header($_SERVER["HTTP_REFERER"]);
    }
}
