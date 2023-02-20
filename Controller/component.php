<?php

class Controller_component extends Controller_index {

    function index() {
        parent::__construct();
        return $this->AView([], Model_ViewTheme::get_viewthene());
    }

}
