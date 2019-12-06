<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class OrderController extends CI_Controller {

    protected $fields;
    public function __construct()
	{
		parent::__construct();
	}
    
    public function index()
    {
		return $this->blade_view->render('shops.order.index');
    }

}

/* End of file OrderController.php */
