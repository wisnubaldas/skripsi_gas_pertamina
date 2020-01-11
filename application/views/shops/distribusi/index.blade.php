@extends('template.layouts.default')

@section('title', $label->title)
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
		@foreach ($label->breadcrumb as $i)
			<li class="breadcrumb-item"><a href="javascript:;">{{ucwords($i)}}</a></li>
		@endforeach
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">{{ucwords($label->page_header->h5)}} 
		<small>{{ucwords($label->page_header->p)}}</small></h1>
	<!-- end page-header -->
	
	<!-- begin panel -->
	<div class="panel panel-success">
		
		<div class="panel-body">
			<form id="frm-distribusi">
			<div class="row">
				
					<div class="col-4">
						<div class="form-group">
								<label for="">PANGKALAN</label>
								<select class="default-select2 form-control" type="text" name="pangkalan_id">
									<option value="" selected>::: Pangkalan :::</option>
									@foreach ($pangkalan as $item)
										<option value="{{$item->id}}">{{$item->company}}</option>
									@endforeach
								</select>
						</div>
						<div class="input-group m-b-10">
							<div class="input-group-prepend"><span class="input-group-text">Rumah Tangga</span></div>
							<input type="text" class="form-control tot" placeholder="" name="rumahtangga" id="rt">
							<div class="input-group-prepend"><span class="input-group-text">Tabung</span></div>
						</div>
						<div class="input-group m-b-10">
							<button type="submit" class="btn btn-outline-primary" placeholder="" name="rumahtangga" id="btn">Submit</button>
						</div>
					</div>

					<div class="col-4">
						<div class="form-group">
								<label for="">JADWAL PENGISIAN</label>
								<select class="select2-pengisian form-control" type="text" name="t_pengisian_id">
									<option value="" selected>::: Jadwal Pengisian :::</option>
									@foreach ($pengisian as $i)
										<option value="{{$i->id}}">{{$i->created_at}}</option>
									@endforeach
								</select>
						</div>
						<div class="input-group m-b-10">
							<div class="input-group-prepend"><span class="input-group-text">UKM</span></div>
							<input type="text" class="form-control tot" placeholder="" name="ukm" id="ukm">
							<div class="input-group-prepend"><span class="input-group-text">Tabung</span></div>
						</div>
						<div class="input-group m-b-10">
							<div class="input-group-prepend"><span class="input-group-text">Lainnya</span></div>
							<input type="text" class="form-control tot" placeholder="" name="other" id="other">
							<div class="input-group-prepend"><span class="input-group-text">Tabung</span></div>
						</div>
					</div>

					<div class="col-4">
						<div id="tpl-widget">

						</div>
					</div>

				<div class="art col-12"></div>
			</div>
		</form>

		</div>
	</div>
	<!-- end panel -->
	
@endsection

@push('css')
<link href="{{base_url('/assets/plugins/datatables/css/dataTables.bootstrap4.css')}}" rel="stylesheet" />
<link href="{{base_url('/assets/plugins/datatables/css/buttons/buttons.bootstrap4.min.css')}}" rel="stylesheet" />
<link href="{{base_url('assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css')}}" rel="stylesheet" />
<link href="{{base_url('assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css')}}" rel="stylesheet" />
<link href="{{base_url('assets/plugins/select2/dist/css/select2.min.css')}}" rel="stylesheet" />
@endpush

