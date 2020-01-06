@extends('template.layouts.default')

@section('title', 'Product Data')
@php
	$alert = false;
	if(ci()->session->flashdata('msg')){
		$alert = ci()->session->flashdata('msg');
	}
@endphp
	
@section('content')
	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
		<li class="breadcrumb-item"><a href="javascript:;">Page Options</a></li>
		<li class="breadcrumb-item active">Blank Page</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Products <small>header small text goes here...</small></h1>
	<!-- end page-header -->
	@if ($alert)
        <div class="note note-warning note-with-right-icon m-b-15" id="alert-update">
            <div class="note-icon"><i class="fa fa-lightbulb"></i></div>
            <div class="note-content text-right">
                <h4>
                    <b>{{$alert}}</b>
                </h4>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                    Maecenas id gravida libero. Etiam semper id sem a ultricies.
                </p>
            </div>
        </div>
    @endif
	<!-- begin panel -->
	<div class="panel panel-inverse">
		<div class="panel-heading">
			<div class="panel-heading-btn">
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
			</div>
		<a class="btn btn-xs btn-success col-1" href="{{route('product.create')}}">
					<span class="fa-stack">
						<i class="fa fa-terminal"></i>
					</span>
				ADD
			</a>
		</div>
		<div class="panel-body">
			{{-- @dump($customer) --}}
			<div class="row col-12">
				<table id="data-table-combine" class="table table-striped table-bordered">
					<thead>
					  <tr>
						@foreach ($th as $i)
							  <th scope="col">{{str_replace('_',' ',strtoupper($i))}}</th>
						@endforeach
							<th scope="col">Action :</th>
					  </tr>
					</thead>
					<tbody>
						
					</tbody>
		</table>
			</div>
            
			
		</div>
	</div>
	<!-- end panel -->
@endsection

@push('css')
	<link href="{{base_url('/assets/plugins/datatables/css/dataTables.bootstrap4.css')}}" rel="stylesheet" />
	<link href="{{base_url('/assets/plugins/datatables/css/autoFill/autoFill.bootstrap4.css')}}" rel="stylesheet" />
	<link href="{{base_url('/assets/plugins/datatables/css/colReorder/colReorder.bootstrap4.css')}}" rel="stylesheet" />
	<link href="{{base_url('/assets/plugins/datatables/css/keyTable/keyTable.bootstrap4.css')}}" rel="stylesheet" />
	{{-- <link href="{{base_url('/assets/plugins/datatables/css/rowReorder/rowReorder.bootstrap4.css')}}" rel="stylesheet" /> --}}
	<link href="{{base_url('/assets/plugins/datatables/css/responsive/responsive.bootstrap4.css')}}" rel="stylesheet" />
	<link href="{{base_url('/assets/plugins/datatables/css/select/select.bootstrap4.css')}}" rel="stylesheet" />
@endpush

@push('scripts')
	<script src="{{base_url('/assets/plugins/datatables/js/jquery.dataTables.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/dataTables.bootstrap4.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/autoFill/dataTables.autoFill.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/autoFill/autoFill.bootstrap4.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/keyTable/dataTables.keyTable.js')}}"></script>
	{{-- <script src="{{base_url('/assets/plugins/datatables/js/rowReorder/dataTables.rowReorder.js')}}"></script> --}}
	<script src="{{base_url('/assets/plugins/datatables/js/colReorder/dataTables.colReorder.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/responsive/dataTables.responsive.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/responsive/responsive.bootstrap4.js')}}"></script>
	<script>
		const g = "{{route('product.grid')}}"
		function destroy(url) {
			axios.delete(url)
						.then(function (response) {
							// handle success
							window.location.replace("{{route('user.index')}}");
						})
						.catch(function (error) {
							// handle error
							console.log(error);
						})
						.finally(function () {
							// always executed
						});
		}
		
		$(document).ready(function() {
			$('#data-table-combine').DataTable({
				processing: true,
				serverSide: true,
				ajax: g,
				responsive: true,
				// autoFill: true,
				colReorder: true,
				// keys: true,
				rowReorder: true,
				select: true
			});

			$('.note-warning').fadeOut(6000)
		});
	</script>
@endpush