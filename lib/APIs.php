<?php

namespace lib;

class APIs {

    function ArrayToApi($array) {
        $a = new \Model_Adapter();
        if ($array) {
            $a = json_encode($array, JSON_UNESCAPED_UNICODE);
            echo html_entity_decode($a);
        } else {
            echo "[]";
        }
    }

    public function ArrayToString($array) {
        $a = json_encode($array, JSON_UNESCAPED_UNICODE);
        return html_entity_decode($a);
    }

}
