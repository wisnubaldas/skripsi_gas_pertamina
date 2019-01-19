<?php

Route::get('/', 'homeController@index')->name('homepage');

Route::group('front', ['namespace' => 'front'], function(){
    Route::get('home','sendingSatuanMulti@index')->name('home');
    Route::get('sending','sendingSatuanMulti@index')->name('sending');
});

Route::set('404_override', function(){
    show_404();
});

Route::set('translate_uri_dashes',FALSE);
