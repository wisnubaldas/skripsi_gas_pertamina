
@php
$guest = ci()->simple_auth->isGuest();
@endphp
@extends('template.layouts.default',['sidebarHide' => $guest])

@section('title', 'Dashboard V2')

@push('css')
	<link href="{{base_url('assets/plugins/nvd3/nvd3.min.css')}}" rel="stylesheet" />
	<link href="{{base_url('assets/plugins/jquery-jvectormap/jquery-jvectormap.min.css')}}" rel="stylesheet" />
	<link href="{{base_url('assets/plugins/bootstrap-calendar/css/bootstrap_calendar.css')}}" rel="stylesheet" />
	{{-- <link href="{{base_url('assets/plugins/gritter/css/jquery.gritter.css')}}" rel="stylesheet" /> --}}
@endpush

@section('content')
	
	<!-- begin row -->
	<div class="row">
		<!-- begin col-3 -->
		<div class="col-lg-4 col-md-6">
			<div class="widget widget-stats bg-gradient-blue">
				<div class="stats-icon stats-icon-lg"><i class="fa fa-dollar-sign fa-fw"></i></div>
				<div class="stats-content">
					<div class="stats-title">JUMLAH BARANG</div>
					<div class="stats-number">{{$data['barang']}}</div>
					<div class="stats-progress progress">
						<div class="progress-bar" style="width: 40.5%;"></div>
					</div>
					<div class="stats-desc">Better than last week (40.5%)</div>
				</div>
			</div>
		</div>
		<!-- end col-3 -->
		<!-- begin col-3 -->
		<div class="col-lg-4 col-md-6">
			<div class="widget widget-stats bg-gradient-purple">
				<div class="stats-icon stats-icon-lg"><i class="fa fa-archive fa-fw"></i></div>
				<div class="stats-content">
					<div class="stats-title">JUMLAH </div>
					<div class="stats-number">{{$data['kategori']}}</div>
					<div class="stats-progress progress">
						<div class="progress-bar" style="width: 76.3%;"></div>
					</div>
					<div class="stats-desc">Better than last week (76.3%)</div>
				</div>
			</div>
		</div>
		<!-- end col-3 -->
		<!-- begin col-3 -->
		<div class="col-lg-4 col-md-6">
			<div class="widget widget-stats bg-gradient-black">
				<div class="stats-icon stats-icon-lg"><i class="fa fa-comment-alt fa-fw"></i></div>
				<div class="stats-content">
					<div class="stats-title">JUMLAH MERK</div>
					<div class="stats-number">{{$data['merk']}}</div>
					<div class="stats-progress progress">
						<div class="progress-bar" style="width: 54.9%;"></div>
					</div>
					<div class="stats-desc">Better than last week (54.9%)</div>
				</div>
			</div>
		</div>
		<!-- end col-3 -->
	</div>
	<!-- end row -->
	
	<!-- begin row -->
	<div class="row">
		<!-- begin col-8 -->
		<div class="col-lg-12">
			<div class="widget-chart with-sidebar bg-black">
				<div class="widget-chart-content">
					<h4 class="chart-title">
						Data Penjualan
						<small>Penjualan barang /bulan</small>
					</h4>
					<div id="visitors-line-chart" class="widget-chart-full-width nvd3-inverse-mode" style="height: 260px;"></div>
				</div>
				<div class="widget-chart-sidebar bg-black-darker">
					<div class="chart-number">
						1,225,729
						<small>Total visitors</small>
					</div>
					<div id="visitors-donut-chart" class="nvd3-inverse-mode p-t-10" style="height: 180px"></div>
					<ul class="chart-legend f-s-11">
						<li><i class="fa fa-circle fa-fw text-primary f-s-9 m-r-5 t-minus-1"></i> 34.0% <span>New Visitors</span></li>
						<li><i class="fa fa-circle fa-fw text-success f-s-9 m-r-5 t-minus-1"></i> 56.0% <span>Return Visitors</span></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- end col-8 -->
	</div>
	<!-- end row -->
	<!-- begin row -->
	<div class="row">

	</div>
	<!-- end row -->
@endsection



@push('scripts')
	<script src="{{base_url('assets/plugins/nvd3/nvd3.min.js')}}"></script>
	<script src="{{base_url('assets/plugins/jquery-jvectormap/jquery-jvectormap.min.js')}}"></script>
	<script src="{{base_url('assets/plugins/jquery-jvectormap/jquery-jvectormap-world-merc-en.js')}}"></script>
	<script src="{{base_url('assets/plugins/bootstrap-calendar/js/bootstrap_calendar.min.js')}}"></script>
	{{-- <script src="{{base_url('assets/plugins/gritter/js/jquery.gritter.js')}}"></script> --}}
	<script src="{{base_url('assets/js/demo/dashboard-v2.js')}}"></script>
	<script>
		$(document).ready(function() {
			DashboardV2.init();
			var handleVisitorsAreaChart = function() {
			var handleGetDate = function(minusDate) {
				var d = new Date();
					d = d.setDate(d.getDate() - minusDate);
				return d;
			};
			console.log(handleGetDate(10));

				var visitorAreaChartData = [{
					'key' : 'Penjualan',
					'color' : COLOR_AQUA,
					'values' : [ 
						[1000, 2],
						[21000, 100],
						[31000,20]
					]
				}];

				nv.addGraph(function() {
					var stackedAreaChart = nv.models.stackedAreaChart()
						.useInteractiveGuideline(true)
						.x(function(d) { return d[0] })
						.y(function(d) { return d[1] })
						.pointSize(0.5)
						.margin({'left':35,'right': 25,'top': 20,'bottom':20})
						.controlLabels({stacked: 'Stacked'})
						.showControls(false)
						.duration(300);

					stackedAreaChart.xAxis.tickFormat(function(d) { 
						var monthsName = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
						d = new Date(d);
						d = monthsName[d.getMonth()] + ' ' + d.getDate();
						return d ;
					});
					stackedAreaChart.yAxis.tickFormat(d3.format(',.0f'));

					d3.select('#visitors-line-chart')
						.append('svg')
						.datum(visitorAreaChartData)
						.transition().duration(1000)
						.call(stackedAreaChart)
						.each('start', function() {
							setTimeout(function() {
								d3.selectAll('#visitors-line-chart *').each(function() {
									if(this.__transition__)
										this.__transition__.duration = 1;
								})
							}, 0)
						});

					nv.utils.windowResize(stackedAreaChart.update);
					return stackedAreaChart;
				});
				};
			handleVisitorsAreaChart();
		});
	</script>
@endpush