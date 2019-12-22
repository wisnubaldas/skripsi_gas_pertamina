<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class PengisianController extends CI_Controller {

    protected $fields;
    public function __construct()
    {
      parent::__construct();
      $this->load->model('Pengisian_model');
      $this->load->model('Couriers');
      $this->load->model('QuotaGas');
    }

    public function index()
    {   
        return $this->blade_view->render('shops.pengisian.index',$this->atribute());
    }
    public function create()
    {   
        if ($this->input->server('REQUEST_METHOD') == 'POST'){
            
                $this->form_validation->set_rules('tgl', 'tgl', 'required',
                        array('required' => 'You must provide a %s.')
                );
                $this->form_validation->set_rules('composisi', 'composisi', 'required|numeric',
                        array('required' => 'You must provide a %s.')
                );
                $this->form_validation->set_rules('courier_id', 'courier_id', 'required',
                        array('required' => 'You must provide a %s.')
                );
                if ($this->form_validation->run() == FALSE)
                    {
                        $this->session->set_flashdata('msg', ['status'=>500,'message'=>'Error memanjingkan data ndo,...!!']);
                    }
                else
                    {
                        $posan = $this->input->post();
                        $posan['tgl'] = date('Y-m-d',strtotime($posan['tgl']));
                        $data = array_merge($posan,['user_id'=>$this->simple_auth->user()->id]);
                        $id = $this->Pengisian_model->insert($data);
                        if($id)
                        {
                            $this->kurangin_stok_gas($posan['composisi'],$posan['tgl']);
                            $this->session->set_flashdata('msg', ['status'=>200,'message'=>'Sukses memanjingkan data ndo,...!!']);
                        }
                            redirect(route('pengisian'));
                    }
        } // end post
        $data = $this->atribute();
        $data['kurir'] = $this->Couriers->select(['name','id','email'])->get();
        return $this->blade_view->render('shops.pengisian.create',$data);
    }
    protected function atribute()
    {
        $data['label'] = $this->data_label();
        $data['biji'] = $this->Pengisian_model->biji();
        return $data;
    }

    protected function data_label()
    {
        $data = [
            'title' => 'Jadwal Pengisian Gas',
            'page_header' => (object) [
                'h5'=>'Jadwal',
                'p' => 'Pengisian Gas Pertamina',
            ],
            'panel_title' => 'List Jadwal',
            'breadcrumb' => [
                'home','form','jadwal'
            ],
        ];
        return (object) $data;
    }
    public function get_quota_gas()
    {
        $time = $this->input->post('tanggal');
        $date = strtotime($time);
        $x = $this->QuotaGas->whereYear('tgl','=',date('Y',$date))
                            ->whereMonth('tgl','=',date('m',$date))
                            ->get()
                            ->toJson();
        return $this->output
                    ->set_content_type('application/json')
                    ->set_status_header(200)
                    ->set_output($x);
    }
    public function grid()
    {
        $j = $this->griddata
                ->field($this->Pengisian_model->biji()->kolom)
                ->table($this->Pengisian_model->biji()->nama_tabel)
                ->edit('courier_id', function($data){
                    $courier = $this->Couriers->find($data['courier_id']);
                    if($courier)
                    {
                        return $courier->name;
                    }
                    return "No Courier Available crot";
                })
                ->edit('status', function($data){
                    if($data['status'] == null)
                    {
                        return 'No action';
                    }
                    return $data['status'];
                })
        ->hide('user_id')
        ->generate();
        $this->output
                ->set_content_type('application/json')
                ->set_output($j);
    }

    protected function kurangin_stok_gas($jml,$date)
    {
        $date = strtotime($date);
        $x = $this->QuotaGas->whereYear('tgl','=',date('Y',$date))
                    ->whereMonth('tgl','=',date('m',$date))
                    ->get();
        $jmlQuota = 0;
        $id = null;
        foreach ($x as $v) {
            if ($v->composisi != 0) {
                    $x = ($v->composisi - $jml);
                    if ($x > 0) {
                        $jmlQuota += $x;
                        $id = $v->id;
                    }
            }
        }
        $q = $this->QuotaGas->find($id);
        $q->composisi = $jmlQuota;
        $q->save();
    }
    public function user_check($str)
    {
        // dd($str)
            // if ($str == 'test')
            // {
            //         $this->form_validation->set_message('username_check', 'The {field} field can not be the word "test"');
            //         return FALSE;
            // }
            // else
            // {
            //         return TRUE;
            // }
    }

}

/* End of file PengisianController.php */
