<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PenjualanController extends MX_Controller {

	public function index()
	{
		$this->blade_view->render('pos.penjualan');
	}

}

/* End of file PenjualanController.php */
/* Location: ./application/controllers/PenjualanController.php */