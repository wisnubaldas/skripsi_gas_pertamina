<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use Carbon\Carbon;
use Faker\Factory as Faker;

class Migration_create_schedule_table extends CI_Migration
{
    public function up()
    {
        try {
            $this->dbforge->drop_table('schedules',TRUE);
            $this->dbforge->add_field(array(
                'id' => array(
                        'type' => 'INT',
                        'constraint' => 100,
                        'unsigned' => TRUE,
                        'auto_increment' => TRUE
                ),
                'tgl_schedules' => array(
                    'type' => 'DATE',
                ),
                'tgl_pickup' => array(
                    'type' => 'DATE',
                ),
                'transport' => array(
                    'type' => 'VARCHAR',
                    'constraint' => '100',
                ),
                'jml_tabung' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '100',
                ),
                'ket' => array(
                        'type' => 'TEXT',
                        'null' => TRUE,
                ),
                'status' => array(
                    'type' => 'VARCHAR',
                    'constraint' => '100',
                    'null' => TRUE,
                ),
            ));
            $this->dbforge->add_key('id', TRUE);
            $this->dbforge->create_table('schedules');
        
            // create data dummy
        // for ($i=0; $i < 20; $i++) { 
        //     $this->generateData($i);
        // }

        } catch (\Throwable $th) {
            echo 'Message: ' .$th->getMessage();
        }
    }

    public function down()
    {
        $this->dbforge->drop_table('schedules',TRUE);
    }
    protected function generateData($i)
    {
        $tgl = Carbon::now();
        // if($i > 0)
        // {
        //     $tgl = $tgl->subMonths($i);
        // }

        try {
            $faker = Faker::create('id_ID');
            $tgl = $tgl;
            $composisi = $faker->numberBetween($min = 100, $max = 500);
            $satuan = 'KG';
            $ket = 'dasdasdasdasdasdasd';
            $dd = compact('tgl',
            'composisi',
            'satuan',
            'ket');
            $this->db->insert('schedules', $dd);
        } catch (\Throwable $th) {
            dump($th);
        }
    }
}