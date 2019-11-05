<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KH & GYM _ Information</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var page = 1;

		/* 페이지가 로딩이 되면 page에 1씩 더하면서 20개 스크롤 로딩 하고 무한 스크롤 함수 바인딩 */
		/* 바인딩 : 각종 값들이 확정되어 더 이상 변경할 수 없는 구속(bind) 상태가 되는 것*/
		for (var i = 0; i <= 20; i++) {
			page = i;

			$("<h1>" + page + " line scroll</h1>").appendTo("#content");

			if (page == 20) {
				$(window).bind("scroll", infinityScroll);
			}
		}

		function infinityScroll() {
			//현재문서의 높이를 구함.
			var documentHeight = $(document).height();
			console.log("documentHeight : " + documentHeight);

			//scrollTop() 메서드는 선택된 요소의 세로 스크롤 위치를 설정하거나 반환    
			//스크롤바가 맨 위쪽에 있을때 , 위치는 0
			console.log("window의 scrollTop() : " + $(window).scrollTop());
			//height() 메서드는 브라우저 창의 높이를 설정하거나 반환
			console.log("window의 height() : " + $(window).height());

			//세로 스크롤위치 max값과 창의 높이를 더하면 현재문서의 높이를 구할수있음.
			//세로 스크롤위치 값이 max이면 문서의 끝에 도달했다는 의미
			var scrollHeight = $(window).scrollTop() + $(window).height();
			console.log("scrollHeight : " + scrollHeight);

			if (scrollHeight == documentHeight) { //문서의 맨끝에 도달했을때 내용 추가 
				for (var i = 0; i < 10; i++) {
					//page = page + 1;
					page++;
					//$("<h1> infinity scroll </h>").appendTo("body");
					$("<h1>" + page + " line scroll</h1>").appendTo("#content");
				}
			}
		}
	});
</script>
<!-- 부트스트랩 -->
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap-theme.css">
<link rel="stylesheet" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">

<!-- css 적용 -->
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/nav_accordian.css">

<!-- js 적용 -->
<script type="text/javascript" src="js/main_navaccordian.js"></script>

</head>
<body>
	<div id="wrap">
		<div id="header">
			<h1>
				<a href="http://localhost:8090/semiproject/main"><img
					src="images/KHGYM_logo.png" alt="KH & GYM" id="mainlogotop"></a>
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
								<li><a href="http://localhost:8090/semiproject/loungeview">Lounge
										View</a></li>
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
								<li><a
									href="http://localhost:8090/semiproject/aboutprogram">About
										Program</a></li>
								<li><a
									href="http://localhost:8090/semiproject/registration">Registration</a></li>
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
								<li><a href="http://localhost:8090/semiproject/qna">Q &
										A</a></li>
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
			<div id="content"></div>
		</div>
		<!-- section end -->
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