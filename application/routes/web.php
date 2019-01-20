<?php

Route::auth(FALSE);
Route::get('/', 'LandingController@index')->name('index');

// Route::group('front',['namespace' => 'front'],function(){
// 	Route::get('track','TrackingController@index')->name('track');
// 	Route::get('get_data','TrackingController@get_data');
// });

// Route::post('api/{token}','ApiController@index',['namespace' => 'backend']);

Route::set('404_override', function(){
    show_404();
});

Route::set('translate_uri_dashes',FALSE);
