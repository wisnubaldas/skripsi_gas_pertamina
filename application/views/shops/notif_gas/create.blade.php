@extends('template.layouts.default')

@section('title', 'Blank Page')
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
	<h1 class="page-header">Blank Page <small>header small text goes here...</small></h1>
	<!-- end page-header -->
	
	<!-- begin panel -->
	<div class="panel panel-inverse">
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
		<div class="panel-body">
            <form action="{{route('notif_gas.store')}}" method="POST">
                <fieldset>
                    <div class="row">
                    <div class="col-md-6">
                        <div class="form-group row m-b-15">
							<label class="col-md-4 col-sm-4 col-form-label">Tanggal</label>
							<div class="col-md-8 col-sm-8">
								<input class="form-control" type="text" id="datepicker-autoClose" name="tgl" data-parsley-required="true" />
							</div>
                        </div>
                        <div class="form-group row m-b-15">
                            <label class="col-md-4 col-sm-4 col-form-label">Komposisi</label>
							<div class="col-md-8 col-sm-8">
								<div class="input-group">
									<input class="form-control" type="text" id="composisi" name="composisi" data-parsley-required="true" />
									<div class="input-group-addon">
										Kg
									</div>
								</div>
							</div>
                        </div>
                    </div>
                    <div class="col-md-6">
						<div class="form-group row m-b-15">
							<label class="col-md-12 col-sm-12 col-form-label">Keterangan</label>
							<div class="col-md-12 col-sm-12">
								<textarea class="form-control" type="text" 
										id="ket" name="ket" 
										data-parsley-required="true" ></textarea>
							</div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-sm btn-primary m-r-5">Save</button>
                        <a href="{{route('notif_gas.index')}}" class="btn btn-sm btn-default">Cancel</a>
                    </div>
                    </div>
                </fieldset>
            </form>
		</div>
	</div>
	<!-- end panel -->
@endsection

@push('css')

@endpush

@push('scripts')
<script src="{{base_url('assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js')}}"></script>
<script src="{{base_url('assets/plugins/moment/moment.js')}}"></script>
<script src="{{base_url('assets/plugins/select2/dist/js/select2.min.js')}}"></script>
	<script>
	jQuery(function(){
			$(".default-select2").select2();
            $('.note-danger').fadeOut(6000)
            $('#datepicker-autoClose').datepicker({
                todayHighlight: true,
                autoclose: true,
                dateFormat: "yy-mm-dd"
            });
	})
	</script>
@endpush