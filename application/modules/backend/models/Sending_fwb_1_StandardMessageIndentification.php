<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use \Illuminate\Database\Eloquent\Model as Eloquent;
class Sending_fwb_1_StandardMessageIndentification extends Eloquent
{
	 	protected $table = 'Sending_fwb_1_StandardMessageIndentification';
	    protected $primaryKey = 'Noid';
	    protected $connection = 'tracking';
	    public function __construct()
	    {
	        parent::__construct();
	    }
	    public function bulk()
	    {
	        return $this->hasOne('sending_fsu_dis','AWBNumber', 'AWBNumber');
	    }
}