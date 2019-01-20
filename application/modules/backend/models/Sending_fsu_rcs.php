<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use \Illuminate\Database\Eloquent\Model as Eloquent;
class Sending_fsu_rcs extends Eloquent {
		protected $table = 'sending_fsu_rcs';
	    protected $primaryKey = 'Noid';
	    protected $connection = 'tracking';
	    public function __construct()
	    {
	        parent::__construct();
	    }
	

}

/* End of file Sending_fsu_rcs.php */
/* Location: ./application/modules/backend/models/Sending_fsu_rcs.php */