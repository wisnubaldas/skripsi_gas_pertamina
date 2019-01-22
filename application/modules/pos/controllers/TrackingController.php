<?php

defined('BASEPATH') OR exit('No direct script access allowed');


class TrackingController extends MX_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model(['Tracking_d','Tracking_h']);
    }

    public function index()
    {
        $this->blade_view->render('front.tracking');
        $this->output->enable_profiler(TRUE);
    }
    public function get_data()
    {
    	$awb = $this->input->get('awb');
    	if($awb == '')
    	{
    		$this->output
                    ->set_status_header(500)
                    ->set_content_type('application/json')
                    ->set_output(json_encode(['error'=>'awb number harus di set']));
    	}
    	$data = Tracking_h::select(['id','awb','smi'])->where('awb',$awb)->with('detail')->groupBy('awb','smi')->get();
        $result = [];
        foreach ($data as $v) {
            switch ($v->smi) {
                case 'RCF':
                     $result[0] = $v->toArray();
                    break;
                case 'DIS':
                     $result[1] = $v->toArray();
                    break;
                case 'NFD':
                     $result[2] = $v->toArray();
                    break;
                case 'AWD':
                     $result[3] = $v->toArray();
                    break;
                case 'DLV':
                     $result[4] = $v->toArray();
                    break;
                case 'RCS':
                     $result[0] = $v->toArray();
                    break;
                case 'FHL':
                     $result[1] = $v->toArray();
                    break;
                case 'FWB':
                     $result[2] = $v->toArray();
                    break;
                case 'FFM':
                     $result[3] = $v->toArray();
                    break;
                default:
                    # code...
                    break;
            }
        }
        // sort($result);
        $this->output
                    ->set_status_header(200)
                    ->set_content_type('application/json')
                    ->set_output(json_encode($result));
    }

}