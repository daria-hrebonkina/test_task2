<?php

function getNextArr($prevArr)
{
    $newLen = count($prevArr) + 9;
    $arr = [];
    for ($i = 0; $i < $newLen; $i++) {
        $q = 0;
        for ($j = 0; $j < 10; $j++) {
            if ($prevArr[$i - $j]) {
                $q += $prevArr[$i - $j];
                $arr[$i] = $q;
            }
        }
    }
    return $arr;
}

function luckyTickets($num) {
    $arr = [];
    $result = 0;
    for ($i = 0; $i < 10; $i++) {
        array_push($arr, 1);
    }
    for ($i = 0; $i < $num / 2 - 1; $i++) {
        $arr = getNextArr($arr);
    }
    foreach ($arr as $v) {
        $result += pow($v, 2);
    }
    return $result;
}
