@extends('template.layouts.default')

@section('title', $label->title)
@php
	$alert = false;
	if(ci()->session->flashdata('msg')){
		$alert = ci()->session->flashdata('msg');
	}
	function rpucStr(string $s){ return str_replace('_',' ',strtoupper($s)); }
@endphp
	
@section('content')
	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		@foreach ($label->breadcrumb as $i)
			<li class="breadcrumb-item"><a href="javascript:;">{{ucwords($i)}}</a></li>
		@endforeach
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">{{ucwords($label->page_header->h5)}} 
		<small>{{ucwords($label->page_header->p)}}</small></h1>
	<!-- end page-header -->
	
	<!-- begin panel -->
	<div class="panel panel-success">
		<div class="panel-heading">
			<div class="panel-heading-btn">
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
				<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
			</div>
		<h4 class="panel-title">{{$label->panel_title}}</h4>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-12">
					<table id="data-table-combine" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th scope="col">Waktu Pengisian</th>
									<th scope="col">Tanggal</th>
									<th scope="col">Composisi</th>
									<th scope="col">Kurir/Driver</th>
									<th scope="col">Keterangan</th>
									<th scope="col">Status</th>
								</tr>
							</thead>
							<tbody>
								
							</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- end panel -->

@endsection

@push('css')
	<link href="{{base_url('/assets/plugins/datatables/css/dataTables.bootstrap4.css')}}" rel="stylesheet" />
	<link href="{{base_url('/assets/plugins/datatables/css/buttons/buttons.bootstrap4.min.css')}}" rel="stylesheet" />
@endpush

@push('scripts')
	<script src="{{base_url('/assets/plugins/datatables/js/jquery.dataTables.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/dataTables.bootstrap4.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/buttons/dataTables.buttons.min.js')}}"></script>
	<script src="{{base_url('/assets/plugins/datatables/js/buttons/buttons.bootstrap4.min.js')}}"></script>
	<script>
		const g = "{{route('pengisian.grid')}}"
		$(document).ready(function() {
			$('#data-table-combine').DataTable({
				processing: true,
				serverSide: true,
				ajax: g,
				responsive: true,
				select: true,
				dom: 'Bfrtip',
				"order": [[ 0, "desc" ]],
				buttons: [
					{
						text: '@',
						className:'btn btn-sm btn-primary',
						action: function ( e, dt, node, config ) {
							// window.location.replace("{{route('pengisian.create')}}");
						}
					}
				]
			});

			$('.note-warning').fadeOut(3000)
		});
	</script>
@endpush