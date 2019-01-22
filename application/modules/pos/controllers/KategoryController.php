<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class KategoryController extends MX_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('datatables');
	}
	public function index()
	{
		$this->blade_view->render('pos.kategory',$this->all_kategori());
	}
	public function all_kategori()
	{
		$builder = $this->datatables
				  ->select('*')
				  ->from('kategori_barang');
  		$data['data'] = $this->datatables->generate('json');
  		return $data;
	}

}

/* End of file KategoryController.php */
/* Location: ./application/modules/pos/controllers/KategoryController.php */