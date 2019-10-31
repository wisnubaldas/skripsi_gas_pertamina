<?php
$config['sidebar'] = [
    'menu' => [
	    [
			'icon' => 'fa fa-th-large',
			'title' => 'Master',
			'url' => 'javascript:;',
			'caret' => true,
			'sub_menu' => [[
				'url' => '#',
				'title' => 'Barang'
			],[
				'url' => '#',
				'title' => 'Merk'
			],
			[
				'url' => '#',
				'title' => 'Kategory'
			]]
		],
		[
			'icon' => 'fa fa-gift',
			'title' => 'Jualan',
			'url' => 'javascript:;',
			'caret' => true,
			'sub_menu' => [[
				'url' => '#',
				'title' => 'Penjualan'
			]]
		]
	]
];
