<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

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
		
	}
	public function destroy($id)
	{
		$this->Pangkalan->where('id',$id)->delete();
		$this->session->set_flashdata('msg', 'Sukses delete data');
		redirect($_SERVER['HTTP_REFERER']);
	}

	public function edit($id)
	{
		
	}
	
	public function grid()
    {
        $j = $this->griddata
                ->field(['id','company','address','phone','ket','type'])
				->table('pangkalan')
                ->add('action',function($data){
                	$btn = '<div class="btn-group">';
                    $btn .= '<a href="'. route('pangkalan.edit',$data['id']).'" class="btn btn-warning btn-xs m-b-2">Edit</a>';
                    $btn .= '<a href="'.route('pangkalan.destroy',$data['id']).'" class="btn btn-danger btn-xs m-b-2">Delete</a>';
                    $btn .= '</div>';
                    return $btn;
                })
				->hide('ket')
                ->generate();
        $this->output
                ->set_content_type('application/json')
                ->set_output($j);
    }

}

/* End of file PangkalanController.php */
