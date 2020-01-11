<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class DistribusiGasController extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Distribusi_model');
        $this->load->model('Couriers');
        $this->load->model('Customers');
        $this->load->model(['Pengisian_model'=>'t_pengisian']);
    }
    
    public function index()
    {
        return $this->blade_view->render('shops.distribusi.index',$this->atribute());
    }
    
    public function create()
    {
        return $this->blade_view->render('shops.distribusi.create',$this->atribute());
    }

    public function store()
    {
        $jsonArray = json_decode(file_get_contents('php://input'),true); 
        $data = [];
        foreach ($jsonArray['params'] as $v) {
            $data[$v['name']] = $v['value'];
        }
        $save = new Distribusi_model;
        $chek = $save::where('t_pengisian_id','=',$data['t_pengisian_id'])->first();
        if(!$chek)
        {
            $save->pangkalan_id = $data['pangkalan_id'];
            $save->rumahtangga = $data['rumahtangga'];
            $save->t_pengisian_id = $data['t_pengisian_id'];
            $save->ukm = $data['ukm'];
            $save->other = $data['other'];
            $save->save();
            // update status
            $update = Pengisian_model::find($data['t_pengisian_id']);
            $update->status = "complete";
            $update->save();
            if($save->id)
            {
                $arr = [
                        'status'=>'sukses insert data',
                        'message'=>'data berhasil di insert ya',
                        't_pengisian_id'=> $data['t_pengisian_id']
                        ];
                
                header('Content-Type: application/json');
                echo json_encode($arr);
                return true;
            }
        }
        return show_error('tidak dapat insert',500);
    }

    public function detail_distribusi($data)
    {
        
        return $this->blade_view->render('shops.distribusi.detail');
    }
    protected function atribute()
    {
        $data['pengisian'] = $this->t_pengisian::where('status','=','proses')->get();
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
