@extends('template.layouts.default')

@section('title', 'Blank Page')
@php
$alert = false;
if(ci()->session->flashdata('msg')){
    $alert = ci()->session->flashdata('msg');
}
@endphp
@section('content')
		
@include('template.includes.component.breadcrumb',['bc'=>[
	['class'=>'','link'=>'#','name'=>'Home'],
	['class'=>'','link'=>'#','name'=>'Master'],
	['class'=>'active','link'=>'#','name'=>'Create User'],
],
'title'=>'User Config','subtitle'=>'Create User'])
	
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
            <form action="{{route('user.store')}}" method="POST">
                <fieldset>
                    <div class="row">
                    <div class="col-md-6">
                        <div class="form-group row m-b-15">
							<label class="col-md-4 col-sm-4 col-form-label">First Name</label>
							<div class="col-md-8 col-sm-8">
								<input class="form-control" type="text" id="first_name" name="first_name" data-parsley-required="true" />
							</div>
                        </div>
                        <div class="form-group row m-b-15">
                            <label class="col-md-4 col-sm-4 col-form-label">Last Name</label>
							<div class="col-md-8 col-sm-8">
								<input class="form-control" type="text" id="last_name" name="last_name" data-parsley-required="true" />
							</div>
                        </div>
						<div class="form-group row m-b-15">
							<label class="col-md-4 col-sm-4 col-form-label">Gender</label>
							<div class="col-md-8 col-sm-8">
								<select class="form-control" id="gender" name="gender" data-parsley-required="true">
									<option value="m">Male</option>
									<option value="f">Female</option>
								</select>
							</div>
                        </div>
                        <div class="form-group row m-b-15">
							<label class="col-md-4 col-sm-4 col-form-label">Roles</label>
							<div class="col-md-8 col-sm-8">
								<select class="form-control" id="role" name="role" data-parsley-required="true">
									<option value="operator">Opertor</option>
									<option value="driver">Driver</option>
									<option value="staff">Staff</option>
								</select>
							</div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row m-b-15">
							<label class="col-md-4 col-sm-4 col-form-label">User Name</label>
							<div class="col-md-8 col-sm-8">
								<input class="form-control" type="text" id="username" name="username" data-parsley-required="true" />
							</div>
                        </div>
                        <div class="form-group row m-b-15">
							<label class="col-md-4 col-sm-4 col-form-label">Password</label>
							<div class="col-md-8 col-sm-8">
								<input class="form-control" type="password" id="password" name="password" data-parsley-required="true" />
							</div>
                        </div>
                        <div class="form-group row m-b-15">
							<label class="col-md-4 col-sm-4 col-form-label">Email</label>
							<div class="col-md-8 col-sm-8">
								<input class="form-control" type="email" id="email" name="email" data-parsley-required="true" />
							</div>
                        </div>
                        <div class="form-group row m-b-15">
							<label class="col-md-4 col-sm-4 col-form-label">Status</label>
							<div class="col-md-8 col-sm-8">
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="active" id="defaultInlineRadio1" value="1" checked="">
										<label class="form-check-label" for="defaultInlineRadio1">Active</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="active" id="defaultInlineRadio2" value="0">
										<label class="form-check-label" for="defaultInlineRadio2">Idle</label>
									</div>
							</div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-sm btn-primary m-r-5">Save</button>
                        <a href="{{route('user.index')}}" class="btn btn-sm btn-default">Cancel</a>
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
	
@endpush