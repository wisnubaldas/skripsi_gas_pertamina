<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class GridController extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        // $this->load->library('griddata');
    }
    
    public function customers()
    {
        $j = $this->griddata
                ->field(['id','user_id','gender','firstname'])
                ->table('customers')
                ->add('action',function($data){
                    return "<a href='=" . $data['id'] . "'>edit</a>";
                })
                ->add('delete',function($data){
                    return "<a href='=" . $data['id'] . "'>sdasd</a>";
                })
                ->generate();
                
        $this->output
                ->set_content_type('application/json')
                ->set_output($j);
    }

}

/* End of file GridController.php */
