<?php

Route::auth(FALSE);

Route::get('/', 'LandingController@index')->name('index');
Route::group('pos',['namespace' => 'pos','middleware' => ['SimpleAuthMiddleware']],function(){
	Route::resource('barang','BarangController');
	Route::resource('merek','MerekController');
	Route::resource('kategori','KategoryController');
	Route::resource('penjualan','PenjualanController');
});
Route::set('404_override', function(){
    show_404();
});
Route::set('translate_uri_dashes',FALSE);
