<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
use Illuminate\Database\Eloquent\Model;
class Products extends Model {
    public $timestamps = false;
    public function __construct()
    {
        parent::__construct();
    }
}

/* End of file Couriers.php */
