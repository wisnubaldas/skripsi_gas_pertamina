<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use \Illuminate\Database\Eloquent\Model as Eloquent;
class Tracking_h extends Eloquent {
		protected $table = 'tracking_h';
	    protected $primaryKey = 'id';
	    // protected $connection = 'tracking';
	    protected $fillable = ['awb','smi','hawb','create_at'];
	    public function __construct()
	    {
	        parent::__construct();
	    }
	    public function detail()
	    {
	        return $this->hasOne('tracking_d','id', 'id');
	    }

}

/* End of file Tracking_h.php */
/* Location: ./application/modules/front/models/Tracking_h.php */