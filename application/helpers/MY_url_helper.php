<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

if ( ! function_exists('asset_url')) {
    function asset_url(string $path) {
        return $path;
    }
}

if ( ! function_exists('sha_url')) {
    function sha_url(string $path) {
        $x = null;
        for ($i=0; $i < 5; $i++) { 
            $x .= hash('ripemd160', $path.date('Ymd','now'));
        }
        return $x;
    }
}
/* End of file MY_url_helper.php */
