<?php

require_once('Index.php');

$product = new Product(10, 10);
$order = new Order($product, 2);

echo $order->getFullPrice();