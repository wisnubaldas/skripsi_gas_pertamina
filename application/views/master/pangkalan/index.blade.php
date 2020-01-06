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
				['class'=>'active','link'=>'#','name'=>'Pangkalan'],
			],
			'title'=>'Pangkalan Gas','subtitle'=>'List data Pangkalan'])

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
			{{-- @dump($customer) --}}
                <table id="data-table-combine" class="table table-striped table-bordered">
                        <thead>
                          <tr>
                            <th scope="col">Reg Number</th>
                            <th scope="col">Nama Perusahaan</th>
							<th scope="col">Alamat</th>
							<th scope="col">Phone</th>
							<th scope="col">Wilayah</th>
							<th scope="col">#</th>
                          </tr>
                        </thead>
                        <tbody>
                            
                        </tbody>
				</table>
			
		</div>
	</div>
	<!-- end panel -->
@endsection

@push('css')
<link href="{{base_url('/assets/plugins/datatables/css/dataTables.bootstrap4.css')}}" rel="stylesheet" />
<link href="{{base_url('/assets/plugins/datatables/css/buttons/buttons.bootstrap4.min.css')}}" rel="stylesheet" />
@endpush

@push('scripts')
<script src="{{base_url('/assets/plugins/datatables/js/jquery.dataTables.js')}}"></script>
<script src="{{base_url('/assets/plugins/datatables/js/dataTables.bootstrap4.js')}}"></script>
<script src="{{base_url('/assets/plugins/datatables/js/buttons/dataTables.buttons.min.js')}}"></script>
<script src="{{base_url('/assets/plugins/datatables/js/buttons/buttons.bootstrap4.min.js')}}"></script>
<script src="{{base_url('assets/js/axios.min.js')}}"></script>
	<script>
		const g = "{{route('pangkalan.grid')}}";
		function destroy(url) {
			axios.delete(url)
						.then(function (response) {
							// handle success
							alert(response.data.message)
							window.location.replace("{{route('pangkalan.index')}}");
						})
						.catch(function (error) {
							// handle error
							console.log(error);
						})
						.finally(function () {
							// always executed
						});
		}
		
		$(document).ready(function() {
			$('#data-table-combine').DataTable({
				processing: true,
				serverSide: true,
				ajax: g,
				responsive: true,
				dom: 'Bfrtip',
				buttons: [
					{
						text: 'Create Pangkalan',
						className:'btn btn-sm btn-primary',
						action: function ( e, dt, node, config ) {
							window.location.replace("{{route('pangkalan.create')}}");
						}
					}
				]
			});

			$('.note-warning').fadeOut(6000)
		})
	</script>
@endpush