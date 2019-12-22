@extends('template.layouts.default')

@section('title', 'MAP')

@section('content')
	{{-- <div class="map-content">
		<div class="btn-group map-btn pull-right">
			<button type="button" class="btn btn-inverse" id="map-theme-text">Default Theme</button>
			<button type="button" class="btn btn-inverse dropdown-toggle" data-toggle="dropdown">
			</button>
			<ul class="dropdown-menu" id="map-theme-selection">
				<li class="active"><a href="javascript:;" data-map-theme="default">Default</a></li>
				<li><a href="javascript:;" data-map-theme="flat">Flat</a></li>
				<li><a href="javascript:;" data-map-theme="turquoise-water">Turquoise Water</a></li>
				<li><a href="javascript:;" data-map-theme="icy-blue">Icy Blue</a></li>
				<li><a href="javascript:;" data-map-theme="cobalt">Cobalt</a></li>
				<li><a href="javascript:;" data-map-theme="old-dry-mud">Old Dry Mud</a></li>
				<li><a href="javascript:;" data-map-theme="dark-red">Dark Red</a></li>
			</ul>
		</div>
	</div> --}}
	<div class="map">
		<div id="google-map-default" class="height-full width-full"></div>
	</div>
@endsection

@push('css')
	<link href="{{base_url('/assets/plugins/jquery-jvectormap/jquery-jvectormap.min.css')}}" rel="stylesheet" />
@endpush

@push('scripts')
	{{-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNagMtWFXyL_l7oEk2HOEreMXZI5fCm94&sensor=false&callback=initMap"></script> --}}
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCApyk0QwI3JjB9CNmwU9x82W7hkcSHW7w&callback=initMap"
	type="text/javascript"></script>
	<script src="{{base_url('/assets/js/demo/map-google.demo.js')}}"></script>
	<script>
		$(document).ready(function() {
			MapGoogle.init();
		});
	</script>
@endpush