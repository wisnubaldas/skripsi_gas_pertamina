<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_create_courier_table extends CI_Migration
{
    public function up()
    {
        try {
            $this->db->query("DROP TABLE IF EXISTS couriers");
            $this->db->query("
            CREATE TABLE couriers (
                id int(11) NOT NULL auto_increment,
                name varchar(64) NOT NULL,
                wrapping_message TEXT NOT NULL,
                firstname varchar(32) NOT NULL,
                lastname varchar(32) NOT NULL,
                email_address varchar(96) NOT NULL,
                telephone varchar(32) default NULL, 
                PRIMARY KEY  (id)
                ) ENGINE=MyISAM DEFAULT CHARSET=utf8
            ");
        } catch (\Throwable $th) {
            echo 'Message: ' .$th->getMessage();
        }
    }

    public function down()
    {
        $this->db->query("DROP TABLE couriers");
    }
}