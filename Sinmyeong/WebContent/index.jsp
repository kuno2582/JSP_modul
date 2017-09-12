<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Business Frontpage - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/business-frontpage.css" rel="stylesheet">
<link href="css/jquery.bxslider.min.css" rel="stylesheet">

<script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>

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

.bx-wrapper, .bx-viewport {
    height: 400px !important; 
}

.bx-viewport {
	padding: 0 30px;
}

.bx-wrapper .bx-next {
	right: 5px;
}
.bx-wrapper .bx-prev {
	left: 5px;
}

.card-title {
	margin-bottom: 0;
	font-weight: 2em;
}
.MachineInfo {
	display: block;
	text-align: center;
	padding: 70px 0px;
}
.bottom-line {
	border: 2px solid red;
	background-color: red;
	display: inline-block;
	width: 20%;
}
.machineDiv {
	width: 23%;
}
</style>

</head>

<body>

	<!-- Navigation// -->
	<jsp:include page="navBar.jsp" flush="false" />
	<!-- //Navigation -->

	<!-- Header with Background Image -->
	<header class="business-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="display-3 text-white mt-4"></h1>
				</div>
			</div>
		</div>
	</header>

	<!-- Page Content -->
	<div class="container">
		<!-- Info row -->
		<div class="row">
			<div class="col-sm-8">
				<h2 class="mt-4 MachineInfo-h2">
				<img class="card-img-top img-fluid" width="50px;"
						src="./css/images/Sinmyung_mark_e.jpg" alt="">
					<strong>신 명 정 밀</strong>
				</h2>
				<p class="introduce-p">
					<br>신명정밀은 1997년 설립되어 국내뿐만 아니라 전세계적으로 사용되는 유압밸브를 가공하는 기업으로 발전해
					왔습니다. 신명정밀은 좋은 제품과 서비스, 그리고 시민의식을 통해 신뢰받는 기업으로 인정받아 왔으며, 최고의 제품을
					만들기 위해 최선을 다하고 있습니다. 신명정밀의 정신이 고객 여러분의 부가가치 창출과 생산성 향상에 큰 힘이 되길
					기원합니다.
				</p>
			</div>
			<div class="col-sm-4">
				<h2 class="mt-4">Contact Us</h2>
				<div>
					<strong>신 명 정 밀</strong><br>
					<b>경기도 화성시 남양읍 <br>주석로 79-5
					</b> <br>
				</div>
				<div>
					<abbr title="Phone">P:</abbr> (031) 357-4741 <br> 
					<abbr title="Mobile">M:</abbr> 010-3749-6109 <br>
					<abbr title="Email">E:</abbr> <a href="mailto:kjh6109@hanmail.net">kjh6109@hanmail.net</a>
				</div>
			</div>
		</div>
		<!-- /.row -->
		<!-- Product row -->
		<div class="row">
			<jsp:include page="ptDataBannerPage.jsp" flush="false" />
		</div>
		<!-- /.row -->
		<!-- Product row -->
		<div class="row MachineInfo">
			<h2 class="MachineInfo-h2"><strong>보유기계</strong></h2>
			<div class="bottom-line"></div><br>
			<div class="col-sm-3 my-3 machineDiv" style="display:inline-block;">
				<div class="card">
					<img class="card-img-top img-fluid"
						src="./css/images/LYNX_2100.jpg" alt="">
					<div class="card-block">
						<h4 class="card-title"><b>LYNX_2100</b></h4>
					</div>
				</div>
			</div>
			<div class="col-sm-3 my-3 machineDiv" style="display:inline-block;">
				<div class="card">
					<img class="card-img-top img-fluid"
						src="./css/images/MYNX_6500.png" alt="">
					<div class="card-block">
						<h4 class="card-title"><b>MYNX_6500</b></h4>
					</div>
				</div>
			</div>
			<div class="col-sm-3 my-3 machineDiv" style="display:inline-block;">
				<div class="card">
					<img class="card-img-top img-fluid"
						src="./css/images/PCV40.jpeg" alt="">
					<div class="card-block">
						<h4 class="card-title"><b>PCV40</b></h4>
					</div>
				</div>
			</div>
			<div class="col-sm-3 my-3 machineDiv" style="display:inline-block;">
				<div class="card">
					<img class="card-img-top img-fluid"
						src="./css/images/PL30.jpg" alt="">
					<div class="card-block">
						<h4 class="card-title"><b>PL30</b></h4>
					</div>
				</div>
			</div>		
		</div>
		<!-- /.row -->	
		<h2 class="MachineInfo-h2" style="margin-bottom: 30px;"><strong>위치</strong></h2>
		<div id="daumRoughmapContainer1495981578652" class="root_daum_roughmap root_daum_roughmap_landing" style="margin-bottom: 50px;"></div>

	</div>
	<!-- /.container -->

	<!-- Footer S -->
	<jsp:include page="footer.jsp" flush="false" />
	<!-- Footer E -->

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/tether/tether.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>

</body>
<script type="text/javascript">

$(function() {

	var main_acad_Slider = $('.ptDataBanner').bxSlider({
		mode : 'horizontal',// 가로 방향 수평 슬라이드
		speed : 500, // 이동 속도를 설정
		pager : true, // 현재 위치 페이징 표시 여부 설정
		moveSlides : 1, // 슬라이드 이동시 개수
		slideWidth : 400, // 슬라이드 너비
		minSlides : 3, // 최소 노출 개수
		maxSlides : 3, // 최대 노출 개수
		slideMargin : 16, // 슬라이드간의 간격
		auto : true, // 자동 실행 여부
		autoHover : true, // 마우스 호버시 정지 여부
		controls : true, // 이전 다음 버튼 노출 여부
		responsive : true,
		touchEnabled : true
	});

	//이전 버튼을 클릭하면 이전 슬라이드로 전환
	$('#bnrset_pre').on('click', function() {
		main_acad_Slider.goToPrevSlide(); //이전 슬라이드 배너로 이동
		return false; //<a>에 링크 차단
	});

	//다음 버튼을 클릭하면 다음 슬라이드로 전환
	$('#bnrset_next').on('click', function() {
		main_acad_Slider.goToNextSlide(); //다음 슬라이드 배너로 이동
		return false;
	});
	
	new daum.roughmap.Lander({
		"timestamp" : "1495981578652",
		"key" : "hvfi",
		"mapWidth" : "1100",
		"mapHeight" : "300"
	}).render();

});
</script>
</html>
