<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="js/main_mini_location.js"></script>

<!-- 부트스트랩 -->
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap-theme.css">
<link rel="stylesheet" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">

<!-- css 적용 -->
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/nav_accordian.css">
<link rel="stylesheet" href="../css/location.css">

<!-- js 적용 -->
<script type="text/javascript" src="js/main_navaccordian.js"></script>

<!-- location 맵 js -->
<script
	src="//maps.googleapis.com/maps/api/js?key=AIzaSyA1ZvigA9nlrvCEkKzxjOWmZTYFKjyWcYo"
	async="" defer="defer" type="text/javascript"></script>
<script type="text/javascript" src="js/main_mini_location.js"></script>

<style type="text/css">
</style>
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
			<div id="location_intro">
				<img src="images/location_img.png" width="100%">
			</div>

			<div id="location_intro2">
				<img src="images/location.png">
				<hr>
				<img src="images/locationInfo.png">
			</div>

			<div id="mini_map_view" style="width: 800px; height: 480px;"></div>
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