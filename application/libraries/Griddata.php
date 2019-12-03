<?php 
defined('BASEPATH') OR exit('No direct script access allowed');


use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
class Griddata
{
    protected $ci;
    protected $config;
    protected $field = false;
    // protected $table = false;
    protected $dt;
    public function __construct()
    {
        $this->ci =& get_instance();
        $config = [
                'host'     => env('DB_HOST'),
                'port'     => '3306',
                'username' => env('DB_USERNAME'),
                'password' => env('DB_PASSWORD'),
                'database' => env('DB_DATABASE') ];
        $this->dt = new Datatables( new MySQL($config) );
    }
    public function field(array $field = [])
    {
            $this->field = implode(",",$field);
            return $this;
    }
    public function table(string $table)
    {
        // if(!$this->table)
        // {
        //     $this->error('Datatables mana tablenya gan...???','Table harus di set');
        // }
        // if(!$this->field)
        // {
        //     $this->error('Datatables field harus array gan...???','Field harus di declare');
        // }
        try {
            $this->dt->query('Select '.$this->field.' from '.$table);
            return $this->dt;

        } catch (\Exception $th) {
            return show_error($th->getMessage().'<br>'.
            $th->getFile().'<br> <strong>Ada di Baris: '.$th->getLine().'</strong>'
            , 500, 'Error query datatable');
        }
    }
    
    protected function error($message,$head = 'Error')
    {
        return show_error($message, 500, $head);
    }

}


/* End of file GridData.php */
