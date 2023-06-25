<?php

namespace Model;

use PFBC\Element\Button;
use PFBC\Element\Select;

class FormCommon
{

    static public   function btnSelecImages($targetId)
    {
        return new FormRender(new Button("Chọn Hình", "button", ["class" => "btn btn-success", "onclick" => "BrowseServer('Images:/sanpham/', '{$targetId}')"]));
    }
    static public   function selectRow($val, $name)
    {
        $prop["value"] = $val;
        $prop["class"] = "form-control";
        $options = [
            "5" => "5",
            "10" => "10",
            "20" => "20",
            "50" => "50"
        ];
        return new FormRender(new Select("Số dòng", $name, $options, $prop));
    }
}
