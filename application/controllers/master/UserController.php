<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class UserController extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        $this->load->library('Simple_auth');
        $this->load->model('Users');
        
    }
    
    public function index()
    {
		return $this->blade_view->render('master.user.index');
    }
    public function create()
    {
        return $this->blade_view->render('master.user.create');
    }
    public function store()
    {
        try {
            $this->simple_auth->createUser(
                $this->input->post() 
            );
            $this->session->set_flashdata('msg', 'Sukses insert data user');
            redirect(route('user.index'));
        } catch (\Throwable $th) {
            return show_error('error insert data',500);
        }
        
    }
    public function edit($id)
    {
        redirect($_SERVER['HTTP_REFERER']);
    }
    public function destroy($id)
    {
        $this->Users->find($id)->forceDelete();
        redirect($_SERVER['HTTP_REFERER']);
    }
    public function grid()
    {
        $j = $this->griddata
                ->field(['id','first_name','last_name','username','gender','email','role','active','created_at'])
                ->table('users')
                ->edit('active',function($d){
                    if($d['active'] == 1)
                    {
                        return '<a href="#" class="btn btn-lime btn-sm active btn-block">Active</a>';
                    }else{                        
                        return '<a href="#" class="btn btn-grey active btn-sm btn-block">Idle</a>';
                    }
                })
                ->edit('gender',function ($d)
                {
                    if ($d['gender'] == 'm') {
                        return '<a href="#" class="btn btn-info btn-sm active btn-block">Male</a>';
                    }else{
                        return '<a href="#" class="btn btn-purple btn-sm active btn-block">Female</a>';
                    }
                })
                ->add('action',function($data){
                	$btn = '<div class="btn-group">';
                    $btn .= '<a href="'. route('user.edit',$data['id']).'" class="btn btn-sm btn-warning m-b-2">Edit</a>';
                    $btn .= '<a onClick="destroy(`'.route('user.destroy',$data['id']).'`)" href="#" class="btn btn-sm btn-danger m-b-2">Delete</a>';
                    $btn .= '</div>';
                    return $btn;
                })
                ->generate();
        $this->output
                ->set_content_type('application/json')
                ->set_output($j);
    }

}

/* End of file UserController.php */
