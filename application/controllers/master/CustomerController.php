<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class CustomerController extends CI_Controller {

    public function __construct()
	{
		parent::__construct();
		$this->load->model('Customers');
		$this->load->library('user_agent');
	}

	public function index()
	{
		return $this->blade_view->render('master.customer.index');
	}
	public function create()
	{
		if ($this->input->server('REQUEST_METHOD') == 'GET'){
			$formInput = [
				'gender', 'firstname', 'lastname', 'dob', 'email_address', 'default_address', 'telephone', 'fax', 'newsletter', 'credits',
			];
			return $this->blade_view->render('master.customer.create',compact('formInput'));
		}
		else if ($this->input->server('REQUEST_METHOD') == 'POST'){
			$id = $this->Customers->insert($this->input->post());
			if($id)
			{
				$this->session->set_flashdata('msg', 'Sukses memanjingkan data...!!');
			}
			redirect($_SERVER['HTTP_REFERER']);
		}
	}
	public function delete($id)
	{
		$this->Customers->where('id',$id)->delete();
		$this->session->set_flashdata('msg', 'Sukses delete data');
		redirect($_SERVER['HTTP_REFERER']);
	}

	public function edit($id)
	{
		if ($this->input->server('REQUEST_METHOD') == 'GET'){
			$customer = $this->Customers
					->select(['id','gender','firstname','lastname','email_address','default_address','telephone','credits'])
					->find($id);
			return $this->blade_view->render('master.customer.edit',compact('customer'));
		}
		else if ($this->input->server('REQUEST_METHOD') == 'POST'){
			$dd = $this->Customers
						->where('id',$id)
						->update($this->input->post());
			if($dd){
				$this->session->set_flashdata('msg', 'Sukses update data');
			}
			redirect($_SERVER['HTTP_REFERER']);
		}
		
	}
	
	public function customersGrid()
    {
        $j = $this->griddata
                ->field(['id','firstname','lastname','email_address','default_address','telephone'])
				->table('customers')
                ->add('edit',function($data){
                    return '<a href="'. route('master.customer.edit',$data['id']).'" class="btn btn-sm btn-warning m-b-2">Edit</a>';
                })
                ->add('delete',function($data){
                    return '<a href="'.route('master.customer.delete',$data['id']).'" class="btn btn-sm btn-danger m-b-2">Delete</a>';
				})
				->hide('lastname')
                ->generate();
        $this->output
                ->set_content_type('application/json')
                ->set_output($j);
    }
}	

/* End of file Controllername.php */
