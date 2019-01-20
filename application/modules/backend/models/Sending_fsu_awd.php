<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use \Illuminate\Database\Eloquent\Model as Eloquent;
class Sending_fsu_awd extends Eloquent {

		protected $table = 'sending_fsu_awd';
	    protected $primaryKey = 'Noid';
	    protected $connection = 'tracking';
	    public function __construct()
	    {
	        parent::__construct();
	    }
		public function sending_rcf()
	    {
	        return $this->belongsTo('sending_fsu_rcf','AWBNumber', 'AWBNumber');
	    }
}

/* End of file Sending_fsu_awd.php */
/* Location: ./application/modules/backend/models/Sending_fsu_awd.php */