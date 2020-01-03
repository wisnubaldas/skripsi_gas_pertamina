<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
use Carbon\Carbon;

class NotifGasController extends CI_Controller {
    
    protected $fields;
    public function __construct()
    {
      parent::__construct();
      $this->load->model('QuotaGas');    
      $this->load->model('Couriers');
      $this->load->model('Pengisian_model');
      
    }
    
    public function index()
    {
      $kolom = $this->QuotaGas->kolom;
		  return $this->blade_view->render('shops.notif_gas.index',compact('kolom'));
    }

    public function create()
    {
        return $this->blade_view->render('shops.notif_gas.create');
    }
    
    public function destroy($id)
    {
      $this->QuotaGas->where('id',$id)->delete();
      $this->session->set_flashdata('msg', 'Sukses delete data');
      redirect($_SERVER['HTTP_REFERER']);
    }

    public function store()
    {
      $data = $this->input->post();
      $data['tgl'] = Carbon::parse($this->input->post('tgl'),'Asia/Jakarta');
      $data['satuan'] = 'KG';
      $this->QuotaGas->insert($data);
      redirect($_SERVER['HTTP_REFERER']);
    }
    
    public function grid()
    {
          $j = $this->griddata
                  ->field($this->QuotaGas->kolom)
                  ->table('quota_gases')
                  ->add('edit',function($data){
                    $parse = [
                      'id'=>$data['id'],
                      'tgl'=>$data['tgl'],
                      'composisi'=>$data['composisi']
                    ];
                      $action = '<div class="btn-group">';
                      if($data['status'] == 'complete')
                      {
                        $action .= '<a href="#" class="btn btn-sm btn-success m-b-2 disabled">Buat Jadwal</a>';
                      }else{
                        $action .= '<a href="'. route('notif_gas.create_pengisian',$parse).'" class="btn btn-sm btn-success m-b-2">Buat Jadwal</a>';
                      }
                      $action .= '<a href="#" onClick="destroy(`'.route('notif_gas.destroy',$data['id']).'`)" class="btn btn-sm btn-danger m-b-2">Hapus Notif</a>';
                      $action .= '</div>';
                      return $action;
                  })
          // ->hide('billing_name', 'billing_company', 'billing_street_address', 'payment_method')
          ->generate();
          $this->output
                  ->set_content_type('application/json')
                  ->set_output($j);
    }
    public function create_pengisian($id,$tgl,$composisi)
    {
      $label = (object)[
        'title' => 'Jadwal Pengisian Gas',
        'page_header' => (object) [
            'h5'=>'Jadwal',
            'p' => 'Pengisian Gas Pertamina berdasarkan tanggal notif',
        ],
        'panel_title' => 'List Jadwal',
        'breadcrumb' => [
            'home','form','jadwal'
          ],
      ];
      $data = (object)['tgl'=>$tgl,'id'=>$id,'composisi'=>$composisi];
      $courier = $this->Couriers::all()->map(function($d){ return ['id'=>$d->id,'text'=>$d->name]; });
      return $this->blade_view->render('shops.notif_gas.create_pengisian',compact('label','data','courier'));
    }
    public function store_pengisian()
    {
      $data = $this->input->post();
      $data['status'] = 'proses';
      $data['created_at'] = Carbon::parse('now','Asia/Jakarta');
      $idQuota = $data['id_quota_gas'];
      unset($data['id_quota_gas']);
      $this->Pengisian_model::insert($data);
      $qg = $this->QuotaGas::find($idQuota);
      // balikin kalo udah ngga ada kuota gas nya pertamina
      if($qg->composisi <= 0)
      {
        redirect(route('notif_gas.index'));
      }

      $sisa = ($qg->composisi - $data['composisi']);
      if($sisa <= 0)
      {
        $qg->status = 'complete';
      }else{
        $qg->status = 'proses';
      }
      $qg->composisi = $sisa;
      $qg->save();
      redirect(route('notif_gas.index'));
    }
}


/* End of file NotifGasController.php */
