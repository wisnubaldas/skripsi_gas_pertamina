<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LandingController extends MX_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->barang = modules::load('pos/BarangController');
		$this->kategori = modules::load('pos/KategoryController');
		$this->merk = modules::load('pos/MerekController');
	}

	public function index()
	{
		$barang = json_decode($this->barang->all_barang()['data']);
		$kategori = json_decode($this->kategori->all_kategori()['data']);
		$merk = json_decode($this->merk->all_merk()['data']);
		$data['data'] = [
							"barang"=>$barang->recordsTotal,
							"kategori"=>$kategori->recordsTotal,
							"merk"=>$merk->recordsTotal
						];
		$this->blade_view->render('landing',$data);
	}

}

/* End of file LandingController.php */
/* Location: ./application/controllers/LandingController.php */