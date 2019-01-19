<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use Philo\Blade\Blade;

class HomeController extends MX_Controller
{
    
    public $views = APPPATH.'/views';
    public $cache = APPPATH.'/cache/blade';
    public $blade;
    public function __construct()
    {

        parent::__construct();
        $this->blade = new Blade($this->views, $this->cache);
        // modules::load('front/sendingSatuanMulti');
    }
    /**
     * Index action
     */
    public function index()
    {
       echo  $this->blade->view()->make('home',['tasks' => "sdasdasd"])->render();
    }

}