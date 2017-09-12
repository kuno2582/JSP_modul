<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>1 Col Portfolio - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/1-col-portfolio.css" rel="stylesheet">

<!-- Temporary navbar container fix -->
<style>
.navbar-toggler {
	z-index: 1;
}

@media ( max-width : 576px) {
	nav>.container {
		width: 100%;
	}
}

.table thead th {
	vertical-align: middle;
	text-align: center;
}

.table {
	margin: 30px 0 50px 0;
	text-align: center;
}

.table tbody tr td {
	vertical-align: middle;
}

.info-pdn {
	padding-top: 100px;
}

.modal-title {
	font-weight: bold;
}

.val-type-nav a {
	font-size: 20pt;
	font-weight: bold;
	color: black;
	
}
.val-type-nav {
	position: fixed;
	left:70px;
	top: 150px;
}
}
</style>

</head>
<%
	String valve = request.getParameter("valve");
	if(valve == null){
		valve = "";
	}
%>
<body>

	<!-- Navigation// -->
	<%@include file="navBar.jsp"%>
	<!-- //Navigation -->

	<div class="val-type-nav">
		<a href="javascript:;" onclick="fnSetFocus('class','oval');" class="">flange</a><br>
		<a href="javascript:;" onclick="fnSetFocus('class','2way');" class="">2-way</a><br>
		<a href="javascript:;" onclick="fnSetFocus('class','3way');" class="">3-way</a><br>
		<a href="javascript:;" onclick="fnSetFocus('class','5way');" class="">5-way</a><br>
	</div>

	<!-- Page Content -->
	<div class="container">
	
		<!-- Page Heading -->
		<h1 class="my-4">제품 정보</h1>
		
		<!-- Product S -->
		<div class="row oval oval_flange">
			<div class="col-md-7">
				<a href="javascript:;"> <img
					class="img-fluid rounded mb-3 mb-md-0"
					src="./css/images/oval flange copy.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5 info-pdn">
				<h3>
					<b>Oval flange</b>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Laudantium veniam exercitationem expedita laborum at voluptate.
					Labore, voluptates totam at aut nemo deserunt rem magni pariatur
					quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="javascript:;" onfocus="blur();"
					data-toggle="modal" data-target="#oval_flange">도면보기</a>
			</div>
			<!-- Modal S -->
			<div class="modal fade" id="oval_flange" role="dialog">
				<div class="modal-dialog modal-lg">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Oval flange</h4>
						</div>
						<div class="modal-body">
							<img width="770px"
								src="./css/images/blueprint/oval_blueprint.png">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
			<!-- Modal E -->
		</div>
		<hr>
		<!-- Product E -->

		<!-- Product S -->
		<div class="row 2way 2way_block_2hole">
			<div class="col-md-7">
				<a href="javascript:;"> <img
					class="img-fluid rounded mb-3 mb-md-0"
					src="./css/images/2way block 2hole copy.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5 info-pdn">
				<h3>
					<b>2-way block type 2hole</b>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Laudantium veniam exercitationem expedita laborum at voluptate.
					Labore, voluptates totam at aut nemo deserunt rem magni pariatur
					quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="javascript:;" onfocus="blur();"
					data-toggle="modal" data-target="#2way_block_2hole">도면보기</a>
			</div>
			<table class="table">
				<caption style="caption-side: top;">
					<h4>
						<b>기술적 자료</b>
					</h4>
				</caption>
				<thead>
					<tr>
						<th>BODY MATERIAL</th>
						<th>PRESSURE RATING</th>
						<th>PACKING</th>
						<th>PRESSURE RATING<br>MAX. TEMPERATURE
						</th>
						<th>STEM</th>
						<th>ORIFICE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2">SS316<br>Alloy 400<br>SS 316L
						</td>
						<td rowspan="2">6000psi<br>-65&#8457; to 100&#8457;<br>(-54&#8451;
							to 38&#8451;)
						</td>
						<td>Teflon</td>
						<td>4130psi at 450&#8457;<br>(232&#8451;)
						</td>
						<td rowspan="2">Vee Tip<br>Dick Tip<br>Ball Tip
						</td>
						<td rowspan=2>3.2mm</td>
					</tr>
					<tr>
						<td>Grafoil</td>
						<td>3380psi at 850&#8457;<br>(454&#8451;)
						</td>
					</tr>
				</tbody>
			</table>
			<!-- Modal S -->
			<div class="modal fade" id="2way_block_2hole" role="dialog">
				<div class="modal-dialog modal-lg">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">2-way block type 2hole</h4>
						</div>
						<div class="modal-body">
							<img width="770px"
								src="./css/images/blueprint/2-way valve block type 2-hole.png">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
			<!-- Modal E -->
		</div>
		<hr>
		<!-- Product E -->


		<!-- Product S -->
		<div class="row 2way 2-way_valve_block_type">
			<div class="col-md-7">
				<a href="javascript:;"> <img
					class="img-fluid rounded mb-3 mb-md-0"
					src="./css/images/2way block type copy.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5 info-pdn">
				<h3>
					<b>2-way block type valve</b>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Laudantium veniam exercitationem expedita laborum at voluptate.
					Labore, voluptates totam at aut nemo deserunt rem magni pariatur
					quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="javascript:;" onfocus="blur();"
					data-toggle="modal" data-target="#2-way_valve_block_type">도면보기</a>
			</div>
			<table class="table">
				<caption style="caption-side: top;">
					<h4>
						<b>기술적 자료</b>
					</h4>
				</caption>
				<thead>
					<tr>
						<th>BODY MATERIAL</th>
						<th>PRESSURE RATING</th>
						<th>PACKING</th>
						<th>PRESSURE RATING<br>MAX. TEMPERATURE
						</th>
						<th>STEM</th>
						<th>ORIFICE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2">SS316<br>Alloy 400<br>SS 316L
						</td>
						<td rowspan="2">6000psi<br>-65&#8457; to 100&#8457;<br>(-54&#8451;
							to 38&#8451;)
						</td>
						<td>Teflon</td>
						<td>4130psi at 450&#8457;<br>(232&#8451;)
						</td>
						<td rowspan="2">Vee Tip<br>Dick Tip<br>Ball Tip
						</td>
						<td rowspan=2>3.2mm</td>
					</tr>
					<tr>
						<td>Grafoil</td>
						<td>3380psi at 850&#8457;<br>(454&#8451;)
						</td>
					</tr>
				</tbody>
			</table>
			<!-- Modal S -->
			<div class="modal fade" id="2-way_valve_block_type" role="dialog">
				<div class="modal-dialog modal-lg">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">2-way block type valve</h4>
						</div>
						<div class="modal-body">
							<img width="770px"
								src="./css/images/blueprint/2-way valve block type.png">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
			<!-- Modal E -->
		</div>
		<hr>
		<!-- Product E -->

		<!-- Product S -->
		<div class="row 2way 2way_block_3hole">
			<div class="col-md-7">
				<a href="javascript:;"> <img
					class="img-fluid rounded mb-3 mb-md-0"
					src="./css/images/2way block 3hole copy.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5 info-pdn">
				<h3>
					<b>2-way block type 3hole</b>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Laudantium veniam exercitationem expedita laborum at voluptate.
					Labore, voluptates totam at aut nemo deserunt rem magni pariatur
					quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="javascript:;" onfocus="blur();"
					data-toggle="modal" data-target="#2way_block_3hole">도면보기</a>
			</div>
			<table class="table">
				<caption style="caption-side: top;">
					<h4>
						<b>기술적 자료</b>
					</h4>
				</caption>
				<thead>
					<tr>
						<th>BODY MATERIAL</th>
						<th>PRESSURE RATING</th>
						<th>PACKING</th>
						<th>PRESSURE RATING<br>MAX. TEMPERATURE
						</th>
						<th>STEM</th>
						<th>ORIFICE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2">SS316<br>Alloy 400<br>SS 316L
						</td>
						<td rowspan="2">6000psi<br>-65&#8457; to 100&#8457;<br>(-54&#8451;
							to 38&#8451;)
						</td>
						<td>Teflon</td>
						<td>4130psi at 450&#8457;<br>(232&#8451;)
						</td>
						<td rowspan="2">Vee Tip<br>Dick Tip<br>Ball Tip
						</td>
						<td rowspan=2>3.2mm</td>
					</tr>
					<tr>
						<td>Grafoil</td>
						<td>3380psi at 850&#8457;<br>(454&#8451;)
						</td>
					</tr>
				</tbody>
			</table>
			<!-- Modal S -->
			<div class="modal fade" id="2way_block_3hole" role="dialog">
				<div class="modal-dialog modal-lg">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">2-way block type 3hole</h4>
						</div>
						<div class="modal-body">
							<img width="770px"
								src="./css/images/blueprint/2-way valve block type 3-hole.png">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
			<!-- Modal E -->
		</div>
		<hr>
		<!-- Product E -->

		<!-- Product S -->
		<div class="row 2way 2-way_pressure_gauge">
			<div class="col-md-7">
				<a href="javascript:;"> <img
					class="img-fluid rounded mb-3 mb-md-0"
					src="./css/images/2way gauge.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5 info-pdn">
				<h3>
					<b>2-way pressure gauge</b>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Laudantium veniam exercitationem expedita laborum at voluptate.
					Labore, voluptates totam at aut nemo deserunt rem magni pariatur
					quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="javascript:;" onfocus="blur();"
					data-toggle="modal" data-target="#2-way_pressure_gauge">도면보기</a>
			</div>
			<table class="table">
				<caption style="caption-side: top;">
					<h4>
						<b>기술적 자료</b>
					</h4>
				</caption>
				<thead>
					<tr>
						<th>BODY MATERIAL</th>
						<th>PRESSURE RATING</th>
						<th>PACKING</th>
						<th>PRESSURE RATING<br>MAX. TEMPERATURE
						</th>
						<th>STEM</th>
						<th>ORIFICE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2">SS316<br>Alloy 400<br>SS 316L
						</td>
						<td rowspan="2">6000psi<br>-65&#8457; to 100&#8457;<br>(-54&#8451;
							to 38&#8451;)
						</td>
						<td>Teflon</td>
						<td>4130psi at 450&#8457;<br>(232&#8451;)
						</td>
						<td rowspan="2">Vee Tip<br>Dick Tip<br>Ball Tip
						</td>
						<td rowspan=2>3.2mm</td>
					</tr>
					<tr>
						<td>Grafoil</td>
						<td>3380psi at 850&#8457;<br>(454&#8451;)
						</td>
					</tr>
				</tbody>
			</table>
			<!-- Modal S -->
			<div class="modal fade" id="2-way_pressure_gauge" role="dialog">
				<div class="modal-dialog modal-lg">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">2-way pressure gauge</h4>
						</div>
						<div class="modal-body">
							<img width="770px"
								src="./css/images/blueprint/2-way pressure gauge.png">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
			<!-- Modal E -->
		</div>
		<hr>
		<!-- Product E -->
		
		<!-- Product S -->
		<div class="row 3way 3-way_oval_frange_valve">
			<div class="col-md-7">
				<a href="javascript:;"> <img
					class="img-fluid rounded mb-3 mb-md-0"
					src="./css/images/3way oval frange valve.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5 info-pdn">
				<h3>
					<b>3-way oval frange valve</b>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Laudantium veniam exercitationem expedita laborum at voluptate.
					Labore, voluptates totam at aut nemo deserunt rem magni pariatur
					quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="javascript:;" onfocus="blur();"
					data-toggle="modal" data-target="#3-way_oval_frange_valve">도면보기</a>
			</div>
			<table class="table">
				<caption style="caption-side: top;">
					<h4>
						<b>기술적 자료</b>
					</h4>
				</caption>
				<thead>
					<tr>
						<th>BODY MATERIAL</th>
						<th>PRESSURE RATING</th>
						<th>PACKING</th>
						<th>PRESSURE RATING<br>MAX. TEMPERATURE
						</th>
						<th>STEM</th>
						<th>ORIFICE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2">SS316<br>Alloy 400<br>SS 316L
						</td>
						<td rowspan="2">6000psi<br>-65&#8457; to 100&#8457;<br>(-54&#8451;
							to 38&#8451;)
						</td>
						<td>Teflon</td>
						<td>4130psi at 450&#8457;<br>(232&#8451;)
						</td>
						<td rowspan="2">Vee Tip<br>Dick Tip<br>Ball Tip
						</td>
						<td rowspan=2>4.5mm</td>
					</tr>
					<tr>
						<td>Grafoil</td>
						<td>3380psi at 850&#8457;<br>(454&#8451;)
						</td>
					</tr>
				</tbody>
			</table>
			<!-- Modal S -->
			<div class="modal fade" id="3-way_oval_frange_valve" role="dialog">
				<div class="modal-dialog modal-lg">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">3-way oval frange valve</h4>
						</div>
						<div class="modal-body">
							<img width="770px"
								src="./css/images/blueprint/3-way oval frange type valve.png">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
			<!-- Modal E -->
		</div>
		<hr>
		<!-- Product E -->
		

		<!-- Product S -->
		<div class="row 3way 3way_block_handle_copy">
			<div class="col-md-7">
				<a href="javascript:;"> <img
					class="img-fluid rounded mb-3 mb-md-0"
					src="./css/images/3way block handle copy.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5 info-pdn">
				<h3>
					<b>3-way block type (handle)</b>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Laudantium veniam exercitationem expedita laborum at voluptate.
					Labore, voluptates totam at aut nemo deserunt rem magni pariatur
					quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="javascript:;" onfocus="blur();"
					data-toggle="modal" data-target="#3way_block_handle_copy">도면보기</a>
			</div>
			<table class="table">
				<caption style="caption-side: top;">
					<h4>
						<b>기술적 자료</b>
					</h4>
				</caption>
				<thead>
					<tr>
						<th>BODY MATERIAL</th>
						<th>PRESSURE RATING</th>
						<th>PACKING</th>
						<th>PRESSURE RATING<br>MAX. TEMPERATURE
						</th>
						<th>STEM</th>
						<th>ORIFICE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2">SS316<br>Alloy 400<br>SS 316L
						</td>
						<td rowspan="2">6000psi<br>-65&#8457; to 100&#8457;<br>(-54&#8451;
							to 38&#8451;)
						</td>
						<td>Teflon</td>
						<td>4130psi at 450&#8457;<br>(232&#8451;)
						</td>
						<td rowspan="2">Vee Tip<br>Dick Tip<br>Ball Tip
						</td>
						<td rowspan=2>4.5mm</td>
					</tr>
					<tr>
						<td>Grafoil</td>
						<td>3380psi at 850&#8457;<br>(454&#8451;)
						</td>
					</tr>
				</tbody>
			</table>
			<!-- Modal S -->
			<div class="modal fade" id="3way_block_handle_copy" role="dialog">
				<div class="modal-dialog modal-lg">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">3-way block type (handle)</h4>
						</div>
						<div class="modal-body">
							<img width="770px"
								src="./css/images/blueprint/3-way block handle.png">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
			<!-- Modal E -->
		</div>
		<hr>
		<!-- Product E -->
		
				

		<!-- Product S -->
		<div class="row 3way 3way_block_type">
			<div class="col-md-7">
				<a href="javascript:;"> <img
					class="img-fluid rounded mb-3 mb-md-0"
					src="./css/images/3way block type copy.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5 info-pdn">
				<h3>
					<b>3-way block type</b>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Laudantium veniam exercitationem expedita laborum at voluptate.
					Labore, voluptates totam at aut nemo deserunt rem magni pariatur
					quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="javascript:;" onfocus="blur();"
					data-toggle="modal" data-target="#3way_block_type">도면보기</a>
			</div>
			<table class="table">
				<caption style="caption-side: top;">
					<h4>
						<b>기술적 자료</b>
					</h4>
				</caption>
				<thead>
					<tr>
						<th>BODY MATERIAL</th>
						<th>PRESSURE RATING</th>
						<th>PACKING</th>
						<th>PRESSURE RATING<br>MAX. TEMPERATURE
						</th>
						<th>STEM</th>
						<th>ORIFICE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2">SS316<br>Alloy 400<br>SS 316L
						</td>
						<td rowspan="2">6000psi<br>-65&#8457; to 100&#8457;<br>(-54&#8451;
							to 38&#8451;)
						</td>
						<td>Teflon</td>
						<td>4130psi at 450&#8457;<br>(232&#8451;)
						</td>
						<td rowspan="2">Vee Tip<br>Dick Tip<br>Ball Tip
						</td>
						<td rowspan=2>4.5mm</td>
					</tr>
					<tr>
						<td>Grafoil</td>
						<td>3380psi at 850&#8457;<br>(454&#8451;)
						</td>
					</tr>
				</tbody>
			</table>
			<!-- Modal S -->
			<div class="modal fade" id="3way_block_type" role="dialog">
				<div class="modal-dialog modal-lg">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">3-way block type</h4>
						</div>
						<div class="modal-body">
							<img width="770px"
								src="./css/images/blueprint/3-way block type valve.png">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
			<!-- Modal E -->
		</div>
		<hr>
		<!-- Product E -->


		

		<!-- Product S -->
		<div class="row 3way 3-way_screw_type">
			<div class="col-md-7">
				<a href="javascript:;"> <img
					class="img-fluid rounded mb-3 mb-md-0"
					src="./css/images/3way screw type copy.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5 info-pdn">
				<h3>
					<b>3-way screw type</b>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Laudantium veniam exercitationem expedita laborum at voluptate.
					Labore, voluptates totam at aut nemo deserunt rem magni pariatur
					quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="javascript:;" onfocus="blur();"
					data-toggle="modal" data-target="#3-way_screw_type">도면보기</a>
			</div>
			<table class="table">
				<caption style="caption-side: top;">
					<h4>
						<b>기술적 자료</b>
					</h4>
				</caption>
				<thead>
					<tr>
						<th>BODY MATERIAL</th>
						<th>PRESSURE RATING</th>
						<th>PACKING</th>
						<th>PRESSURE RATING<br>MAX. TEMPERATURE
						</th>
						<th>STEM</th>
						<th>ORIFICE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2">SS316<br>Alloy 400<br>SS 316L
						</td>
						<td rowspan="2">6000psi<br>-65&#8457; to 100&#8457;<br>(-54&#8451;
							to 38&#8451;)
						</td>
						<td>Teflon</td>
						<td>4130psi at 450&#8457;<br>(232&#8451;)
						</td>
						<td rowspan="2">Vee Tip<br>Dick Tip<br>Ball Tip
						</td>
						<td rowspan=2>4.5mm</td>
					</tr>
					<tr>
						<td>Grafoil</td>
						<td>3380psi at 850&#8457;<br>(454&#8451;)
						</td>
					</tr>
				</tbody>
			</table>
			<!-- Modal S -->
			<div class="modal fade" id="3-way_screw_type" role="dialog">
				<div class="modal-dialog modal-lg">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">3-way screw type</h4>
						</div>
						<div class="modal-body">
							<img width="770px"
								src="./css/images/blueprint/3-way screw type valve.png">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
			<!-- Modal E -->
		</div>
		<hr>
		<!-- Product E -->

		<!-- Product S -->
		<div class="row 5way 5-way_block_type">
			<div class="col-md-7">
				<a href="javascript:;"> <img
					class="img-fluid rounded mb-3 mb-md-0"
					src="./css/images/5way block type copy.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5 info-pdn">
				<h3>
					<b>5-way block type</b>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Laudantium veniam exercitationem expedita laborum at voluptate.
					Labore, voluptates totam at aut nemo deserunt rem magni pariatur
					quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="javascript:;" onfocus="blur();"
					data-toggle="modal" data-target="#5-way_block_type">도면보기</a>
			</div>
			<table class="table">
				<caption style="caption-side: top;">
					<h4>
						<b>기술적 자료</b>
					</h4>
				</caption>
				<thead>
					<tr>
						<th>BODY MATERIAL</th>
						<th>PRESSURE RATING</th>
						<th>PACKING</th>
						<th>PRESSURE RATING<br>MAX. TEMPERATURE
						</th>
						<th>STEM</th>
						<th>ORIFICE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2">SS316<br>Alloy 400<br>SS 316L
						</td>
						<td rowspan="2">6000psi<br>-65&#8457; to 100&#8457;<br>(-54&#8451;
							to 38&#8451;)
						</td>
						<td>Teflon</td>
						<td>4130psi at 450&#8457;<br>(232&#8451;)
						</td>
						<td rowspan="2">Vee Tip<br>Dick Tip<br>Ball Tip
						</td>
						<td rowspan=2>3.2mm</td>
					</tr>
					<tr>
						<td>Grafoil</td>
						<td>3380psi at 850&#8457;<br>(454&#8451;)
						</td>
					</tr>
				</tbody>
			</table>
			<!-- Modal S -->
			<div class="modal fade" id="5-way_block_type" role="dialog">
				<div class="modal-dialog modal-lg">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">5-way block type</h4>
						</div>
						<div class="modal-body">
							<img width="770px"
								src="./css/images/blueprint/5-way block type valve.png">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
			<!-- Modal E -->
		</div>
		<hr>
		<!-- Product E -->

		<!-- Product S -->
		<div class="row 5way 5-way_screw_type_valve">
			<div class="col-md-7">
				<a href="javascript:;"> <img
					class="img-fluid rounded mb-3 mb-md-0"
					src="./css/images/5way screw type copy.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5 info-pdn">
				<h3>
					<b>5-way screw type valve</b>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Laudantium veniam exercitationem expedita laborum at voluptate.
					Labore, voluptates totam at aut nemo deserunt rem magni pariatur
					quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="javascript:;" onfocus="blur();"
					data-toggle="modal" data-target="#5-way_screw_type_valve">도면보기</a>
			</div>
			<table class="table">
				<caption style="caption-side: top;">
					<h4>
						<b>기술적 자료</b>
					</h4>
				</caption>
				<thead>
					<tr>
						<th>BODY MATERIAL</th>
						<th>PRESSURE RATING</th>
						<th>PACKING</th>
						<th>PRESSURE RATING<br>MAX. TEMPERATURE
						</th>
						<th>STEM</th>
						<th>ORIFICE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2">SS316<br>Alloy 400<br>SS 316L
						</td>
						<td rowspan="2">6000psi<br>-65&#8457; to 100&#8457;<br>(-54&#8451;
							to 38&#8451;)
						</td>
						<td>Teflon</td>
						<td>4130psi at 450&#8457;<br>(232&#8451;)
						</td>
						<td rowspan="2">Vee Tip<br>Dick Tip<br>Ball Tip
						</td>
						<td rowspan=2>3.2mm</td>
					</tr>
					<tr>
						<td>Grafoil</td>
						<td>3380psi at 850&#8457;<br>(454&#8451;)
						</td>
					</tr>
				</tbody>
			</table>
			<!-- Modal S -->
			<div class="modal fade" id="5-way_screw_type_valve" role="dialog">
				<div class="modal-dialog modal-lg">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">5-way screw type valve</h4>
						</div>
						<div class="modal-body">
							<img width="770px"
								src="./css/images/blueprint/5-way screw type valve.png">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
			<!-- Modal E -->
		</div>
		<hr>
		<!-- Product E -->


		<!-- Product S -->
		<div class="row 5way 5-way_single_type_valve">
			<div class="col-md-7">
				<a href="javascript:;"> <img
					class="img-fluid rounded mb-3 mb-md-0"
					src="./css/images/5way Single type copy.jpg" alt="">
				</a>
			</div>
			<div class="col-md-5 info-pdn">
				<h3>
					<b>5-way single type valve</b>
				</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Laudantium veniam exercitationem expedita laborum at voluptate.
					Labore, voluptates totam at aut nemo deserunt rem magni pariatur
					quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="javascript:;" onfocus="blur();"
					data-toggle="modal" data-target="#5-way_single_type_valve">도면보기</a>
			</div>
			<table class="table">
				<caption style="caption-side: top;">
					<h4>
						<b>기술적 자료</b>
					</h4>
				</caption>
				<thead>
					<tr>
						<th>BODY MATERIAL</th>
						<th>PRESSURE RATING</th>
						<th>PACKING</th>
						<th>PRESSURE RATING<br>MAX. TEMPERATURE
						</th>
						<th>STEM</th>
						<th>ORIFICE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2">SS316<br>Alloy 400<br>SS 316L
						</td>
						<td rowspan="2">6000psi<br>-65&#8457; to 100&#8457;<br>(-54&#8451;
							to 38&#8451;)
						</td>
						<td>Teflon</td>
						<td>4130psi at 450&#8457;<br>(232&#8451;)
						</td>
						<td rowspan="2">Vee Tip<br>Dick Tip<br>Ball Tip
						</td>
						<td rowspan=2>3.2mm</td>
					</tr>
					<tr>
						<td>Grafoil</td>
						<td>3380psi at 850&#8457;<br>(454&#8451;)
						</td>
					</tr>
				</tbody>
			</table>
			<!-- Modal S -->
			<div class="modal fade" id="5-way_single_type_valve" role="dialog">
				<div class="modal-dialog modal-lg">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">5-way single type valve</h4>
						</div>
						<div class="modal-body">
							<img width="770px"
								src="./css/images/blueprint/5-way single type valve.png">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
						</div>
					</div>

				</div>
			</div>
			<!-- Modal E -->
		</div>
		<hr>
		<!-- Product E -->

	</div>
	<!-- /.container -->

	<!-- Footer S -->
	<jsp:include page="footer.jsp" flush="false" />
	<!-- Footer E -->

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/tether/tether.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function fnSetFocus(type, type_nm) { 

			if (type.toUpperCase() != 'ID') {
				var focus_id = '.' + type_nm;
			} else {
				var focus_id = '#' + type_nm;
			}

			var intOffset = $(focus_id).offset(); 
			var intOffsetTop = intOffset.top - 70; 
			var intOffsetLeft = intOffset.left;

			$('body, html').stop(); 
			$('body, html').animate({
				scrollTop : intOffsetTop
			}, 'fast'); 

		}
		$(function(){
			if('<%=valve%>'){
				fnSetFocus('class','<%=valve%>');	
			}
		});
	
	</script>

</body>

</html>


