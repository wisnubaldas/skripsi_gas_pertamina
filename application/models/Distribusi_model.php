<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
use Illuminate\Database\Eloquent\Model;
class Distribusi_model extends Model
{
    protected $table = 't_distribusi';
    protected $filable = ['id', 'pangkalan_id', 'rumahtangga','t_pengisian_id','ukm','other'];
    public $timestamps = true;
    public $kolom;
    public $nama_tabel;
    public function __construct()
    {
        parent::__construct();
        $this->kolom = $this->filable;
        $this->nama_tabel = $this->table;
    }
}