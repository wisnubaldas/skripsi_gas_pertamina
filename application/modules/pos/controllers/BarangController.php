<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BarangController extends MX_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->library('datatables');
	}
	public function all_barang()
	{
		$builder = $this->datatables
				  ->select('*')
				  ->from('barang');
  		$data['data'] = $this->datatables->generate('json');
  		return $data;
	}
	public function index()
	{

		$this->blade_view->render('pos.barang',$this->all_barang());
	}


}

/* End of file BarangController.php */
/* Location: ./application/modules/pos/controllers/BarangController.php */