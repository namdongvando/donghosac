<?php

class Model_Seo {

    public static $Title;
    public static $des;
    public static $key;

    function __construct($param) {
        
    }

    static function setTitle($param) {
        self::$Title = $param;
    }

    static function getTitle() {
        return self::$Title;
    }

    static function setDes($param) {
        self::$des = $param;
    }

    static function getDes() {
        return self::$des;
    }

    static function setKey($param) {
        self::$key = $param;
    }

    static function getKey() {
        return self::$key;
    }

}

?>