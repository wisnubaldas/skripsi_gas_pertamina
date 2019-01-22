<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MerekController extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('datatables');
	}
	public function index()
	{
		$this->blade_view->render('pos.merek',$this->all_merk());
	}
	public function all_merk()
	{
		$builder = $this->datatables
				  ->select('*')
				  ->from('merk_barang');
  		$data['data'] = $this->datatables->generate('json');
  		return $data;
	}

}

/* End of file MerekController.php */
/* Location: ./application/modules/pos/controllers/MerekController.php */