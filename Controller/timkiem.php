<?php

class Controller_timkiem extends Controller_index {

    public $param;
    public $ViewTheme;
    public $Pages;
    public $News;

    function __construct() {
        parent::__construct();
        $this->param = $this->getParam();
        $this->Pages = new \Model\pages();
        $this->News = new \Model\news();
    }

    function index() {
        $bre = new Model\Breadcrumb();
        $abre[] = [
            "link" => "#"
            , "title" => "Tìm Kiếm"
        ];
        $bre->setBreadcrumb($abre);
        Model_Seo::$Title = "__Title___";
        Model_Seo::$des = "__Des___";
        Model_Seo::$key = "__Keyword___";
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "danhmuc");
    }

}
?>

