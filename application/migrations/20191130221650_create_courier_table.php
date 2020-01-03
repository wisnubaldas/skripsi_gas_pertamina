<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use Faker\Factory as Faker;
class Migration_create_courier_table extends CI_Migration
{
    public function up()
    {
        $this->dbforge->drop_table('couriers',TRUE);
        try {
            $this->dbforge->add_field(array(
                'id' => array(
                        'type' => 'INT',
                        'constraint' => 100,
                        'unsigned' => TRUE,
                        'auto_increment' => TRUE
                ),
                'users_id' => array(
                    'type' => 'INT',
                    'constraint' => 100,
                    'unsigned' => TRUE,
                ),
                'name' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '100',
                ),
                'wrapping_message' => array(
                        'type' => 'TEXT',
                        'null' => TRUE,
                ),
                'firstname' => array(
                    'type' => 'VARCHAR',
                    'constraint' => '100',
                ),
                'lastname' => array(
                    'type' => 'VARCHAR',
                    'constraint' => '100',
                ),
                'email' => array(
                    'type' => 'VARCHAR',
                    'constraint' => '100',
                ),
                'phone' => array(
                    'type' => 'VARCHAR',
                    'constraint' => '100',
                ),
                'type_angkutan' => array(
                    'type' => 'VARCHAR',
                    'constraint' => '100',
                ),
        ));
        $this->dbforge->add_key('id', TRUE);
        $this->dbforge->add_key('users_id');
        $this->dbforge->create_table('couriers');

        // create data dummy
        for ($i=0; $i < 7; $i++) { 
            $this->generateData();
        }

        } catch (\Throwable $th) {
            echo 'Message: ' .$th->getMessage();
        }
    }

    public function down()
    {
        $this->dbforge->drop_table('couriers', TRUE);
    }

    protected function generateData()
    {
        $faker = Faker::create('id_ID');
        $users_id = 1;
        $name = $faker->name($gender = 'male'|'female');
        $wrapping_message = $faker->text($maxNbChars = 50);
        $firstname = $faker->firstname;
        $lastname = $faker->lastname;
        $email = $faker->email;
        $phone = $faker->e164PhoneNumber;
        $type_angkutan =$faker->randomElement($array = array ('motor','truk','box','becak','odong-odong'));
        $dd = compact('users_id','name','wrapping_message','firstname','lastname','email','phone','type_angkutan');
        $this->db->insert('couriers', $dd);
    }
}