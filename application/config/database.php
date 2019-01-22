<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use Illuminate\Database\Capsule\Manager as Capsule;

$con = json_decode(file_get_contents('.env.json'),true);
$capsule = new Capsule;

$active_group = 'default';
$query_builder = TRUE;

for ($i=0; $i < count($con); $i++) { 
	$db[$con[$i]['group_name']] = array(
			'dsn'	=> '',
			'hostname' => $con[$i]['hostname'],
			'username' => $con[$i]['username'],
			'password' => $con[$i]['password'],
			'database' => $con[$i]['database'],
			'dbdriver' => 'mysqli',
			'dbprefix' => '',
			'pconnect' => FALSE,
			'db_debug' => (ENVIRONMENT !== 'production'),
			'cache_on' => FALSE,
			'cachedir' => '',
			'char_set' => 'utf8',
			'dbcollat' => 'utf8_general_ci',
			'swap_pre' => '',
			'encrypt' => FALSE,
			'compress' => FALSE,
			'stricton' => FALSE,
			'failover' => array(),
			'save_queries' => TRUE
		);

	$capsule->addConnection([
	    'driver'    => 'mysql',
	    'host'      => $con[$i]['hostname'],
	    'database'  => $con[$i]['database'],
	    'username'  => $con[$i]['username'],
	    'password'  => $con[$i]['password'],
	    'charset'   => 'utf8',
	    'collation' => 'utf8_general_ci',
	    'prefix'    => '',
	],$con[$i]['group_name']);
}

$capsule->setAsGlobal();
$capsule->bootEloquent();