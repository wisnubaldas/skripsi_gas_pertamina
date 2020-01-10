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
				['class'=>'active','link'=>'#','name'=>'Angkutan Tabung Gas'],
			],
			'title'=>'Angkutan Tabung Gas','subtitle'=>'Create data angkutan'])
	
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
        <form action="{{route('master.courier.create')}}" method="POST">
            <fieldset>
                <div class="row">
                    @for ($i = 0; $i < count($formInput); $i++)
                        @switch($formInput[$i])
                            @case('id')
                                @break
                            @case('email')
                                @break
                            @case('firstname')
                            <div class="col-4">
                                <div class="form-group">
                                <label for="{{$formInput[$i]}}">NAMA DRIVER</label>
                                    <input type="text" name="{{$formInput[$i]}}" class="form-control" />
                                </div>
                            </div>
                                @break
                            @case('lastname')
                            <div class="col-4">
                                <div class="form-group">
                                <label for="{{$formInput[$i]}}">SERI KENDARAAN</label>
                                    <input type="text" name="{{$formInput[$i]}}" class="form-control" />
                                </div>
                            </div>
                                @break
                            @case('name')
                            <div class="col-4">
                                <div class="form-group">
                                <label for="{{$formInput[$i]}}">NOMOR KENDARAAN</label>
                                    <input type="text" name="{{$formInput[$i]}}" class="form-control" />
                                </div>
                            </div>    
                            @break

                            @case('users_id')
                            <div class="col-4">
                                <div class="form-group">
                                    <label for="">USER SYSTEM</label>
                                    <select class="default-select2 form-control" type="text" name="users_id">
                                        <option value="" selected>### Select User ###</option>
                                        @foreach ($user as $item)
                                            <option value="{{$item->id}}">{{$item->first_name}} {{$item->last_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            @break
                            @case('type_angkutan')
                            <div class="col-4">
                                <div class="form-group">
                                    <label for="">TIPE ANGKUTAN</label>
                                    <select class="default-select2 form-control" type="text" name="type_angkutan">
                                        <option value="" selected>### Select Type Angkutan ###</option>
                                            <option value="truk">Truk</option>
                                            <option value="cold">Cold</option>
                                            <option value="losbak">Losbak</option>
                                    </select>
                                </div>
                            </div>
                            @break
                            @default
                            <div class="col-4">
                                <div class="form-group">
                                <label for="{{$formInput[$i]}}">{{strtoupper($formInput[$i])}}</label>
                                    <input type="text" name="{{$formInput[$i]}}" class="form-control" />
                                </div>
                            </div>
                        @endswitch
                        
                    @endfor
                </div>
                <button type="submit" class="btn btn-sm btn-primary m-r-5">Save</button>
                <a href="{{route('master.courier')}}" class="btn btn-sm btn-default">Back</a>
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
        jQuery(function() {
            let ll = $('.sub-menu').find('a')
            console.log(ll)
        })
    </script>
@endpush