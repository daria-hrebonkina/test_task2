<?php

$db = mysql_connect('127.0.0.1', 'root', '');
if (!$db) {
    die('Ошибка соединения: ' . mysql_error());
}
echo 'Успешно соединились';
mysql_select_db('task3');
$categories = mysql_query("SELECT * FROM  category");
if   (mysql_num_rows($categories) > 0){
    $cats = [];
    while($cat =  mysql_fetch_assoc($categories)){
        $cats_ID[$cat['id']][] = $cat;
        $cats[$cat['parent_id']][$cat['id']] =  $cat;
    }
}
/**
 * @param array $cats array with categories
 * @param integer $parent_id parent category id
 * @param bool $only_parent if true - full tree of categories, else - returns only categories with current parent_id
 * @return null|string
 */
function getCategories($cats, $parent_id, $only_parent = false){
    if(is_array($cats) and isset($cats[$parent_id])){
        $tree = '<ul>';
        if ($only_parent==false) {
            foreach ($cats[$parent_id] as $cat){
                $tree .= '<li>' . $cat['name'] . ' #' . $cat['id'];
                $tree .=  getCategories($cats, $cat['id']);
                $tree .= '</li>';
            }
        } elseif (is_numeric($only_parent)){
            $cat = $cats[$parent_id][$only_parent];
            $tree .= '<li>' . $cat['name'] . ' #' . $cat['id'];
            $tree .=  getCategories($cats, $cat['id']);
            $tree .= '</li>';
        }
        $tree .= '</ul>';
    }
    else return null;
    return $tree;
}

/**
 * @param integer $category_id id of category which have the films we need
 * @return string
 */
function getFilms($category_id)
{
    $films = mysql_query('SELECT `film`.`title` FROM `film` 
          LEFT JOIN `film_category` ON `film_category`.`film_id` = `film`.`id` 
          LEFT JOIN `category` ON `category`.`id` = `film_category`.`category_id`
          WHERE `category`.`id` = ' . $category_id);
    $filmsList = '<ul>';
    while ($film = mysql_fetch_assoc($films)) {
        $filmsList .= '<li>' . $film['title'] . '</li>';
    }
    $filmsList .= '</ul>';
    return $filmsList;
}


