<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use GuzzleHttp\Psr7;
use GuzzleHttp\Exception\RequestException;
use \Firebase\JWT\JWT;
class TrackingController extends MX_Controller
{

    public function __construct()
    {
        parent::__construct();
        // export model
        $this->load->model(['Sending_fwb_1_StandardMessageIndentification',
                            'Sending_fhl_1_standardmessageindentification',
                            'Sending_ffm_4_bulkloadedcargo','Sending_ffm_1_messageidentifier',
                            'Sending_fsu_rcs']);
        // import model
        $this->load->model(['Sending_fsu_rcf','Sending_fsu_dlv','Sending_fsu_awd','Sending_fsu_dis','Sending_fsu_nfd']);
    }

    
    /**
     * Index action
     */
    
    private function generate_key()
    {
        $token = [
                    'iss'=>'http://localhost/mau2/api-import',
                    'aud' => "http://localhost/mau2/api-import",
                    // "iat" => 1356999524,
                    // "nbf" => 1357000000
                ];
        $jwt = JWT::encode($token, 'baldas');
        return $jwt;
    }
    public function import()
    {
            $sekarang = date('Y-m-d H:i:s',strtotime('now'));
            $date = new DateTime('NOW');
            $date->modify('-4 day');
            $kemaren = $date->format('Y-m-d H:i:s');
        try {
            $respon = [];

            $rcf = Sending_fsu_rcf::select(['HostName','AirlinePrefix','AWBNumber','PartialNumberOfPieces','Weight','TotalNumberOfPieces','FlightNumber','MessageSent','create_at'])
                        ->whereBetween('create_at',[$kemaren,$sekarang])->limit(30);
            $dis = Sending_fsu_dis::select(['HostName','AirlinePrefix','AWBNumber','PartialNumberOfPieces','Weight','TotalNumberOfPieces','MessageSent','create_at'])
                        ->whereBetween('create_at',[$kemaren,$sekarang])->limit(30);
            $nfd = Sending_fsu_nfd::select(['HostName','AirlinePrefix','AWBNumber','PartialNumberOfPieces','Weight','TotalNumberOfPieces','MessageSent','create_at','ShipperName'])
                        ->whereBetween('create_at',[$kemaren,$sekarang])->limit(30);
            $awd = Sending_fsu_awd::select(['HostName','AirlinePrefix','AWBNumber','PartialNumberOfPieces','Weight','TotalNumberOfPieces','MessageSent','create_at','ShipperName'])
                        ->whereBetween('create_at',[$kemaren,$sekarang])->limit(30);
            $dlv = Sending_fsu_dlv::select(['HostName','AirlinePrefix','AWBNumber','PartialNumberOfPieces','Weight','TotalNumberOfPieces','MessageSent','create_at','ShipperName'])
                        ->whereBetween('create_at',[$kemaren,$sekarang])->limit(30);
            foreach ($rcf->get() as $v) {
                $respon[] = array_merge(['smi'=>'RCF'],$v->toArray());
            }
            foreach ($dis->get() as $v) {
                 $respon[] = array_merge($v->toArray(),['smi'=>'DIS']);
            }
            foreach ($nfd->get() as $v) {
                 $respon[] = array_merge($v->toArray(),['smi'=>'NFD']);
            }
            foreach ($awd->get() as $v) {
                 $respon[] = array_merge($v->toArray(),['smi'=>'AWD']);
            }
            foreach ($dlv->get() as $v) {
                 $respon[] = array_merge($v->toArray(),['smi'=>'DLV']);
            }
        } catch (Exception $e) {
            dump($e);
        }
        try {
             $client = new GuzzleHttp\Client();
             $res = $client->request('POST', 'http://localhost/mau2/api/'.$this->generate_key(), [
                        'body' => json_encode($respon)
                    ]);
            // echo $res->getStatusCode();
            // "200"
            // echo $res->getHeader('content-type');
            // 'application/json; charset=utf8'
            echo $res->getBody();
        } catch (RequestException $e) {
                if ($e->hasResponse()) {
                    echo Psr7\str($e->getResponse());
                }
        }
    }

