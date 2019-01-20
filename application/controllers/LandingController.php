<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LandingController extends MX_Controller {
	public function __construct()
	{
		parent::__construct();
		 $this->config->load('sidebar');
	}

	public function index()
	{
		$this->blade_view->render('landing',$this->config->config['sidebar']);
	}

}

/* End of file LandingController.php */
/* Location: ./application/controllers/LandingController.php */