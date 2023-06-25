<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Model;

/**
 * Description of CategoryService
 *
 * @author MSI
 */
class CategoryService extends DB implements IModel
{

    const TableName = "categories";

    public function __construct()
    {
        DB::$TableName = table_prefix . self::TableName;
        parent::__construct();
    }

    //put your code here
    public function Delete($id)
    {
        $where = "`catID` = '{$id}' ";
        $this->UpdateDB($where);
    }

    public function GetAllPT($name, $indexpage, $pageNumber, &$total)
    {
        $where = "`catId` like '%$name%' or `catName` like '%$name%'";
        return $this->SelectPT($where, $indexPage, $pageNumber, $total);
    }

    public function GetById($id)
    {
        $where = "`catId` = '{$id}'";
        $this->SelectRow($where);
    }

    public function Post($model)
    {
        $this->Insert($model);
    }

    public function Put($model)
    {
        $where = "`catId` = '{$model["catId"]}'";
        $this->Update($model, $where);
    }

    public static function ToSelect()
    {
        $cs = new CategoryService();
        return $cs->GetToSelect('1', ["catID", "catName"]);
    }
}
