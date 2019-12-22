<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use Faker\Factory as Faker;
class Migration_create_customer_table extends CI_Migration
{
    public function up()
    {
        
        try {
                
            $this->db->query("DROP TABLE IF EXISTS customers");
            $this->db->query("CREATE TABLE customers (
                id int(11) NOT NULL auto_increment,
                company text(200) NOT NULL,
                user_id int(11) default NULL,
                groups_id int(11) default NULL,
                gender char(1) default NULL,
                firstname varchar(32) NOT NULL,
                lastname varchar(32) NOT NULL,
                dob datetime default NULL,
                email_address varchar(96) NOT NULL,
                default_address text(200) default NULL,
                telephone varchar(32) default NULL,
                fax varchar(32) default NULL,
                newsletter char(1) default NULL,
                status int(1) default '0',
                ip_address varchar(15) default NULL,
                credits decimal(15,4) default '0',
                date_last_logon datetime default NULL,
                number_of_logons int(5) default NULL,
                date_account_created datetime default NULL,
                date_account_last_modified datetime default NULL,
                PRIMARY KEY  (id)
            ) ENGINE=MyISAM DEFAULT CHARSET=utf8");

        // create data dummy
        for ($i=0; $i < 20; $i++) { 
            $this->generateData();
        }
        
        } catch (\Throwable $th) {
            echo 'Message: ' .$th->getMessage();
        }
        
    }

    public function down()
    {
        $this->db->query("DROP TABLE IF EXISTS customers");
    }

    protected function generateData()
    {
        $faker = Faker::create('id_ID');
        $company = $faker->company; 
        $user_id = 1; 
        $groups_id = 1; 
        $gender = $faker->randomElement(['m','f']); 
        $firstname = $faker->firstName; 
        $lastname = $faker->lastName; 
        $dob = date('Y-m-d H:i:s',strtotime('now')); 
        $email_address = $firstname.'@'.$faker->freeEmailDomain; 
        $default_address = 'Jl.'.$faker->streetName.', '.$faker->address;
        $telephone = $faker->e164PhoneNumber; 
        $fax = $faker->PhoneNumber;
        $newsletter = 1; 
        $status = 1; 
        $ip_address = $faker->ipv4; 
        $credits = $faker->numberBetween(100000,900000); 
        $date_last_logon = date('Y-m-d H:i:s',strtotime('now'));
        $number_of_logons = 1; 
        $date_account_created = date('Y-m-d H:i:s',strtotime('now'));
        $date_account_last_modified = date('Y-m-d H:i:s',strtotime('now'));
        $this->db->query("
            INSERT INTO `customers`(`company`,`user_id`, `groups_id`, `gender`, `firstname`, `lastname`, `dob`, `email_address`, `default_address`, `telephone`, `fax`, `newsletter`, `status`, `ip_address`, `credits`, `date_last_logon`, `number_of_logons`, `date_account_created`, `date_account_last_modified`) VALUES 
            (
            '{$company}',
            '{$user_id}', 
            '{$groups_id}',
            '{$gender}',
            '{$firstname}', 
            '{$lastname}',
            '{$dob}', 
            '{$email_address}', 
            '{$default_address}', 
            '{$telephone}', 
            '{$fax}', 
            '{$newsletter}', 
            '{$status}', 
            '{$ip_address}', 
            '{$credits}', 
            '{$date_last_logon}', 
            '{$number_of_logons}', 
            '{$date_account_created}', 
            '{$date_account_last_modified}')
            ");
    }
}