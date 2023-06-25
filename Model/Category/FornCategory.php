<?php

namespace Model\Category;

use Model\Category;
use PFBC\Element\Hidden;
use PFBC\Element\Select;
use PFBC\Element\Textbox;
use PFBC\FormRender;

class FornCategory implements IFormCategory
{

    public $ValForm;
    const FormName = "DanhMuc";
    public static $prorp = ["class" => "form-control"];

    /**
     */
    public function __construct($val = null)
    {
        $this->ValForm = $val;
    }
    private function GetName($FieldName)
    {
        return self::FormName . "[{$FieldName}]";
    }
    private function GetVal($name, $val = null)
    {
        return $val ?? $this->ValForm[$name] ?? null;
    }

    public function catID($val = null)
    {
        $prorp = self::$prorp;
        $val = $this->GetVal(__FUNCTION__, $val);
        $name = $this->GetName(__FUNCTION__);
        return new FormRender(new Hidden($name, $val));
    }

    /**
     *
     * @param mixed $val
     * @return mixed
     */
    public function catName($val = null)
    {
        $prorp = self::$prorp;
        $prorp["value"] = $this->GetVal(__FUNCTION__, $val);
        $name = $this->GetName(__FUNCTION__);
        return new FormRender(new Textbox("Tên danh mục", $name, $prorp));
    }

    /**
     *
     * @param mixed $val
     * @return mixed
     */
    public function Note($val = null)
    {
        $prorp = self::$prorp;
        $prorp["value"] = $this->GetVal(__FUNCTION__, $val);
        $name = $this->GetName(__FUNCTION__);
        return new FormRender(new Textbox("Ghi chú", $name, $prorp));
    }

    /**
     *
     * @param mixed $val
     * @return mixed
     */
    public function parentCatID($val = null)
    {
        $prorp = self::$prorp;
        $prorp["value"] = $this->GetVal(__FUNCTION__, $val);
        $name = $this->GetName(__FUNCTION__);
        $cat = new Category();
        $items = $cat->GetCategorys();
        $options = ["" => "Là Cấp Cha"];
        foreach ($items as $key => $value) {
            $options[$value["catID"]] = $value["catName"];
        }

        return new FormRender(new Select("Danh mục cấp cha", $name, $options, $prorp));
    }

    /**
     *
     * @param mixed $val
     * @return mixed
     */
    public function banner($val = null, $_prorp = [])
    {
        $prorp = self::$prorp;
        foreach ($prorp as $key => $value) {
            $_prorp[$key] = $value;
        }
        $_prorp["value"] = $this->GetVal(__FUNCTION__, $val);
        $name = $this->GetName(__FUNCTION__);
        return new FormRender(new Textbox("Banner", $name, $_prorp));
    }

    /**
     *
     * @param mixed $val
     * @return mixed
     */
    public function Public($val = null)
    {
        $prorp = self::$prorp;
        $prorp["value"] = $this->GetVal(__FUNCTION__, $val);
        $name = $this->GetName(__FUNCTION__);
        $options = ["1" => "Hiện", "0" => "Ẩn"];
        return new FormRender(new Select("Hiển thị", $name, $options, $prorp));
    }

    /**
     *
     * @param mixed $val
     * @return mixed
     */
    public function Path($val = null)
    {
        $prorp = self::$prorp;
        $prorp["value"] = $this->GetVal(__FUNCTION__, $val);
        $name = $this->GetName(__FUNCTION__);
        return new FormRender(new Textbox("Path", $name, $prorp));
    }

    /**
     *
     * @param mixed $val
     * @return mixed
     */
    public function Link($val = null)
    {
        $prorp = self::$prorp;
        $prorp["value"] = $this->GetVal(__FUNCTION__, $val);
        $name = $this->GetName(__FUNCTION__);
        return new FormRender(new Textbox("Link", $name, $prorp));
    }

    /**
     *
     * @param mixed $val
     * @return mixed
     */
    public function Serial($val = null)
    {
        $prorp = self::$prorp;
        $prorp["value"] = $this->GetVal(__FUNCTION__, $val);
        $name = $this->GetName(__FUNCTION__);
        return new FormRender(new Textbox("STT", $name, $prorp));
    }
}
