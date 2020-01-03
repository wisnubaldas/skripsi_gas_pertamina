@extends('template.layouts.default')
@section('title', $label->title)
@php
    $alert = false;
    if(ci()->session->flashdata('msg')){
        $alert = ci()->session->flashdata('msg');
    }
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
	<div class="row">
<!-- begin panel -->
<div class="col-md-3">
    <!-- begin card -->
    <div class="card card-inverse bg-gradient-black text-center">
        <div class="card-block">
            <blockquote class="card-blockquote">
                {{-- <p class="f-s-20 f-w-700">5000</p> --}}
                <h1><span class="text-white" id="qp"></span><span class="text-warning"> Kg</span></h1>
                <footer class="f-s-12">Sisa kuota gas Pertamina</footer>
            </blockquote>
        </div>
    </div>
    <!-- end card -->
</div>

<div class="col-md-9">
    <div class="panel panel-success">
        <div class="panel-heading">
            <div class="panel-heading-btn">
                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
            </div>
        <h4 class="panel-title">Create Jadwal</h4>
        </div>
        <div class="panel-body">
            <div class="col-md-12">
                    @includeWhen($alert, 'template.includes.component.notif', ['alert' => $alert])
            </div>
            
                <form action="{{route('notif_gas.store_pengisian')}}" method="POST">
                    <fieldset>
                        <div class="row">
                            <div class="col-4">
                                <div class="form-group">
                                    <label for="">TANGGAL</label>
                                <input type="text" name="tgl" class="form-control" readonly id="tgl" value="{{$data->tgl}}"/>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <label for="">KOMPOSISI</label>
                                    <div class="input-group">
                                        <input type="text" name="composisi" class="form-control" id="composisi" />
                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                Kg
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                        <label for="courier">Kurir/Driver</label>
                                        <select class="default-select2 form-control" type="text" name="courier_id">
                                            @foreach ($courier as $item)
                                                <option value="{{$item['id']}}">{{$item['text']}}</option>
                                            @endforeach
                                        </select>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                <label for="">Keterangan</label>
                                <textarea type="text" name="ket" class="form-control"  id="ket" ></textarea>
                                </div>
                            </div>
                            <input type="text" name="id_quota_gas" hidden value="{{$data->id}}">
                            <div class="col-md-12 text-right">
                                    <div class="btn btn-group text-right">
                                        <button type="submit" class="btn btn-sm btn-success">Save</button>
                                        <a href="{{route('notif_gas.index')}}" class="btn btn-sm btn-warning">Cancel</a>
                                    </div>
                            </div>
                        </div>
                    </fieldset>
                </form>
        </div>
    </div>
</div>
<!-- end panel -->
    </div>
    
@endsection

@push('css')
<link href="{{base_url('assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css')}}" rel="stylesheet" />
<link href="{{base_url('assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css')}}" rel="stylesheet" />
<link href="{{base_url('assets/plugins/select2/dist/css/select2.min.css')}}" rel="stylesheet" />
@endpush

@push('scripts')
<script src="{{base_url('assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js')}}"></script>
<script src="{{base_url('assets/plugins/moment/moment.js')}}"></script>
<script src="{{base_url('assets/plugins/select2/dist/js/select2.min.js')}}"></script>
	<script>
        jQuery(function() {
            $(".default-select2").select2();
            $('.note-danger').fadeOut(6000);
            
                let k = "{{$data->composisi}}";
                $('#qp').text(k)

            $('input[name=composisi]').on('keyup',function(){
                let l = $(this).val();
                if(!isNaN(l))
                {
                    s = (k - l)
                    return $('#qp').text(s)
                }else{
                    return $('#qp').text(k)
                }
                // console.log($(this).val())
            })
        })
    </script>
@endpush