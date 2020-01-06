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
    ['class'=>'active','link'=>'#','name'=>'Pangkalan Edit'],
],
'title'=>'Pangkalan Gas','subtitle'=>'Edit data Pangkalan'])

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
		<div class="panel-body">
        <form action="{{route('pangkalan.update',$pangkalan->id)}}" method="POST">
            <fieldset>
                <div class="row">
                    @foreach ($pangkalan->toArray() as $i => $a)
                        @if ($i !== 'id')
                            <div class="col-4">
                                <div class="form-group">
                                    <label for="{{$i}}">{{strtoupper($i)}}</label>
                                    <input type="text" name="{{$i}}" class="form-control" id="{{$i}}" value="{{$a}}" />
                                </div>
                            </div>
                        @endif
                    @endforeach
                </div>
                <button type="submit" class="btn btn-sm btn-primary m-r-5">Save</button>
                <a href="{{route('pangkalan.index')}}" class="btn btn-sm btn-default">Back</a>
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