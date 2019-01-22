<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use \Illuminate\Database\Eloquent\Model as Eloquent;

class Tracking_d extends Eloquent {
		protected $table = 'tracking_d';
	    protected $primaryKey = 'id';
	    // protected $connection = 'tracking';
	    // protected $fillable = ['hawb','awb','host_name','airline_prefix','partial_pieces','weight','pieces','flight_number','flag','shipper'];
		public $timestamps = false; // or even not used at all
	   protected $guarded = [];

	   public function header()
	    {
	        return $this->belongsTo('tracking_h','id', 'id');
	    }
}

/* End of file Tracking_d.php */
/* Location: ./application/modules/front/models/Tracking_d.php */