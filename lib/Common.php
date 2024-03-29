<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace lib;

/**
 * Description of Common
 *
 * @author MSI
 */
class Common {

    //put your code here

    const DateVN = "d-m-Y H:i:s";
    const DateDB = "Y-m-d H:i:s";

    public static function ToUrl($url) {
        header("Location: " . $url);
    }

    public static function PhanTrang($TongTrang, $TrangHienTai, $DuongDan) {
        $PhanTrang = ' <ul class="pagination">';

        $tu = $TrangHienTai - 4;
        $den = $TrangHienTai + 4;
        $tu = $tu <= 0 ? 1 : $tu;
        if ($tu > 1) {
            $DuongDan1 = str_replace("[i]", 1, $DuongDan);
            $PhanTrang .= '<li><a href="' . $DuongDan1 . '"><<</a></li>';
        }
        if ($tu > 1) {
            $DuongDan1 = str_replace("[i]", $TrangHienTai - 1, $DuongDan);
            $PhanTrang .= '<li><a href="' . $DuongDan1 . '"><</a></li>';
        }

        $den = $den >= $TongTrang ? $TongTrang : $den;
        for ($i = $tu; $i <= $den; $i++) {
            $DuongDan1 = str_replace("[i]", $i, $DuongDan);
            if ($i == $TrangHienTai)
                $PhanTrang .= '<li class="active" ><a href="' . $DuongDan1 . '">' . $i . '</a></li>';
            else
                $PhanTrang .= '<li><a href="' . $DuongDan1 . '">' . $i . '</a></li>';
        }

        if ($den < $TongTrang) {
            $DuongDan1 = str_replace("[i]", $TrangHienTai + 1, $DuongDan);
            $PhanTrang .= '<li><a href="' . $DuongDan1 . '">></a></li>';
        }
        if ($den < $TongTrang) {
            $DuongDan1 = str_replace("[i]", $TongTrang, $DuongDan);
            $PhanTrang .= '<li><a href="' . $DuongDan1 . '">>></a></li>';
        }

        $PhanTrang .= '</ul>';
        return $PhanTrang;
    }

    static function bodautv($str) {
        if (!$str)
            return false;

        $str = str_replace(array(',', '<', '>', '&', '{', '}', "[", "]", '*', '?', '/', '+', '@', '%', '"'), array(' '), $str);
        $str = str_replace(array("'"), array(' '), $str);
        while (strpos($str, "  ") > 0) {
            $str = str_replace("  ", " ", $str);
        }
        $unicode = array(
            'a' => 'á|à|ả|ã|ạ|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ',
            'A' => 'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ằ|Ẳ|Ẵ|Ặ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',
            'd' => 'đ',
            'D' => 'Đ',
            'e' => 'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
            'E' => 'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',
            'i' => 'í|ì|ỉ|ĩ|ị',
            'I' => 'Í|Ì|Ỉ|Ĩ|Ị',
            'o' => 'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
            'O' => 'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',
            'u' => 'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
            'U' => 'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',
            'y' => 'ý|ỳ|ỷ|ỹ|ỵ',
            'Y' => 'Ý|Ỳ|Ỷ|Ỹ|Ỵ'
        );
        foreach ($unicode as $khongdau => $codau) {
            $str = preg_replace("/($codau)/i", $khongdau, $str);
        }
        $str = strtolower($str);
        $str = trim($str);
        $str = preg_replace('/[^a-zA-Z0-9\ ]/', '', $str);
        $str = str_replace(" ", "-", $str);
        return $str;
    }

    public static function MoneyFomat($a) {
        if ($a > 0)
            return number_format($a, 0, '.', ',') . " đ";
        return "Liên Hệ";
    }

    public static function NumberFomat($a) {
        return number_format($a, 0, '.', ',');
    }

    public static function DateFomat($param0) {
        return date(self::DateVN, strtotime($param0));
    }

    public static function DateFomatDB($param0 = null) {
        if ($param0 == null)
            return date(self::DateDB, time());
        return date(self::DateDB, strtotime($param0));
    }

}
