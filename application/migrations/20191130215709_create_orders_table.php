<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_create_orders_table extends CI_Migration
{
    public function up()
    {
        try {
            $this->db->query("DROP TABLE IF EXISTS orders");
            $this->db->query("
                CREATE TABLE orders (
                id int(11) NOT NULL auto_increment,
                invoice_number varchar(10) default NULL,
                customers_id int(11) NOT NULL,
                customers_name varchar(64) NOT NULL,
                customers_company varchar(32) default NULL,
                customers_street_address varchar(64) NOT NULL,
                customers_suburb varchar(32) default NULL,
                customers_city varchar(32) NOT NULL,
                customers_postcode varchar(10) NOT NULL,
                customers_state varchar(32) default NULL,
                customers_state_code varchar(32) default NULL,
                customers_country varchar(64) NOT NULL,
                customers_country_iso2 char(2) NOT NULL,
                customers_country_iso3 char(3) NOT NULL,
                customers_telephone varchar(32) NOT NULL,
                customers_email_address varchar(96) NOT NULL,
                customers_address_format varchar(255) NOT NULL,
                customers_ip_address varchar(15) default NULL,
                delivery_name varchar(64) NOT NULL,
                delivery_company varchar(32) default NULL,
                delivery_street_address varchar(64) NOT NULL,
                delivery_suburb varchar(32) default NULL,
                delivery_city varchar(32) NOT NULL,
                delivery_postcode varchar(10) NOT NULL,
                delivery_state varchar(32) default NULL,
                delivery_zone_id int(11) NOT NULL,
                delivery_state_code varchar(32) default NULL,
                delivery_country_id int(11) NOT NULL,
                delivery_country varchar(64) NOT NULL,
                delivery_country_iso2 char(2) NOT NULL,
                delivery_country_iso3 char(3) NOT NULL,
                delivery_address_format varchar(255) NOT NULL,
                delivery_telephone varchar(32) NOT NULL,
                billing_name varchar(64) NOT NULL,
                billing_company varchar(32) default NULL,
                billing_street_address varchar(64) NOT NULL,
                billing_suburb varchar(32) default NULL,
                billing_city varchar(32) NOT NULL,
                billing_postcode varchar(10) NOT NULL,
                billing_state varchar(32) default NULL,
                billing_zone_id int(11) NOT NULL,
                billing_state_code varchar(32) default NULL,
                billing_country_id int(11) NOT NULL,
                billing_country varchar(64) NOT NULL,
                billing_country_iso2 char(2) NOT NULL,
                billing_country_iso3 char(3) NOT NULL,
                billing_address_format varchar(255) NOT NULL,
                billing_telephone varchar(32) NOT NULL,
                payment_method varchar(255) NOT NULL,
                payment_module varchar(255) NOT NULL,
                uses_store_credit tinyint(1) NOT NULL,
                store_credit_amount decimal(15,4) NOT NULL,
                last_modified datetime default NULL,
                date_purchased datetime default NULL,
                orders_status int(5) NOT NULL,
                customers_comment text,
                admin_comment text,
                orders_date_finished datetime default NULL,
                currency char(3) default NULL,
                currency_value decimal(14,6) default NULL,
                invoice_date datetime default NULL,
                tracking_no varchar(64) default NULL,
                gift_wrapping TINYINT(1) NOT NULL,
                wrapping_message TEXT NOT NULL, 
                PRIMARY KEY  (id)
                ) ENGINE=MyISAM DEFAULT CHARSET=utf8
            ");
        } catch (\Throwable $th) {
            echo 'Message: ' .$th->getMessage();
        }

    }

    public function down()
    {
        $this->db->query("DROP TABLE orders");
    }
}