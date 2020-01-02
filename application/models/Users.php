<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
use Illuminate\Database\Eloquent\Model;

class Users extends Model {

    // public $timestamps = false;
    public $kolom = ['id',
                        'first_name',
                        'last_name',
                        'username',
                        'gender',
                        'email',
                        'password',
                        'role',
                        'active',
                        'verified'];
    protected $table = 'users';
    public function __construct()
    {
        parent::__construct();
        
    }
}

/* End of file QuotaGas.php */
