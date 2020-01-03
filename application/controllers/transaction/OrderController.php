<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
use Carbon\Carbon;

class OrderController extends CI_Controller {

    protected $fields;
    public function __construct()
    {
      parent::__construct();
      $this->load->model('QuotaGas');    
    }
    
    public function index()
    {
      
      $kolom = $this->QuotaGas->kolom;
		  return $this->blade_view->render('shops.order.index',compact('kolom'));
    }

    public function create()
    {
      if ($this->input->server('REQUEST_METHOD') == 'GET'){
        $formInput = $this->fields;
        return $this->blade_view->render('master.product.create',compact('formInput'));
      }
      else if ($this->input->server('REQUEST_METHOD') == 'POST'){
        $id = $this->Products->insert($this->input->post());
        if($id)
        {
          $this->session->set_flashdata('msg', 'Sukses memanjingkan data...!!');
        }
        redirect($_SERVER['HTTP_REFERER']);
      }
    }
    public function delete($id)
    {
      $this->Products->where('id',$id)->delete();
      $this->session->set_flashdata('msg', 'Sukses delete data');
      redirect($_SERVER['HTTP_REFERER']);
    }

    public function take($id)
    {
      if ($this->input->server('REQUEST_METHOD') == 'GET'){
        
        return $this->blade_view->render('shops.order.form');
      }
      else if ($this->input->server('REQUEST_METHOD') == 'POST'){
        $dd = $this->Products
              ->where('id',$id)
              ->update($this->input->post());
        if($dd){
          $this->session->set_flashdata('msg', 'Sukses update data');
        }
        redirect($_SERVER['HTTP_REFERER']);
      }
      dump('dasdasdsd');
      
    }
    
    public function grid()
      {
          $j = $this->griddata
                  ->field($this->QuotaGas->kolom)
          ->table('quota_gases')
                  ->add('edit',function($data){
                      $action = '<div class="btn-group">';
                      $action .= '<a href="'. route('order.take',$data['id']).'" class="btn btn-sm btn-primary m-b-2">Create Note</a>';
                      return $action;
                  })
                  
          // ->hide('billing_name', 'billing_company', 'billing_street_address', 'payment_method')
          ->generate();
          $this->output
                  ->set_content_type('application/json')
                  ->set_output($j);
      }
}

/* End of file OrderController.php */
