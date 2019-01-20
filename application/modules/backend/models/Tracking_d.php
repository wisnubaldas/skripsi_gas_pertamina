<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use \Illuminate\Database\Eloquent\Model as Eloquent;
class Tracking_d extends Eloquent {

		protected $table = 'tracking_d';
	    protected $primaryKey = 'id';
	    // protected $connection = 'tracking';
	    public function __construct()
	    {
	        parent::__construct();
	    }
	    public function header()
	    {
	    	 return $this->belongsTo('tracking_h','id', 'id');
	    }

}

/* End of file Tracking_d.php */
/* Location: ./application/modules/backend/models/Tracking_d.php */