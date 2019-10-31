<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DashboardController extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		
	}

	public function index()
	{
		return $this->blade_view->render('template.dashboard-v2');
	}

}

/* End of file DashboardController.php */
/* Location: ./application/controllers/DashboardController.php */