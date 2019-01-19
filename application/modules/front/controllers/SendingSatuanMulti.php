<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use Philo\Blade\Blade;
class SendingSatuanMulti extends MX_Controller {
	public $views = APPPATH.'/modules/front/views';
	public $cache = APPPATH.'/cache/blade';
	public $blade;

	public function __construct()
	{
		parent::__construct();
		$this->blade = new Blade($this->views, $this->cache);
	}
	public function index()
	{
		echo $this->blade->view()->make('sendingmulti')->render();
	}

}

/* End of file SendingSatuanMulti.php */
/* Location: ./application/modules/front/controllers/SendingSatuanMulti.php */