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
                            <div class="col-4">
                                <div class="form-group">
                                <label for="{{$formInput[$i]}}">{{ucfirst($formInput[$i])}}</label>
                                    <input type="text" name="{{$formInput[$i]}}" class="form-control" />
                                </div>
                            </div>
                        @endfor
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
        jQuery(function() {
            let ll = $('.sub-menu').find('a')
            console.log(ll)
        })
    </script>
@endpush