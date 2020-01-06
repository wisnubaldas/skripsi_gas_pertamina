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
				['class'=>'active','link'=>'#','name'=>'Pangkalan Create'],
			],
			'title'=>'Pangkalan Gas','subtitle'=>'Create data Pangkalan'])
	
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
            <form action="{{route('pangkalan.store')}}" method="POST">
                <fieldset>
                    <div class="row">
                        <div class="col-4">
                            <div class="form-group">
                            <label for="">No Registrasi</label>
                            <input type="text" name="no_reg" id="no_reg" class="form-control" readonly value="{{strtoupper($no_reg)}}"/>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group">
                            <label for="">Nama Perusahaan</label>
                            <input type="text" name="company" id="company" class="form-control" />
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group">
                            <label for="">Alamat</label>
                            <input type="text" name="address" id="address" class="form-control" />
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group">
                            <label for="">Telepon</label>
                            <input type="text" name="phone" id="phone" class="form-control" />
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group">
                            <label for="">Wilayah</label>
                            <input type="text" name="wilayah" id="wilayah" class="form-control" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                            <label for="">Keterangan</label>
                            <textarea type="text" name="ket" id="ket" class="form-control" ></textarea>
                            </div>
                        </div>
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
	
@endpush