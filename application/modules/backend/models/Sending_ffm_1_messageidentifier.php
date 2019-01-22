<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use \Illuminate\Database\Eloquent\Model as Eloquent;
class Sending_ffm_1_messageidentifier extends Eloquent {
		protected $table = 'sending_ffm_1_messageidentifier';
	    protected $primaryKey = 'id';
	    protected $connection = 'tracking';
	    public function __construct()
	    {
	        parent::__construct();
	    }
	    public function bulk()
	    {
	        return $this->hasOne('sending_ffm_4_bulkloadedcargo','MessageKey', 'MessageKey');
	    }
	

}

/* End of file Sending_ffm_1_messageidentifier.php */
/* Location: ./application/modules/backend/models/Sending_ffm_1_messageidentifier.php */