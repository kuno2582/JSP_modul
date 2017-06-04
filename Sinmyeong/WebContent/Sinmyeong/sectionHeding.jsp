<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Full Width Pics - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/full-width-pics.css" rel="stylesheet">

    <!-- Temporary navbar container fix -->
    <style>
    .navbar-toggler {
        z-index: 1;
    }
    
    @media (max-width: 576px) {
        nav > .container {
            width: 100%;
        }
    }
    
    .logo {
    	border-radius: 10px;
    }
    </style>

</head>

<body>

	<!-- Navigation// -->
	<%@include file="navBar.jsp"%>
	<!-- //Navigation -->

    <!-- Header - set the background image for the header in the line below -->
    <header class="py-5 bg-image-full" style="">
        <img class="img-fluid d-block mx-auto logo" src="css/images/Sinmyung_mark_e.jpg" alt="">
    </header>

    <!-- Content section -->
    <section class="py-5">
        <div class="container">
            <h1><b>신 명 정 밀</b></h1>
			<p >
				<br>신명정밀은 1997년 설립되어 국내뿐만 아니라 전세계적으로 사용되는 유압밸브를 가공하는 기업으로 발전해
				왔습니다. <br>신명정밀은 좋은 제품과 서비스, 그리고 시민의식을 통해 신뢰받는 기업으로 인정받아 왔으며,<br> 최고의 제품을 만들기
				위해 최선을 다하고 있습니다. <br>신명정밀의 정신이 고객 여러분의 부가가치 창출과 생산성 향상에 큰 힘이 되길 기원합니다.
			</p>
		</div>
    </section>

    <!-- Image Section - set the background image for the header in the line below -->
    <section class="py-5 bg-image-full" style="background-image: url('css/mainBanner/valves2.jpg');">
        <!-- Put anything you want here! There is just a spacer below for demo purposes! -->
        <div style="height: 200px;"></div>
    </section>

    <!-- Footer S -->
	<jsp:include page="footer.jsp" flush="false" />
	<!-- Footer E -->

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/tether/tether.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>
