<?php

namespace Model;

interface IModel {

    public function Post($model);

    public function Put($model);

    public function Delete($id);

    public function GetById($id);

    public static function ToSelect();

    public function GetAllPT($name, $indexpage, $pageNumber, &$total);
}
