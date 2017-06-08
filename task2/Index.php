<?php

class Product
{
    const DEFAULT_COLOR = 'black';
    const DEFAULT_SIZE = 'S';

    private $_color;
    private $_size;
    private $_price;
    private $_discount;

    function __construct($price, $discount = 0, $color = self::DEFAULT_COLOR, $size = self::DEFAULT_SIZE)
    {
        $this->_price = $price;
        $this->_color = $color;
        $this->_size = $size;
        $this->_discount = $discount;
    }

    /**
     * @return string
     */
    public function getColor()
    {
        return $this->_color;
    }

    /**
     * @param string $color
     */
    public function setColor($color)
    {
        $this->_color = $color;
    }

    /**
     * @return string
     */
    public function getSize()
    {
        return $this->_size;
    }

    /**
     * @param string $size
     */
    public function setSize($size)
    {
        $this->_size = $size;
    }

    /**
     * @return integer
     */
    public function getPrice()
    {
        return $this->_price;
    }

    /**
     * @param mixed $price
     */
    public function setPrice($price)
    {
        $this->_price = $price;
    }

    /**
     * @return integer
     */
    public function getDiscount()
    {
        return $this->_discount;
    }

    /**
     * @param int $discount
     */
    public function setDiscount($discount)
    {
        $this->_discount = $discount;
    }

}

class Order
{
    private $_product;
    /**
     * @var integer $_quantity
     */
    private $_quantity;

    function __construct(Product $product, $quantity)
    {
        $this->_product = $product;
        $this->_quantity = $quantity;
    }

    /**
     * returns full price of product with specified attributes
     *
     * @return double
     */
    public function getFullPrice()
    {
        $price = $this->_product->getPrice() * $this->_quantity;
        if ($this->_quantity > 1) {
            $price -= $this->_quantity - 1;
        }
        if ($this->_product->getSize() != Product::DEFAULT_SIZE) {
            $price += 2;
        }
        if ($this->_product->getColor() != Product::DEFAULT_COLOR) {
            $price += 5;
        }
        $price *= 1 - ($this->_product->getDiscount() / 100);

        return $price;
    }

}