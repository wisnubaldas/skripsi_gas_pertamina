<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use \Illuminate\Database\Eloquent\Model as Eloquent;
class Sending_fsu_rcf extends Eloquent {
		protected $table = 'sending_fsu_rcf';
	    protected $primaryKey = 'Noid';
	    protected $connection = 'tracking';
	    public function __construct()
	    {
	        parent::__construct();
	    }
	
		public function sending_dis()
	    {
	        return $this->hasOne('sending_fsu_dis','AWBNumber', 'AWBNumber');
	    }
	    public function sending_nfd()
	    {
	        return $this->hasOne('sending_fsu_nfd','AWBNumber', 'AWBNumber');
	    }
	    public function sending_awd()
	    {
	        return $this->hasOne('sending_fsu_awd','AWBNumber', 'AWBNumber');
	    }
	    public function sending_dlv()
	    {
	        return $this->hasOne('sending_fsu_dlv','AWBNumber', 'AWBNumber');
	    }
}

/* End of file Sending_fsu_rcf.php */
/* Location: ./application/modules/backend/models/Sending_fsu_rcf.php */