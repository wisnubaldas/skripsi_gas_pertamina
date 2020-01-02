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
				'url' => route('master.customer'),
				'title' => 'Pangkalan'
			],[
				'url' => route('master.courier'),
				'title' => 'Angkutan Tabung Gas'
			],
			[
				'url' => route('user.index'),
				'title' => 'User Config'
			]
			]
		],
		[
			'icon' => 'fa fa-cubes',
			'title' => 'Form Transaction',
			'url' => 'javascript:;',
			'caret' => true,
			'sub_menu' => [
				[
					'url' => route('order'),
					'title' => 'Notif Gas Pertamina'
				],
				[
					'url' => route('pengisian'),
					'title' => 'Jadwal Pengisian Gas'
				],
				[
					'url' => route('distribusi.create'),
					'title' => 'Distribusi Gas Pangkalan'
				],
				[
					'url' => route('distribusi'),
					'title' => 'Notif Eceran Pangkalan'
				],
			]
		],
		[
			'icon' => 'fa fa-flag',
			'title' => 'Form Report',
			'url' => 'javascript:;',
			'caret' => true,
			'sub_menu' => [
				[
					'url' => '#',
					'title' => 'Rekap Gas Pertamina'
				],
				[
					'url' => '#',
					'title' => 'Distribusi Pangkalan'
				],
			]
		]
	]
];
