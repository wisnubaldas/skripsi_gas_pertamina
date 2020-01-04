<?php
function sha_url(string $path) {
	$x = null;
	for ($i=0; $i < 5; $i++) { 
		$x .= hash('ripemd160', $path.date( "Y-m-d", strtotime("now")));
	}
	return $x;
}

Route::get('/', function(){
    redirect('/login');
});
// $this->encrypt->encode($msg);
Route::auth(FALSE);
Route::get('/homepage', 'DashboardController@index',['middleware' => ['SimpleAuthMiddleware']])->name('homepage');
Route::group('master',['namespace' => 'master','middleware' => ['SimpleAuthMiddleware']],function(){

	Route::group(sha_url('pangkalan'),function(){
		Route::resource('pangkalan','PangkalanController');
		Route::get('grid','PangkalanController@grid')->name('pangkalan.grid');
	});

	Route::get('customer','CustomerController@index')->name('master.customer');
	Route::get('customer/{id}/'.hash("gost", 'delete'),'CustomerController@delete')->name('master.customer.delete');
	Route::match(['GET', 'POST'],'customer/'.hash("gost", 'create'),'CustomerController@create')->name('master.customer.create');
	Route::match(['GET', 'POST'],'customer/{id}/'.hash("gost", 'edit'),'CustomerController@edit')->name('master.customer.edit');
	Route::get(hash("sha256", 'customers'),'CustomerController@customersGrid')->name('master.grid.customer');
	
	Route::group(sha_url('courier'), function(){
		Route::get('/','CourierController@index')->name('master.courier');
		Route::get('{id}/'.hash("gost", 'delete'),'CourierController@delete')->name('master.courier.delete');
		Route::match(['GET', 'POST'],'/'.hash("gost", 'create'),'CourierController@create')->name('master.courier.create');
		Route::match(['GET', 'POST'],'/{id}/'.hash("gost", 'edit'),'CourierController@edit')->name('master.courier.edit');
		Route::get(hash("sha256", 'couriercourier'),'CourierController@grid')->name('courier.grid');
	});
	
	Route::group(sha_url('product'), function(){
		Route::get(sha_url('/'),'ProductController@index')->name('product');
		Route::get('{id}/'.hash("gost", 'delete'),'ProductController@delete')->name('product.delete');
		Route::match(['GET', 'POST'],'/'.hash("gost", 'create'),'ProductController@create')->name('product.create');
		Route::match(['GET', 'POST'],'/{id}/'.hash("gost", 'edit'),'ProductController@edit')->name('product.edit');
		Route::get(hash("sha256", 'product'),'ProductController@grid')->name('product.grid');
	});
	Route::group(sha_url('user'), function(){
		Route::resource('user','UserController');
		Route::get('grid','UserController@grid')->name('user.grid');
	});
	
});

Route::group(sha_url('transaksi'),['namespace' => 'transaction','middleware' => ['SimpleAuthMiddleware']],function(){
	Route::group(sha_url('notif_gas'),function(){
		Route::resource('notif_gas','NotifGasController');
		Route::get('grid','NotifGasController@grid')->name('notif_gas.grid');
		Route::get('create_pengisian/{id}/{tgl}/{composisi}','NotifGasController@create_pengisian')->name('notif_gas.create_pengisian');
		Route::post('store_pengisian','NotifGasController@store_pengisian')->name('notif_gas.store_pengisian');
	});

	// Route::group('order', function()
	// {
	// 	Route::get('/','OrderController@index')->name('order');
	// 	Route::match(['GET', 'POST'],'/'.hash("gost", 'create'),'OrderController@create')->name('order.create');
	// 	Route::match(['GET', 'POST'],'/{id}/'.hash("gost", 'edit'),'OrderController@take')->name('order.take');
	// 	Route::get(hash("sha256", 'datatables'),'OrderController@grid')->name('order.grid');
	// });
	Route::group('pengisian',function(){
		Route::get('/','PengisianController@index')->name('pengisian');
		Route::get('grid','PengisianController@grid')->name('pengisian.grid');
		Route::match(['GET', 'POST'],'create/{any?}','PengisianController@create')->name('pengisian.create');
		Route::post('get_quota_gas','PengisianController@get_quota_gas')->name('pengisian.getQuota');

	});
	Route::group('distribusi',function()
	{
		Route::get('/','DistribusiGasController@index')->name('distribusi');
		Route::match(['GET', 'POST'],'create','DistribusiGasController@create')->name('distribusi.create');
	});
});

Route::set('404_override', function(){
    show_404();
});
Route::set('translate_uri_dashes',FALSE);
