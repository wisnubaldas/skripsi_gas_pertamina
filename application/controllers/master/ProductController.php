<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class ProductController extends CI_Controller {
	protected $fields;
    public function __construct()
	{
		parent::__construct();
		$this->load->model('Products');
		$this->fields = $this->Products->kolom;
	}

	public function index()
	{
		$th = $this->fields;
		return $this->blade_view->render('master.product.index',compact('th'));
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

	public function edit($id)
	{
		if ($this->input->server('REQUEST_METHOD') == 'GET'){
			$field = $this->Products
					// ->select($this->fields)
					->find($id);
			return $this->blade_view->render('master.product.edit',compact('field'));
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
		
	}
	
	public function grid()
    {
        $j = $this->griddata
                ->field($this->fields)
				->table('products')
                ->add('edit',function($data){
                    return '<a href="'. route('product.edit',$data['id']).'" class="btn btn-sm btn-warning m-b-2">Edit</a>';
                })
                ->add('delete',function($data){
                    return '<a href="'.route('product.delete',$data['id']).'" class="btn btn-sm btn-danger m-b-2">Delete</a>';
				})
				// ->hide('lastname')
				->generate();
        $this->output
                ->set_content_type('application/json')
                ->set_output($j);
    }
}

/* End of file CourierController.php */
