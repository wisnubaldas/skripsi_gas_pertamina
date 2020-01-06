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
            'title'=>'Angkutan Tabung Gas','subtitle'=>'Edit data angkutan'])
            
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
                        @if ($i == 'id')
                        @elseif ($i == 'users_id')
                        <div class="col-4">
                            <div class="form-group">
                                <label for="{{$i}}">{{ucfirst($i)}}</label>
                                <select class="default-select2 form-control" name="{{$i}}" id="{{$i}}">
                                    @foreach ($user as $it)
                                        @if ($it->id == $a)
                                            <option value="{{$it->id}}" selected>{{$it->username}}</option>
                                        @else
                                            <option value="{{$it->id}}">{{$it->username}}</option>
                                        @endif
                                    @endforeach
                                  </select>
                            </div>
                        </div>
                        @else
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
<link href="{{base_url('assets/plugins/select2/dist/css/select2.min.css')}}" rel="stylesheet" />
@endpush
@push('scripts')
<script src="{{base_url('assets/plugins/select2/dist/js/select2.min.js')}}"></script>
	<script>
		$(document).ready(function() {
            $("#users_id").select2();

			$('.note-warning').fadeOut(6000)


		});
    </script>
    	<script>
            jQuery(function() {
                // let ll = $('.sub-menu').find('a')
                // for (const d in ll) {
                //     if (ll.hasOwnProperty(d)) {
                //         const el = ll[d];
                //         console.log(el.href)
                //     }
                // }
            })
        </script>
@endpush