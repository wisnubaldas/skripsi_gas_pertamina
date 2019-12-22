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
        <h4 class="panel-title">Edit Data</h4>
		</div>
		<div class="panel-body">
        <form action="{{route('master.courier.edit',$courier->id)}}" method="POST">
            <fieldset>
                <div class="row">
                    @foreach ($courier->toArray() as $i => $a)
                        @if ($i !== 'id')
                            <div class="col-4">
                                <div class="form-group">
                                    <label for="{{$i}}">{{ucfirst($i)}}</label>
                                    <input type="text" name="{{$i}}" class="form-control" id="{{$i}}" value="{{$a}}" />
                                </div>
                            </div>
                        @endif
                    @endforeach
                </div>
                <button type="submit" class="btn btn-sm btn-primary m-r-5">Save</button>
                <a href="{{route('master.courier')}}" class="btn btn-sm btn-default">Cancel</a>
            </fieldset>
        </form>
		</div>
	</div>
    <!-- end panel -->
    
@endsection

@push('css')
	
@endpush
@push('scripts')
	<script>
		$(document).ready(function() {
			$('.note-warning').fadeOut(6000)
		});
	</script>
@endpush