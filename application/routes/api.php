<?php

/**
 * API Routes
 *
 * This routes only will be available under AJAX requests. This is ideal to build APIs.
 */
Route::group('apis', ['namespace' => 'backend'], function(){
    Route::post('multi-file','sendingSatuan@upload_excel')->name('multi');
});
