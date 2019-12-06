<?php
$config['sidebar'] = [
    'menu' => [
		[
			'icon' => 'fa fa-home',
			'title' => 'Home',
			'url' => base_url(),
		],
	    [
			'icon' => 'fa fa-th-large',
			'title' => 'Master',
			'url' => 'javascript:;',
			'caret' => true,
			'sub_menu' => [[
				'url' => '/master/customer',
				'title' => 'Customer'
			],[
				'url' => '/master/courier',
				'title' => 'Courier'
			],
			[
				'url' => '/master/product',
				'title' => 'Produk'
			]]
		],
		[
			'icon' => 'fa fa-gift',
			'title' => 'Jualan',
			'url' => 'javascript:;',
			'caret' => true,
			'sub_menu' => [[
				'url' => 'shops/order',
				'title' => 'Order'
			]]
		]
	]
];
