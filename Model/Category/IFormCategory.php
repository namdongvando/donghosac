<?php
namespace Model\Category;
interface IFormCategory
{
    function catID($val = null);
    function catName($val = null);
    function Note($val = null);
    function parentCatID($val = null);
    function banner($val = null,$prorp=[]);
    function Public ($val = null);
    function Path($val = null);
    function Link($val = null);
    function Serial($val = null);

}
