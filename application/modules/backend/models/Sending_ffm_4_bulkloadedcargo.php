<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use \Illuminate\Database\Eloquent\Model as Eloquent;
class Sending_ffm_4_bulkloadedcargo extends Eloquent {

		protected $table = 'sending_ffm_4_bulkloadedcargo';
	    protected $primaryKey = 'id';
	    protected $connection = 'tracking';
	    public function __construct()
	    {
	        parent::__construct();
	    }
	    public function ffm()
	    {
	        return $this->belongsTo('sending_ffm_1_messageidentifier','MessageKey', 'MessageKey');
	    }

}

/* End of file Sending_ffm_4_bulkloadedcargo.php */
/* Location: ./application/modules/backend/models/Sending_ffm_4_bulkloadedcargo.php */