@push('scripts')
<script src="{{base_url('/assets/plugins/datatables/js/jquery.dataTables.js')}}"></script>
<script src="{{base_url('/assets/plugins/datatables/js/dataTables.bootstrap4.js')}}"></script>
<script src="{{base_url('/assets/plugins/datatables/js/buttons/dataTables.buttons.min.js')}}"></script>
<script src="{{base_url('/assets/plugins/datatables/js/buttons/buttons.bootstrap4.min.js')}}"></script>
<script src="{{base_url('assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js')}}"></script>
<script src="{{base_url('assets/plugins/moment/moment.js')}}"></script>
<script src="{{base_url('assets/plugins/select2/dist/js/select2.min.js')}}"></script>
<script>
	const dPengisian = @json($pengisian);
	let tplWiget = function (a) {
			return `<div class="widget widget-stats bg-gradient-blue">
			            <div class="stats-icon stats-icon-lg"><i class="fa fa-dollar-sign fa-fw"></i></div>
						<div class="stats-content">
							<div class="stats-title">Tanggal Pengisian: ${a.tglPengisian}</div>
							<div class="stats-number">${a.composisi} Tabung Gas</div>
							<div class="stats-progress progress">
								<div class="progress-bar" style="width:${a.persen}%;"></div>
							</div>
							<div class="stats-desc">Driver : ${a.kurir}</div>
						</div>
			        </div>`;
	}
	let tplAlert = function(t) {
		return `<div class="note ${t.class} note-with-right-icon m-b-15">
					<div class="note-icon"><i class="fa fa-lightbulb"></i></div>
					<div class="note-content text-right">
						<h4><b>${t.status}</b></h4>
						<p>
							${t.message}
						</p>
					</div>
				</div>`;
	}
	let calculateSum = function(){
						let sum = 0;
						//iterate through each textboxes and add the values
							$(".tot").each(function() {
								//add only if the value is number
								if (!isNaN(this.value) && this.value.length != 0) {
									sum += parseFloat(this.value);
									$(this).addClass("bg-aqua-transparent-2 f-s-16").removeClass('bg-red-darker text-white');
								}
								else if (this.value.length != 0){
									$(this).addClass("bg-red-darker text-white f-s-16");
								}
							});
						return sum.toFixed(2);
					}

	 jQuery(function() {
		let filedDistribusi = {
					tglPengisian:moment().format('DD-MM-Y'),
					composisi:'Distribusi',
					kurir:'Supir truk',
					persen:0
				}
			let wiget = $('#tpl-widget');
			
				//this calculates values automatically 
				// calculateSum(); // triger dulu 
				wiget.html(tplWiget(filedDistribusi))
			let select = $('.select2-pengisian')
			select.select2();
			select.on('select2:select',function (p) {
				$('.art').empty()
				const id = p.params.data.id;
				dPengisian.forEach(el => {
					if(el.id == id)
					{
						$.extend(true,filedDistribusi,{
							tglPengisian: el.created_at,
							composisi: el.composisi,
							kurir: el.courier_id,
						})

						wiget.html(tplWiget(filedDistribusi))

						// jumlah total semua kalo jadwal udah di select
						$(".tot").on("keyup", function() {
								const x = calculateSum();
								const persen = (parseInt(x)/parseInt(el.composisi))*100
								if(persen <= 100)
								{
									filedDistribusi.persen = persen.toFixed(2)
									wiget.html(tplWiget(filedDistribusi))
								}else{
									$('.art').html(tplAlert(
										{
											status:x,
											message:'Jumlah tabung '+x+', melebihi kapasitas pengisian bro..!!!',
											class:'note-danger'
										}))
								}
						}); // end keyup
					}

				}) // end loop

				// triger submit
				$('#frm-distribusi').submit(function(event) {
					let theVal = $(this).serializeArray()
					let tot = 0
					theVal.forEach(el => {
						if(el.name == 'rumahtangga' || el.name == 'ukm' || el.name == 'other')
						{
							const x = parseInt(el.value)
							if (!isNaN(x)) {
								tot +=  x								
							}
						}
					});
					
					if(filedDistribusi.composisi == tot)
					{
						axios.post("{{route('distribusi.store')}}", {
										params:theVal
								})
								.then(function (response) {
									console.log(select.select2('data'));
									// remove option select2
									let new_data = $.grep(select.select2('data'), function (value) {
													return value['id'] != response.data.t_pengisian_id;
												});
										select.select2('data', new_data);

									$('.art').html(tplAlert(
										{
											status:response.data.status,
											message:response.data.message,
											class:'note-success'
										}))
									$(this).get(0).reset() // reset form
								})
								.catch(function (error) {
									// console.log(error);
									window.location.replace("{{route('distribusi.index')}}");
								})
								.finally(function () {
									// always executed
								});  
					}else{
						$('.art').html(tplAlert(
									{
										status:tot,
										message:'Jumlah tabung '+tot+', harus mencukupi komposisi pengisian gas!',
										class:'note-warning'
									}))
					}

					event.preventDefault();
				}) // end submit
			})

			$(".default-select2").select2();
            $('#datepicker-autoClose').datepicker({
                todayHighlight: true,
                autoclose: true,
                dateFormat: "yy-mm-dd"
            });
        })
	</script>
@endpush