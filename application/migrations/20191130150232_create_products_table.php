<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_create_products_table extends CI_Migration
{
    public function up()
    {
        try {
            $this->db->query("DROP TABLE IF EXISTS products;");
            $this->db->query("
            CREATE TABLE products (
                id int(11) NOT NULL auto_increment,
                products_type int(4) NOT NULL default 0,
                products_quantity int(4) NOT NULL default 1,
                products_moq int(11) NOT NULL default 1,
                products_max_order_quantity int(11) NOT NULL default -1,
                products_price decimal(15,4) NOT NULL,
                products_sku varchar(64) NOT NULL,
                products_model varchar(64) NOT NULL,
                products_date_added datetime NOT NULL,
                products_last_modified datetime default NULL,
                products_date_available datetime default NULL,
                products_weight decimal(5,2) NOT NULL,
                products_weight_class int(11) NOT NULL,
                products_status tinyint(1) NOT NULL,
                products_tax_class_id int(11) NOT NULL,
                manufacturers_id int(11) default NULL,
                products_ordered int(11) NOT NULL default '0',
                quantity_discount_groups_id int(11) default NULL,
                quantity_unit_class int(11) NOT NULL,
                order_increment int(11) NOT NULL default 1,
                products_attributes_groups_id int(11) default NULL,
                PRIMARY KEY  (id),
                KEY idx_products_date_added (products_date_added)
              ) ENGINE=MyISAM DEFAULT CHARSET=utf8;
            ");
        } catch (\Throwable $th) {
            echo 'Message: ' .$th->getMessage();
        }
    }

    public function down()
    {
        $this->db->query('DROP TABLE products;');
    }
}