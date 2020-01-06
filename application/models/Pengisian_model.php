<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
use Illuminate\Database\Eloquent\Model;
class Pengisian_model extends Model
{
    protected $table = 't_pengisian';
    protected $filable = ['id','created_at', 'tgl', 'composisi', 'courier_id', 'user_id', 'ket','status'];
    
    public function __construct()
    {
        parent::__construct();
    }
    public function biji()
    {
        $this->kolom = $this->filable;
        $this->nama_tabel = $this->table;
        return $this;
    }

}