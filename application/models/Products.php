<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use Ozdemir\Datatables\Datatables;
use Ozdemir\Datatables\DB\MySQL;
use Illuminate\Database\Eloquent\Model;
class Products extends Model {
    public $timestamps = false;
    public $kolom = ['id', 'products_type', 'products_quantity', 'products_name', 'products_price', 'products_sku', 'products_model', 'products_date_added', 'products_last_modified', 'products_date_available', 'products_weight', 'products_weight_class', 'products_status', 'products_tax_class_id', 'manufacturers_id', 'products_ordered', 'quantity_discount_groups_id', 'quantity_unit_class'];
    public function __construct()
    {
        parent::__construct();
    }
}

/* End of file Couriers.php */
