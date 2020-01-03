@extends('template.layouts.default')

@section('title', 'Courier Data')
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
		<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
		<li class="breadcrumb-item"><a href="javascript:;">Page Options</a></li>
		<li class="breadcrumb-item active">Blank Page</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Blank Page <small>header small text goes here...</small></h1>
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
			<h5 class="panel-title">
			<span class="fa-stack">
				<i class="fa fa-terminal"></i>
			</span>
			</h5>
			
		</div>
		<div class="panel-body">
			{{-- @dump($customer) --}}
                <table id="data-table-combine" class="table table-striped table-bordered">
                        <thead>
                          <tr>
							<th scope="col">No</th>
							<th scope="col">Tanggal</th>
							<th scope="col">Komposisi</th>
							<th scope="col">Satuan</th>
							<th scope="col">Keterangan</th>
							<th scope="col">Status</th>
							<th scope="col">Action</th>
                          </tr>
                        </thead>
                        <tbody>
                            
                        </tbody>
			</table>
			
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
		const g = "{{route('notif_gas.grid')}}";
		function destroy(url) {
			axios.delete(url)
						.then(function (response) {
							// handle success
							window.location.replace("{{route('notif_gas.index')}}");
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
				dom: 'Bfrtip',
				"order": [[ 1, "desc" ]],
				buttons: [
					{
						text: 'Buat Stok Gas',
						className:'btn btn-sm btn-primary',
						action: function ( e, dt, node, config ) {
							window.location.replace("{{route('notif_gas.create')}}");
						}
					}
				]
			});

			$('.note-warning').fadeOut(6000)
		});
	</script>
@endpush