<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
use Philo\Blade\Blade;

class MY_Exceptions extends CI_Exceptions
{
    public function show_error($heading, $message, $template = 'error_general', $status_code = 500)
	{
		$templates_path = config_item('error_views_path');
		if (empty($templates_path))
		{
			$templates_path = VIEWPATH.'errors'.DIRECTORY_SEPARATOR;
		}

		if (is_cli())
		{
			$message = "\t".(is_array($message) ? implode("\n\t", $message) : $message);
			$template = 'cli'.DIRECTORY_SEPARATOR.$template;
		}
		else
		{
			set_status_header($status_code);
			$message = '<p>'.(is_array($message) ? implode('</p><p>', $message) : $message).'</p>';
			$template = 'html'.DIRECTORY_SEPARATOR.$template;
		}

		if (ob_get_level() > $this->ob_level + 1)
		{
			ob_end_flush();
		}
		ob_start();
		$blade = new Blade(APPPATH.'views',APPPATH.'cache');
		// $blade->compile('errors.html.error_404');
		// dd($blade->view('errors.html.error_404'));
		// include($templates_path.$template.'.blade.php');
		echo '404';
		$buffer = ob_get_contents();
		ob_end_clean();
		return $buffer;
	}
}