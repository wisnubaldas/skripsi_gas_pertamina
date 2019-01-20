<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class SeederController extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
    }
    /**
     * Index action
     */
    public function index($name)
    {
        try {
            switch ($name) {
                  case 'menu':
                      $this->menu();
                      break;
                  default:
                      dd('--> '.$name.', ngga ada brow bikin dulu fungsi seedernya...!!!');
                      break;
              }
        } catch (Exception $e) {
            dump($e);
        }
      
    }
    private function menu()
    {
       $this->db->truncate('menus');
       $data = array(
                    array(
                            'title' => 'Menu1',
                            'module' => 'front',
                            'page_id' => 'Menu1Controller',
                            'url' => 'menu1',
                            'uri' => '#menu1',
                            'group_menu' => 0,
                            'parent_id' => 0,
                            'is_parent' => 1,
                            'show_menu' => 1,
                            'level' => 1   
                    ),
                     array(
                            'title' => 'Menu4',
                            'module' => 'front',
                            'page_id' => 'Menu4Controller',
                            'url' => 'menu4',
                            'uri' => '#menu4',
                            'group_menu' => 0,
                            'parent_id' => 0,
                            'is_parent' => 1,
                            'show_menu' => 1,
                            'level' => 1   
                    ),
                    array(
                            'title' => 'Menu2',
                            'module' => 'front',
                            'page_id' => 'Menu2Controller',
                            'url' => 'menu2',
                            'uri' => '#menu2',
                            'group_menu' => 0,
                            'parent_id' => 1,
                            'is_parent' => 0,
                            'show_menu' => 1,
                            'level' => 2 
                    ),
                     array(
                            'title' => 'Menu3',
                            'module' => 'front',
                            'page_id' => 'Menu3Controller',
                            'url' => 'menu3',
                            'uri' => '#menu3',
                            'group_menu' => 0,
                            'parent_id' => 1,
                            'is_parent' => 0,
                            'show_menu' => 1,
                            'level' => 3 
                    )
        );

        $this->db->insert_batch('menus', $data);
    }

}