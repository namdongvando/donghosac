<?php

namespace theme\dongho;

class Breadcrumb extends \Model\Breadcrumb {

    function ToHtml() {
        $a = self::$List;
        ob_start();
        ?>
        <div class="breadcrumb">
            <div class="container flex breadcrumb-wrapper">
                <h1 class="page-title"><?php echo self::$Title; ?></h1>
                <ul class="pathway flex">
                    <li><a href="/">Trang Chủ</a></li>
                    <?php
                    foreach ($a as $value) {
                        ?>
                        <li><a href="<?php echo $value["link"] ?>"><?php echo $value["title"] ?></a></li>
                        <?php
                    }
                    ?>
                </ul>
            </div>
        </div>
        <?php
        return ob_get_clean();
    }

}
