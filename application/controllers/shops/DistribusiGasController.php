<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class DistribusiGasController extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Distribusi_model');
        $this->load->model('Couriers');
        $this->load->model('Customers');
        
    }
    
    public function index()
    {
        return $this->blade_view->render('shops.distribusi.index',$this->atribute());
    }
    
    public function create()
    {
        return $this->blade_view->render('shops.distribusi.create',$this->atribute());
    }

    protected function atribute()
    {
        $data['pangkalan'] = $this->Customers->all();
        $data['tabel'] = $this->Distribusi_model->nama_tabel;
        $data['kolom'] = $this->Distribusi_model->kolom;
        $data['label'] = $this->data_label();
        return $data;
    }

    protected function data_label()
    {
        $data = [
            'title' => 'Distribusi Gas Pangkalan',
            'page_header' => (object) [
                'h5'=>'Distribusi',
                'p' => 'Pangkalan Gas',
            ],
            'panel_title' => 'Fuck you',
            'breadcrumb' => [
                'home','form','distribusi'
            ],
        ];
        return (object) $data;
    }

}

/* End of file DistribusiGasController.php */
