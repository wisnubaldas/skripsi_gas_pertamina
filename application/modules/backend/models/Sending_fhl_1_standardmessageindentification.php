<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use \Illuminate\Database\Eloquent\Model as Eloquent;
class Sending_fhl_1_standardmessageindentification extends Eloquent
{
	 	protected $table = 'sending_fhl_1_standardmessageindentification';
	    // protected $primaryKey = 'Noid';
	    protected $connection = 'tracking';
	    public function __construct()
	    {
	        parent::__construct();
	    }
	    
}