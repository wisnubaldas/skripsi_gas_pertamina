<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
use Carbon\Carbon;
use Faker\Factory as Faker;
class PangkalanController extends CI_Controller {

    
    public function __construct()
	{
		parent::__construct();
		$this->load->model('Pangkalan');
		$this->load->library('user_agent');
	}

	public function index()
	{
		return $this->blade_view->render('master.pangkalan.index');
	}
	public function create()
	{
		$faker = Faker::create('id_ID');
		$data['no_reg'] = $faker->bothify('##???###??');
		return $this->blade_view->render('master.pangkalan.create',$data);
	}
	public function store()
	{
		$this->Pangkalan::insert($this->input->post());
		$this->session->set_flashdata('msg', 'Sukses insert data');
		redirect(route('pangkalan.index'));
	}
	public function destroy($id)
	{
		$this->Pangkalan->where('id',$id)->delete();
		$this->output
                ->set_content_type('application/json')
                ->set_output(json_encode(['message'=>'Sukes delete data']));
	}

	public function edit($id)
	{
		$data['pangkalan'] = $this->Pangkalan::find($id);
		return $this->blade_view->render('master.pangkalan.edit',$data);
	}
	
	public function grid()
    {
        $j = $this->griddata
                ->field(['id','no_reg','company','address','phone','ket','wilayah'])
				->table('pangkalan')
                ->add('action',function($data){
                	$btn = '<div class="btn-group">';
                    $btn .= '<a href="'. route('pangkalan.edit',$data['id']).'" class="btn btn-warning btn-sm m-b-2">Edit</a>';
                    $btn .= '<a onClick="destroy(`'.route('pangkalan.destroy',$data['id']).'`)" href="#" class="btn btn-sm btn-danger m-b-2">Delete</a>';
                    $btn .= '</div>';
                    return $btn;
                })
				->hide('ket')->hide('id')
                ->generate();
        $this->output
                ->set_content_type('application/json')
                ->set_output($j);
    }

}

/* End of file PangkalanController.php */
