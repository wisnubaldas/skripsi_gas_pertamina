@extends('index')

@section('konten')
	<div class="page-content">
        <!-- BEGIN PAGE HEADER-->
        <!-- BEGIN PAGE BAR -->
        <div class="page-bar">
            <ul class="page-breadcrumb">
                <li>
                    <a href="{{ route('home') }}">Home</a>
                    <i class="fa fa-circle"></i>
                </li>
                <li>
                    <span>Sending Satuan</span>
                </li>
            </ul>
            <div class="page-toolbar">
                <div id="dashboard-report-range" class="pull-right tooltips btn btn-sm" data-container="body" data-placement="bottom" data-original-title="Change dashboard date range">
                    <i class="icon-calendar"></i>&nbsp;
                    <span class="thin uppercase hidden-xs"></span>&nbsp;
                    <i class="fa fa-angle-down"></i>
                </div>
            </div>
        </div>
        <!-- END PAGE BAR -->
        <!-- BEGIN PAGE TITLE-->
        <h1 class="page-title"> Form Upload 
            <small>data excel sesuai dengan template yang sudah di tentukan</small>
        </h1>
        <!-- END PAGE TITLE-->
        <!-- END PAGE HEADER-->
        <form action="{{ route('multi') }}" class="dropzone dropzone-file-area" id="my-dropzone" style="width: 500px; margin-top: 50px;">
	        <h3 class="sbold">Drop files here or click to upload</h3>
	        <p> Tempat upload file excelnya. </p>
	    </form>
    </div>
@endsection
@section('css')
<link href="{{base_url('assets/global/plugins/dropzone/dropzone.min.css')}}" rel="stylesheet" type="text/css" />
<link href="{{base_url('assets/global/plugins/dropzone/basic.min.css')}}" rel="stylesheet" type="text/css" />
@endsection
@section('js')
<script src="{{base_url('assets/global/plugins/dropzone/dropzone.min.js')}}" type="text/javascript"></script>
@endsection
@section('app')
<script src="{{base_url('assets/apps/scripts/sending.js')}}" type="text/javascript"></script>
@endsection