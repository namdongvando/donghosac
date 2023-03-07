<?php

namespace Model;

use PFBC\Element;
use Model\FormRender;

class ProductsForm implements ProductsIForm {

    const FormName = "SanPham";

    static public $FormClass = ["class" => "form-control"];

    public static function Alias($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;

        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new FormRender(new Element\Textbox("Tên Không Dấu", $name, $properties));
    }

    public static function BuyTimes($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;

        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new FormRender(new Element\Textbox("Số Lần Mua", $name, $properties));
    }

    public static function Content($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties["class"] = "editor";
        $properties["id"] = __FUNCTION__;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new FormRender(new Element\Textarea("Bài Viết", $name, $properties));
    }

    public static function DateCreate($val = null) {

    }

    public static function ID($val = null) {
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new FormRender(new Element\Hidden($name, $val));
    }

    public static function Note($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;

        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new FormRender(new Element\Textbox("Ghi Chú", $name, $properties));
    }

    public static function Number($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new FormRender(new Element\Textbox("Số Lượng", $name, $properties));
    }

    public static function Price($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;

        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new FormRender(new Element\Textbox("Giá", $name, $properties));
    }

    public static function Summary($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties["class"] = "editorMini";
        $properties["id"] = __FUNCTION__;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new FormRender(new Element\Textarea("Mô Tả Ngắn", $name, $properties));
    }

    public static function UrlHinh($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties["Id"] = __FUNCTION__;

        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new FormRender(new Element\Textbox("Đường Dẫn Hình", $name, $properties));
    }

    public static function Username($val = null) {

    }

    public static function Views($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties["Id"] = __FUNCTION__;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new FormRender(new Element\Textbox("Số Lần Xem", $name, $properties));
    }

    public static function catID($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties["Id"] = __FUNCTION__;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        $option = Category::ToSelect();
        return new FormRender(new Element\Select("Danh Mục Sản Phẩm", $name, $option, $properties));
    }

    public static function isShow($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties["Id"] = __FUNCTION__;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        $option = Products::IsShowList();
        return new FormRender(new Element\Select("Vị Trí", $name, $option, $properties));
    }

    public static function lang($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties["Id"] = __FUNCTION__;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new FormRender(new Element\Select("Ngôn Ngữ", $name, ["vi"=>"Tiếng việt"], $properties));
    }

    public static function nameProduct($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties["Id"] = __FUNCTION__;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new FormRender(new Element\Textbox("Tên Sản Phẩm", $name, $properties));
    }

    public static function oldPrice($val = null) {
        $properties = self::$FormClass;
        $properties["value"] = $val;
        $properties["Id"] = __FUNCTION__;
        $name = self::FormName . "[" . __FUNCTION__ . "]";
        return new FormRender(new Element\Textbox("Giá Cũ", $name, $properties));
    }

}
