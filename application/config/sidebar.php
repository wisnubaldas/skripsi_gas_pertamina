<?php
$config['sidebar'] = [
    'menu' => [
	    [
			'icon' => 'fa fa-th-large',
			'title' => 'Master',
			'url' => 'javascript:;',
			'caret' => true,
			'sub_menu' => [[
				'url' => 'pos/barang',
				'title' => 'Barang'
			],[
				'url' => 'pos/merek',
				'title' => 'Merk'
			],
			[
				'url' => 'pos/kategori',
				'title' => 'Kategory'
			]]
		],
		[
			'icon' => 'fa fa-gift',
			'title' => 'Jualan',
			'url' => 'javascript:;',
			'caret' => true,
			'sub_menu' => [[
				'url' => 'pos/penjualan',
				'title' => 'Penjualan'
			]]
		]
	]
];
