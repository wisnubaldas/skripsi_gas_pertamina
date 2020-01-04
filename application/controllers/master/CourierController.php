<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class CourierController extends CI_Controller {

    public function __construct()
	{
		parent::__construct();
		$this->load->model('Couriers');
		$this->load->model('Users');
		$this->load->library('user_agent');
	}

	public function index()
	{
		$kolom = $this->Couriers->kolom;
		return $this->blade_view->render('master.courier.index',compact('kolom'));
	}
	public function create()
	{
		if ($this->input->server('REQUEST_METHOD') == 'GET'){
			$formInput = $this->Couriers->kolom;
			return $this->blade_view->render('master.courier.create',compact('formInput'));
		}
		else if ($this->input->server('REQUEST_METHOD') == 'POST'){
			$id = $this->Couriers->insert($this->input->post());
			if($id)
			{
				$this->session->set_flashdata('msg', 'Sukses memanjingkan data...!!');
			}
			redirect($_SERVER['HTTP_REFERER']);
		}
	}
	public function delete($id)
	{
		$this->Couriers->where('id',$id)->delete();
		$this->session->set_flashdata('msg', 'Sukses delete data');
		redirect($_SERVER['HTTP_REFERER']);
	}

	public function edit($id)
	{
		if ($this->input->server('REQUEST_METHOD') == 'GET'){
			$courier = $this->Couriers
					->find($id);
			$user = $this->Users::all();
			return $this->blade_view->render('master.courier.edit',compact('courier','user'));
		}
		else if ($this->input->server('REQUEST_METHOD') == 'POST'){
			$dd = $this->Couriers
						->where('id',$id)
						->update($this->input->post());
			if($dd){
				$this->session->set_flashdata('msg', 'Sukses update data');
			}
			redirect($_SERVER['HTTP_REFERER']);
		}
		
	}
	
	public function grid()
    {
        $j = $this->griddata
                ->field($this->Couriers->kolom)
				->table('couriers')
                ->add('action',function($data){
                	$btn = '<div class="btn-group">';
                    $btn .= '<a href="'. route('master.courier.edit',$data['id']).'" class="btn btn-sm btn-warning m-b-2">Edit</a>';
                    $btn .= '<a href="'.route('master.courier.delete',$data['id']).'" class="btn btn-sm btn-danger m-b-2">Delete</a>';
                    $btn .= '</div>';
                    return $btn;
				})
				->edit('users_id',function($d){
					$user = $this->Users::find($d['users_id']);
					return $user->first_name.' '.$user->last_name;
				})
				->hide('wrapping_message')->hide('firstname')->hide('lastname')->hide('email')
                ->generate();
        $this->output
                ->set_content_type('application/json')
                ->set_output($j);
    }
}

/* End of file CourierController.php */
