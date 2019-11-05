<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KH & GYM_LoungeView</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 부트스트랩 -->
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap-theme.css">
<link rel="stylesheet" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">

<!-- css 적용 -->
<link rel="stylesheet" href="../css\main.css">
<link rel="stylesheet" href="../css\loungeview.css">
<link rel="stylesheet" href="../css\nav_accordian.css">

<!-- js 적용 -->
<script type="text/javascript" src="js\loungeview.js"></script>
<script type="text/javascript" src="js/main_navaccordian.js"></script>
</head>

<body>
	<div id="wrap">
		<div id="header">
			<h1>
				<a href="http://localhost:8090/semiproject/main"><img src="images/KHGYM_logo.png" alt="KH & GYM" id="mainlogotop"></a>
			</h1>
			<div style="position: relative;">
				<div class="nav_accordian" id="center_accordian">
					<ul id="navmenu">
						<li>
							<h3>
								<span class="aboutcenter"></span>About Center
							</h3>
							<ul id="aboutcenter_sub">
								<li><a href="http://localhost:8090/semiproject/greeting">Greeting</a></li>
								<li><a href="http://localhost:8090/semiproject/instructor">Instructor</a></li>
								<li><a href="http://localhost:8090/semiproject/loungeview">Lounge View</a></li>
								<li><a href="http://localhost:8090/semiproject/location">Location</a></li>
							</ul>
					</ul>
				</div>
				<div class="nav_accordian" id="program_accordian">
					<ul id="navmenu">
						<li>
							<h3>
								<span class="program"></span>Program
							</h3>
							<ul id="program_sub">
								<li><a href="http://localhost:8090/semiproject/aboutprogram">About Program</a></li>
								<li><a href="http://localhost:8090/semiproject/registration">Registration</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="nav_accordian" id="community_accordian">
					<ul id="navmenu">
						<li>
							<h3>
								<span class="community"></span>Community
							</h3>
							<ul id="community_sub">
								<li><a href="http://localhost:8090/semiproject/notice">Notice</a></li>
								<li><a href="http://localhost:8090/semiproject/qna">Q & A</a></li>
								<li><a href="http://localhost:8090/semiproject/review">Review</a></li>
								<li><a href="http://localhost:8090/semiproject/information">Information</a></li>
							</ul>
						<li>
					</ul>
				</div>
				<div class="nav_accordian" id="account_accordian">
					<ul id="navmenu">
						<li>
							<h3>
								<span class="account"></span>Account
							</h3>
							<ul id="account_sub">
								<li><a href="#">Login</a></li>
								<li><a href="#">Join</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- header end -->
		<div id="section">
			<!-- 메인이미지 -->
			<img src="images/loungeview1.png" width="100%" height="10%">

			<!-- 메인 아래 설명 내용 -->
			<img id="content" src="images/lounge_content1.png" width="50%"
				height="20%">

			<!-- 운동 목록 -->
			<table>
				<tr>
					<!--btn1(p.t.) -->
					<td><img class="allBtn" id="btn1" src="images/lounge_btn1.png"></td>

					<!--btn2(spinning) -->
					<td><img class="allBtn" id="btn2" src="images/lounge_btn2.png"></td>

					<!--btn3(yoga) -->
					<td><img class="allBtn" id="btn3" src="images/lounge_btn3.png"></td>

					<!--btn4(pilates) -->
					<td><img class="allBtn" id="btn4" src="images/lounge_btn4.png"></td>
				</tr>
			</table>

			<!-- ////////////////////////////캐러샐pt///////////////////////////////////////////// -->
			<div id="myCarousel_pt" class="carousel slide" data-ride="carousel"
				data-interval="2000">
				<!--페이지-->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel_pt" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel_pt" data-slide-to="1"></li>
					<li data-target="#myCarousel_pt" data-slide-to="2"></li>
				</ol>
				<!--페이지-->

				<div class="carousel-inner">
					<!--슬라이드1-->
					<div class="item active">
						<img src="images/pt1.png" style="width: 70%" alt="First slide">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<!--슬라이드1-->

					<!--슬라이드2-->
					<div class="item">
						<img src="images/pt2.png" style="width: 70%" data-src=""
							alt="Second slide">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<!--슬라이드2-->

					<!--슬라이드3-->
					<div class="item">
						<img src="images/pt3.png" style="width: 70%" data-src=""
							alt="Third slide">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<!--슬라이드3-->
				</div>
			</div>
			<!-- ///////////////////캐러샐 종료///////////////// -->


			<!-- spinning img -->
			<!-- ////////////////////////////캐러샐///////////////////////////////////////////// -->
			<div id="myCarousel_spinning" class="carousel slide"
				data-ride="carousel" data-interval="2000">

				<!--페이지-->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel_spinningl" data-slide-to="0"
						class="active"></li>
					<li data-target="#myCarousel_spinning" data-slide-to="1"></li>
					<li data-target="#myCarousel_spinning" data-slide-to="2"></li>
				</ol>
				<!--페이지-->

				<div class="carousel-inner">
					<!--슬라이드1-->
					<div class="item active">
						<img src="images/spinning1.png" style="width: 70%"
							alt="First slide">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<!--슬라이드1-->

					<!--슬라이드2-->
					<div class="item">
						<img src="images/spinning2.png" style="width: 70%" data-src=""
							alt="Second slide">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<!--슬라이드2-->

					<!--슬라이드3-->
					<div class="item">
						<img src="images/spinning3.png" style="width: 70%" data-src=""
							alt="Third slide">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<!--슬라이드3-->
				</div>
			</div>
			<!-- ///////////////////캐러샐 종료///////////////// -->


			<!-- yoga img -->
			<!-- ////////////////////////////캐러샐yoga///////////////////////////////////////////// -->
			<div id="myCarousel_yoga" class="carousel slide" data-ride="carousel"
				data-interval="2000">

				<!--페이지-->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel_yoga" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel_yoga" data-slide-to="1"></li>
					<li data-target="#myCarousel_yoga" data-slide-to="2"></li>
				</ol>
				<!--페이지-->

				<div class="carousel-inner">
					<!--슬라이드1-->
					<div class="item active">
						<img src="images/yoga1.png" style="width: 70%" alt="First slide">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<!--슬라이드1-->

					<!--슬라이드2-->
					<div class="item">
						<img src="images/yoga2.png" style="width: 70%" data-src=""
							alt="Second slide">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<!--슬라이드2-->

					<!--슬라이드3-->
					<div class="item">
						<img src="images/yoga3.png" style="width: 70%" data-src=""
							alt="Third slide">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<!--슬라이드3-->
				</div>
			</div>
			<!-- ///////////////////캐러샐 종료///////////////// -->

			<!-- pilates img -->
			<!-- ////////////////////////////캐러샐///////////////////////////////////////////// -->
			<div id="myCarousel_pilates" class="carousel slide"
				data-ride="carousel" data-interval="2000">

				<!--페이지-->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel_pilates" data-slide-to="0"
						class="active"></li>
					<li data-target="#myCarousel_pilates" data-slide-to="1"></li>
					<li data-target="#myCarousel_pilates" data-slide-to="2"></li>
				</ol>
				<!--페이지-->

				<div class="carousel-inner">
					<!--슬라이드1-->
					<div class="item active">
						<img src="images/pilates1.png" style="width: 70%"
							alt="First slide">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<!--슬라이드1-->

					<!--슬라이드2-->
					<div class="item">
						<img src="images/pilates2.png" style="width: 70%" data-src=""
							alt="Second slide">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<!--슬라이드2-->

					<!--슬라이드3-->
					<div class="item">
						<img src="images/pilates3.png" style="width: 70%" data-src=""
							alt="Third slide">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<!--슬라이드3-->
				</div>
			</div>
			<!-- ///////////////////캐러샐 종료///////////////// -->
			<!-- 내용 이미지 p.t-->
			<img class="content" id="content1" src="images/lounge_pt_text.png"
				width="90%" height="300px">

			<!-- 내용 이미지 spinning-->
			<img class="content" id="content2"
				src="images/lounge_spinning_text.png" width="90%" height="300px">

			<!-- 내용 이미지 yoga-->
			<img class="content" id="content3" src="images/lounge_yoga_text.png"
				width="90%" height="300px">

			<!-- 내용 이미지 pilates-->
			<img class="content" id="content4"
				src="images/lounge_pilates_text.png" width="90%" height="300px">
		</div>
		<div id="footer">
			<a href="http://localhost:8090/semiproject/main">
			<img src="images/KHGYM_logo.png" alt="KH & GYM" id="mainlogofooter">
			</a>
			<div style="position: relative">
				<p id="footer_copyright">KH & GYM corp. copyleftⓒ</p>
				<p id="footer_company">상표명 : KH & GYM</p>
				<p id="footer_location">주소 : 서울특별시 강남구 역삼동 강남구 테헤란로14길</p>
				<p id="footer_manager">사업자 : 한윤희</p>
				<p id="footer_tel">TEL : 02) 0123-4567</p>
			</div>
		</div>
		<!-- footer end -->
	</div>




</body>
</html>