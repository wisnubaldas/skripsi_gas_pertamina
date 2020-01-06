	<!-- begin breadcrumb -->
	<ol class="breadcrumb pull-right">
		@foreach ($bc as $i)
			<li class="breadcrumb-item {{$i['class']}}"><a href="{{$i['link']}}">{{$i['name']}}</a></li>
		@endforeach
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">{{$title}} <small>{{$subtitle}}</small></h1>
	<!-- end page-header -->