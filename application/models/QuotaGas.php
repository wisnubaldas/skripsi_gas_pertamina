<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
use Illuminate\Database\Eloquent\Model;

class QuotaGas extends Model {

    public $timestamps = false;
    public $kolom = ['id','tgl','composisi','satuan','ket','status'];
    protected $table = 'quota_gases';
    public function __construct()
    {
        parent::__construct();
        
    }
}

/* End of file QuotaGas.php */
