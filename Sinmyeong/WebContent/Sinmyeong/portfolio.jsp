<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
    
    @media (max-width: 576px) {
        nav > .container {
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
    </style>

</head>

<body>

	<!-- Navigation// -->
	<%@include file="navBar.jsp"%>
	<!-- //Navigation -->

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading -->
        <h1 class="my-4">제품 정보</h1>

        <!-- Project One -->
		<div class="row">
			<div class="col-md-7">
				<a href="#"> <img class="img-fluid rounded mb-3 mb-md-0"
					src="http://placehold.it/700x300" alt="">
				</a>
			</div>
			<div class="col-md-5">
				<h3>Project One</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Laudantium veniam exercitationem expedita laborum at voluptate.
					Labore, voluptates totam at aut nemo deserunt rem magni pariatur
					quos perspiciatis atque eveniet unde.</p>
				<a class="btn btn-primary" href="#">도면보기</a>
			</div>
			<table class="table">
				<thead>
					<tr>
						<th>BODY MATERIAL</th>
						<th>PRESSURE RATING</th>
						<th>PACKING</th>
						<th>PRESSURE RATING<br>MAX. TEMPERATURE</th>
						<th>STEM</th>
						<th>ORIFICE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2">SS316<br>Alloy 400<br>SS 316L</td>
						<td rowspan="2">6000psi<br>-65&#8457; to 100&#8457;<br>(-54&#8451; to 38&#8451;)</td>
						<td>Teflon</td>
						<td>4130psi at 450&#8457;<br>(232&#8451;)</td>
						<td>Grafoil</td>
						<td>3380psi at 850&#8457;<br>(454&#8451;)</td>
						<td rowspan="2"></td>
						<td rowspan=2></td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- /.row -->

        <!-- Project Two -->
        <div class="row">
            <div class="col-md-7">
                <a href="#">
                    <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
                </a>
            </div>
            <div class="col-md-5">
                <h3>Project Two</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, odit velit cumque vero doloremque repellendus distinctio maiores rem expedita a nam vitae modi quidem similique ducimus! Velit, esse totam tempore.</p>
                <a class="btn btn-primary" href="#">View Project</a>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Project Three -->
        <div class="row">
            <div class="col-md-7">
                <a href="#">
                    <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
                </a>
            </div>
            <div class="col-md-5">
                <h3>Project Three</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, temporibus, dolores, at, praesentium ut unde repudiandae voluptatum sit ab debitis suscipit fugiat natus velit excepturi amet commodi deleniti alias possimus!</p>
                <a class="btn btn-primary" href="#">View Project</a>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Project Four -->
        <div class="row">

            <div class="col-md-7">
                <a href="#">
                    <img class="img-fluid rounded mb-3 mb-md-0" src="http://placehold.it/700x300" alt="">
                </a>
            </div>
            <div class="col-md-5">
                <h3>Project Four</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, quidem, consectetur, officia rem officiis illum aliquam perspiciatis aspernatur quod modi hic nemo qui soluta aut eius fugit quam in suscipit?</p>
                <a class="btn btn-primary" href="#">View Project</a>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Pagination -->
        <ul class="pagination justify-content-center">
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">1</a></li>
            <li class="page-item">
                <a class="page-link" href="#">2</a></li>
            <li class="page-item">
                <a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
            </li>
        </ul>

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-inverse">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
        </div>
        <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/tether/tether.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>