    public function export()
    {
        try {
            $sekarang = date('Y-m-d H:i:s',strtotime('now'));
            $date = new DateTime('NOW');
            $date->modify('-4 day');
            $kemaren = $date->format('Y-m-d H:i:s');
            $respon = [];
            $rcs = Sending_fsu_rcs::select(['HostName','AirlinePrefix','AWBNumber','PartialNumberOfPieces','Weight','TotalNumberOfPieces','MessageSent','create_at'])->whereBetween('create_at',[$kemaren,$sekarang])->limit(50);
            $fhl = Sending_fhl_1_standardmessageindentification::select(['HostName','MessageKey','MessageSent','create_at'])->whereBetween('create_at',[$kemaren,$sekarang])->limit(50);
            $fwb = Sending_fwb_1_StandardMessageIndentification::select(['HostName','MessageKey','MessageSent','create_at'])->whereBetween('create_at',[$kemaren,$sekarang])->limit(50);

            $ffm = Sending_ffm_1_messageidentifier::select(['HostName','MessageKey','MessageSent','create_at'])
            ->with('bulk:MessageKey,AirlinePrefix,AWBSerialNumber,NumberOfPiecesOfTotalConsignmentPieces,Weight')
            ->whereBetween('create_at',[$kemaren,$sekarang])->limit(50);

            foreach ($rcs->get() as $v) {
                $respon[] = array_merge(['smi'=>'RCS'],$v->toArray());
            }
            foreach ($fhl->get() as $v) {
                $x = explode('-', $v->MessageKey);
                $AWBNumber = substr($x[0],3);
                $AirlinePrefix = substr($x[0],0,3);
                if (count($x) > 2) {
                    $hawb = implode('-',array_slice($x,1));
                }else{
                    $hawb = $x[1];
                }
                $smi = 'FHL';
                $HostName = $v->HostName;
                $create_at = $v->create_at;
                $MessageSent = $v->MessageSent;
                $respon[] = array_merge(compact('HostName','AWBNumber','AirlinePrefix','hawb','smi','MessageSent','create_at'));
            }
            foreach ($fwb->get() as $v) {
                $AWBNumber = substr($v->MessageKey,3);
                $AirlinePrefix = substr($v->MessageKey,0,3);
                $HostName = $v->HostName;
                $create_at = $v->create_at;
                $MessageSent = $v->MessageSent;
                $smi = 'FWB';
                $respon[] = array_merge(compact('HostName','AWBNumber','AirlinePrefix','smi','MessageSent','create_at'));
            }
            
            foreach ($ffm->get() as $v) {
                if($v->bulk !== null)
                {
                    $smi = 'FFM';
                    $HostName = $v->HostName;
                    $create_at = $v->create_at;
                    $MessageSent = $v->MessageSent;
                    $AWBNumber = isset($v->bulk->AWBSerialNumber)?$v->bulk->AWBSerialNumber:null;
                    $AirlinePrefix = isset($v->bulk->AirlinePrefix)?$v->bulk->AirlinePrefix:null;
                    $respon[] = array_merge(compact('HostName','AWBNumber','AirlinePrefix','smi','MessageSent','create_at'));
                }
            }
            
        } catch (Exception $e) {
            dump($e);
        }
         try {
             $client = new GuzzleHttp\Client();
            $res = $client->request('POST', 'http://localhost/mau2/api/'.$this->generate_key(), [
                        'body' => json_encode($respon)
                    ]);
            // echo $res->getStatusCode();
            // "200"
            // echo $res->getHeader('content-type');
            // 'application/json; charset=utf8'
            echo $res->getBody();
        } catch (RequestException $e) {
             if ($e->hasResponse()) {
                    echo Psr7\str($e->getResponse());
                }
        }
    }

}