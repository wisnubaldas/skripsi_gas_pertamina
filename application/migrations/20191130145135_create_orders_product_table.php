<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_create_orders_product_table extends CI_Migration
{
    public function up()
    {
        try {
            $this->db->query("DROP TABLE IF EXISTS orders_products;");
            $this->db->query("
            CREATE TABLE orders_products (
                id int(11) NOT NULL auto_increment,
                orders_id int(11) NOT NULL,
                products_id int(11) NOT NULL,
                products_type int(4) NOT NULL default 0,
                products_sku varchar(64) default NULL,
                products_name varchar(255) NOT NULL,
                products_price decimal(15,4) NOT NULL,
                final_price decimal(15,4) NOT NULL,
                products_tax decimal(7,4) NOT NULL,
                products_quantity int(2) NOT NULL,
                products_return_quantity int(2) NOT NULL,
                PRIMARY KEY  (id)
              ) ENGINE=MyISAM DEFAULT CHARSET=utf8;
            ");
        } catch (\Throwable $th) {
            echo 'Message: ' .$th->getMessage();
        }
    }

    public function down()
    {
        $this->db->query('DROP TABLE orders_products;');
    }
}