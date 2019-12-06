<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use Faker\Factory as Faker;
use Bezhanov\Faker\ProviderCollectionHelper;
use Faker\Generator;
class Migration_create_products_table extends CI_Migration
{
    public function __construct() {
        $this->load->dbutil();
        $this->load->dbforge();
    }
    public function up()
    {
        try {
            
            $this->db->query("DROP TABLE IF EXISTS products");
            $this->db->query("CREATE TABLE products (
                id int(100) NOT NULL auto_increment,
                products_type int(4) default 0,
                products_quantity int(4) default 1,
                products_name varchar(100) default NULL,
                products_price varchar(15) NOT NULL,
                products_sku varchar(64) NOT NULL,
                products_model varchar(64) NOT NULL,
                products_date_added datetime NOT NULL,
                products_last_modified datetime default NULL,
                products_date_available datetime default NULL,
                products_weight varchar(5) NOT NULL,
                products_weight_class int(11) NOT NULL,
                products_status tinyint(1) NOT NULL,
                products_tax_class_id int(11) NOT NULL,
                manufacturers_id int(11) default NULL,
                products_ordered int(11) NOT NULL default '0',
                quantity_discount_groups_id int(11) default NULL,
                quantity_unit_class int(11) NOT NULL,
                PRIMARY KEY (id),
                KEY idx_products_date_added (products_date_added)
            ) ENGINE=MyISAM DEFAULT CHARSET=utf8;
            ");
            // create data dummy
            for ($i=0; $i < 100; $i++) { 
                $this->generateData();
            }

        } catch (\Throwable $th) {
            echo 'Message: ' .$th->getMessage();
        }
    }

    public function down()
    {
        $this->db->query("DROP TABLE IF EXISTS products");
    }
    protected function generateData()
    {
        $faker = Faker::create('id_ID');
        $faker2 = \Faker\Factory::create('id_ID');
        $faker2->addProvider(new \Bezhanov\Faker\Provider\Commerce($faker2));
        $faker2->addProvider(new \Bezhanov\Faker\Provider\Device($faker2));
        $products_name = $faker2->deviceModelName; 
        $products_type= $faker->randomDigit;
        $products_quantity = $faker->randomDigit;
        $products_price = $faker->numberBetween($min = 1000, $max = 9000);
        $products_sku = $faker2->deviceSerialNumber;
        $products_model = $faker2->promotionCode;
        $products_date_added = date('Y-m-d H:i:s',strtotime('now')); 
        $products_last_modified = date('Y-m-d H:i:s',strtotime('now')); 
        $products_date_available = date('Y-m-d H:i:s',strtotime('now')); 
        $products_weight= $faker->randomDigit;
        $products_weight_class= $faker->randomDigit;
        $products_status= 1; 
        $products_tax_class_id= $faker->randomDigit;
        $manufacturers_id = $faker->numberBetween($min = 1000, $max = 9000);
        $products_ordered= $faker->numberBetween($min = 1000, $max = 9000);
        $quantity_unit_class= 2;
        
        $ll = compact('products_name',
                        'products_type',
                        'products_quantity',
                        'products_price',
                        'products_sku',
                        'products_model',
                        'products_date_added',
                        'products_last_modified',
                        'products_date_available',
                        'products_weight',
                        'products_weight_class',
                        'products_status',
                        'products_tax_class_id',
                        'manufacturers_id',
                        'products_ordered',
                        'quantity_unit_class');
            $c = $this->db->insert('products', $ll);
    }
}