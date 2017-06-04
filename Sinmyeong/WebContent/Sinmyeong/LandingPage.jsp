<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Landing Page - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/landing-page.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

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
    </style>

</head>

<body>

	<!-- Navigation// -->
	<%@include file="navBar.jsp"%>
	<!-- //Navigation -->

    <!-- Header -->
    <header class="intro-header">
        <div class="container">
            <div class="intro-message">
                <h1>Certifications</h1>
                <h3>인증서</h3>
                <hr class="intro-divider">
                <ul class="list-inline intro-social-buttons">
                    <li class="list-inline-item">
                        <a href="javascript:;" onclick="fnSetFocus('class','content-section-a');" class="btn btn-secondary btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name"><b>ISO</b></span></a>
                    </li>
                    <li class="list-inline-item">
                        <a href="javascript:;" onclick="fnSetFocus('class','test_report');" class="btn btn-secondary btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name"><b>TEST REPORT</b></span></a>
                    </li>
                    
                </ul>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <section class="content-section-a">

        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">ISO 9001</h2>
                    <h4 class="section-heading">CERTIFICATE NO:<br> AQ-16H121<br></h4>
                    <h4 class="section-heading">SINMYUNG MACHINE CO.</h4>
                    <h4 class="section-heading">12 AUG 2016</h4>
                </div>
                <div class="col-lg-5 offset-lg-2">
                	<a href="javascript:;" data-toggle="modal" data-target="#iso9001">
                   		<img class="img-fluid" src="css/images/iso9001.jpg" alt="">
                    </a>
                </div>
				<!-- Modal S -->
				<div class="modal fade" id="iso9001" role="dialog">
					<div class="modal-dialog modal-lg">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">ISO 9001</h4>
							</div>
							<div class="modal-body">
								<img width="770px"
									src="css/images/iso9001.jpg">
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
        </div>
        <!-- /.container -->
    </section>

    <section class="content-section-b">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 push-lg-7">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">ISO 14001</h2>
                    <h4 class="section-heading">CERTIFICATE NO:<br> AE-16H121<br></h4>
                    <h4 class="section-heading">SINMYUNG MACHINE CO.</h4>
                    <h4 class="section-heading">12 AUG 2016</h4>
                </div>
                <div class="col-lg-5 pull-lg-5">
                	<a href="javascript:;" data-toggle="modal" data-target="#iso14001">
                    	<img class="img-fluid" src="css/images/iso14001.jpg" alt="">
                    </a>
                </div>
                <!-- Modal S -->
				<div class="modal fade" id="iso14001" role="dialog">
					<div class="modal-dialog modal-lg">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">ISO 14001</h4>
							</div>
							<div class="modal-body">
								<img width="770px"
									src="css/images/iso14001.jpg">
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
        </div>
        <!-- /.container -->

    </section>
    <!-- /.content-section-b -->

    <section class="content-section-a test_report">

        <div class="container">

            <div class="row">
                <div class="col-lg-5">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">INSPECTION REPORT</h2>
                    <h4 class="section-heading">SINMYUNG MACHINE CO.</h4>
                    <h4 class="section-heading">31 JAN 2017</h4>
                </div>
                <div class="col-lg-5 offset-lg-2">
                	<a href="javascript:;" data-toggle="modal" data-target="#inspection_report">
                    	<img class="img-fluid" src="css/images/inspection report.jpg" alt="">
                    </a>
                </div>
                <!-- Modal S -->
				<div class="modal fade" id="inspection_report" role="dialog">
					<div class="modal-dialog modal-lg">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">INSPECTION REPORT</h4>
							</div>
							<div class="modal-body">
								<img width="770px"
									src="css/images/inspection report.jpg">
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

        </div>
        <!-- /.container -->

    </section>
    <!-- /.content-section-a -->

    <section class="content-section-b">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 push-lg-7">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">PRESSURE TEST REPORT</h2>
                    <h4 class="section-heading">2 - WAY</h4>
                    <h4 class="section-heading">SINMYUNG MACHINE CO.</h4>
                </div>
                <div class="col-lg-5 pull-lg-5">
                	<a href="javascript:;" data-toggle="modal" data-target="#test_report_2way">
                    	<img class="img-fluid" src="css/images/test report 2way.jpg" alt="">
                    </a>
                </div>
                <!-- Modal S -->
				<div class="modal fade" id="test_report_2way" role="dialog">
					<div class="modal-dialog modal-lg">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">PRESSURE TEST REPORT 2-WAY</h4>
							</div>
							<div class="modal-body">
								<img width="770px"
									src="css/images/test report 2way.jpg">
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
        </div>
        <!-- /.container -->

    </section>
    <!-- /.content-section-b -->
    
    <section class="content-section-a">

        <div class="container">

            <div class="row">
                <div class="col-lg-5">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">PRESSURE TEST REPORT</h2>
                    <h4 class="section-heading">3 - WAY</h4>
                    <h4 class="section-heading">SINMYUNG MACHINE CO.</h4>
                </div>
                <div class="col-lg-5 offset-lg-2">
                	<a href="javascript:;" data-toggle="modal" data-target="#test_report_3way">
                    	<img class="img-fluid" src="css/images/test report 3way.jpg" alt="">
                    </a>
                </div>
                <!-- Modal S -->
				<div class="modal fade" id="test_report_3way" role="dialog">
					<div class="modal-dialog modal-lg">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">PRESSURE TEST REPORT 3-WAY</h4>
							</div>
							<div class="modal-body">
								<img width="770px"
									src="css/images/test report 3way.jpg">
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

        </div>
        <!-- /.container -->

    </section>
    <!-- /.content-section-a -->

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
			var intOffsetTop = intOffset.top - 50; 
			var intOffsetLeft = intOffset.left;

			$('body, html').stop(); 
			$('body, html').animate({
				scrollTop : intOffsetTop
			}, 'fast'); 

		}
	
	</script>

</body>

</html>
