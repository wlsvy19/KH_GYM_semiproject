<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 
 
 <script src="js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">



<!-- js 적용 -->
<script type="text/javascript" src="js/main_navaccordian.js"></script>
<script type="text/javascript" src="js/main_greeting.js"></script>
<script type="text/javascript" src="js/main_aboutProgram.js"></script>
<script type="text/javascript" src="js/main_instructor.js"></script>
<script type="text/javascript" src="js/main_loungeview.js"></script>
<script type="text/javascript" src="js/main_location.js"></script>

<!-- location 맵 js -->
<script
	src="//maps.googleapis.com/maps/api/js?key=AIzaSyA1ZvigA9nlrvCEkKzxjOWmZTYFKjyWcYo"
	async="" defer="defer" type="text/javascript"></script>
<script type="text/javascript" src="js/main_mini_location.js"></script>

<!-- bxslider -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.css"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.js"></script>

<!-- bxslider js -->
<script type="text/javascript" src="js/main_bxslider.js"></script>
 
 
 
 <script type="text/javascript">

//모든 공백 체크 정규식
var empJ = /\s/g;
//아이디 정규식
var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
// 비밀번호 정규식
var pwJ = /^[A-Za-z0-9]{4,12}$/;
// 이름 정규식
var nameJ = /^[가-힣]{2,6}$/;
// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
// 휴대폰 번호 정규식
var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;

var birthJ = false;

$(document).ready(function() {
	
	  $('form').on('submit',function(){
			var inval_Arr = new Array(5).fill(false);
			
			if (idJ.test($('#user_id').val())) {
				inval_Arr[0] = true;	
			} else {
				inval_Arr[0] = false;
				alert('아이디를  확인하세요!');
				return false;
			}
			
			// 비밀번호가 같은 경우 && 비밀번호 정규식
			if (($('#user_pw').val() == ($('#user_pw2').val()))
					&& pwJ.test($('#user_pw').val())) {
				inval_Arr[1] = true;
			} else {
				inval_Arr[1] = false;
				alert("비밀번호를 확인하세요!");
				return false;
			}
			// 이름 정규식
			if (nameJ.test($('#user_name').val())) {
				inval_Arr[2] = true;	
			} else {
				inval_Arr[2] = false;
				alert("이름을 확인하세요!");
				return false;
			}
			
			// 생년월일 정규식
			 if (birthJ) {
				console.log(birthJ);
				inval_Arr[3] = true; 
			} else {
				inval_Arr[3] = false;
				alert("생년월일을 확인하세요!");
				return false;
			} 
			
			// 이메일 정규식
			if (mailJ.test($('#user_email').val())){
				console.log(phoneJ.test($('#user_email').val()));
				inval_Arr[4] = true;
			} else {
				inval_Arr[4] = false;
				alert("이메일을 확인하세요!");
				return false;
			}
			// 휴대폰번호 정규식
			if (phoneJ.test($('#user_phone').val())) {
				console.log(phoneJ.test($('#user_phone').val()));
				inval_Arr[5] = true;
			} else {
				inval_Arr[5] = false;
				alert("핸드폰 번호를 확인하세요!");
				return false;
				
			}
			
			
			var validAll = true;
			for(var i = 0; i < inval_Arr.length; i++){
				
				if(inval_Arr[i] == false){
					validAll = false;
				}
			}
			
			if(validAll == true){ // 유효성 모두 통과
				alert('회원가입이 성공적으로 완료되었습니다!');
				
			} else{
				alert('정보를 다시 확인해주세요!')
				
				
			}
       });


   $('#user_id').blur(function() {
      if (idJ.test($('#user_id').val())) {
         console.log('true');
         $('#id_check').text('');
      } else {
         console.log('false');
         $('#id_check').text('5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.');
         $('#id_check').css('color', 'red');
      }
   });
   $('#user_pw').blur(function() {
      if (pwJ.test($('#user_pw').val())) {
         console.log('true');
         $('#pw_check').text('');
      } else {
         console.log('false');
         $('#pw_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
         $('#pw_check').css('color', 'red');
      }
   });

   //1~2 패스워드 일치 확인
   $('#user_pw2').blur(function() {
      if ($('#user_pw').val() != $(this).val()) {
         $('#pw2_check').text('비밀번호가 일치하지 않습니다.');
         $('#pw2_check').css('color', 'red');
      } else {
         $('#pw2_check').text('');
      }
   });

   //이름에 특수문자 들어가지 않도록 설정
   $("#user_name").blur(function() {
      if (nameJ.test($(this).val())) {
         console.log(nameJ.test($(this).val()));
         $("#name_check").text('');
      } else {
         $('#name_check').text('한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)');
         $('#name_check').css('color', 'red');
      }
   });
   $("#user_email").blur(function() {
      if (mailJ.test($(this).val())) {
         console.log(nameJ.test($(this).val()));
         $("#name_check").text('');
      } else {
         $('#email_check').text('이메일 양식을 확인해주세요.');
         $('#email_check').css('color', 'red');
      }
   });
	

// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
$("#user_id")
      .blur(
            function() {
               // id = "id_reg" / name = "userId"
               var user_id = $('#user_id').val();
               $
                     .ajax({
                        url : '${pageContext.request.contextPath}/user/idCheck?userId='
                              + user_id,
                        type : 'get',
                        success : function(data) {
                           console.log("1 = 중복o / 0 = 중복x : "
                                 + data);

                           if (data == 1) {
                              // 1 : 아이디가 중복되는 문구
                              $("#id_check").text(
                                    "사용중인 아이디입니다 :p");
                              $("#id_check").css("color", "red");
                              $("#reg_submit").attr("disabled",
                                    true);
                           } else {

                              if (idJ.test(user_id)) {
                                 // 0 : 아이디 길이 / 문자열 검사
                                 $("#id_check").text("");
                                 $("#reg_submit").attr(
                                       "disabled", false);

                              } else if (user_id == "") {

                                 $('#id_check').text(
                                       '아이디를 입력해주세요 :)');
                                 $('#id_check').css('color',
                                       'red');
                                 $("#reg_submit").attr(
                                       "disabled", true);

                              } else {

                                 $('#id_check')
                                       .text(
                                             "아이디는 5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.");
                                 $('#id_check').css('color',
                                       'red');
                                 $("#submit").attr(
                                       "disabled", true);
                              }

                           }
                        },
                        error : function() {
                           console.log("실패");
                        }
                     });
               function goLoginForm() { //로그인화면으로 이동
                  location.href = "login.jsp";
               }
            });
            
            
         // 생일 유효성 검사
        	var birthJ = false;
        	
        	// 생년월일	birthJ 유효성 검사
        	$('#user_birth').blur(function(){
        		var dateStr = $(this).val();		
        	    var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
        	    var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
        	    var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
        	    var today = new Date(); // 날짜 변수 선언
        	    var yearNow = today.getFullYear(); // 올해 연도 가져옴
        		
        	    if (dateStr.length <=8) {
        			// 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
        		    if (1900 > year || year > yearNow){
        		    	
        		    	$('#birth_check').text('생년월일을 확인해주세요 ');
        				$('#birth_check').css('color', 'red');
        		    	
        		    }else if (month < 1 || month > 12) {
        		    		
        		    	$('#birth_check').text('생년월일을 확인해주세요 ');
        				$('#birth_check').css('color', 'red'); 
        		    
        		    }else if (day < 1 || day > 31) {
        		    	
        		    	$('#birth_check').text('생년월일을 확인해주세요 ');
        				$('#birth_check').css('color', 'red'); 
        		    	
        		    }else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
        		    	 
        		    	$('#birth_check').text('생년월일을 확인해주세요 ');
        				$('#birth_check').css('color', 'red'); 
        		    	 
        		    }else if (month == 2) {
        		    	 
        		       	var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
        		       	
        		     	if (day>29 || (day==29 && !isleap)) {
        		     		
        		     		$('#birth_check').text('생년월일을 확인해주세요 ');
        					$('#birth_check').css('color', 'red'); 
        		    	
        				}else{
        					$('#birth_check').text('');
        					birthJ = true;
        				}//end of if (day>29 || (day==29 && !isleap))
        		     	
        		    }else{
        		    	
        		    	$('#birth_check').text(''); 
        				birthJ = true;
        			}//end of if
        			
        			}else{
        				//1.입력된 생년월일이 8자 초과할때 :  auth:false
        				$('#birth_check').text('생년월일을 확인해주세요 ');
        				$('#birth_check').css('color', 'red');  
        			}
        		}); //End of method /*
 
        		// 휴대전화
        		$('#user_phone').blur(function(){
        			if(phoneJ.test($(this).val())){
        				console.log(nameJ.test($(this).val()));
        				$("#phone_check").text('');
        			} else {
        				$('#phone_check').text('휴대폰번호를 확인해주세요 ');
        				$('#phone_check').css('color', 'red');
        			}
        		});

});

</script> 
</head>
<body>

<div id="wrap">
		<div id="header">
			<h1>
				<a href="http://localhost:8090/semiprojcet/KH_GYM"><img src="images/KHGYM_logo.png" id="mainlogo" alt="KH & GYM"></a>
			</h1>
			<div style="position: relative;">
				<div class="nav_accordian" id="center_accordian">
					<ul id="navmenu">
						<li>
							<h3>
								<span class="aboutcenter"></span>About Center
							</h3>
							<ul id="aboutcenter_sub">
								<li><a href="javascript:void(0)" id="sub_greeting">Greeting</a></li>
								<li><a href="javascript:void(0)" id="sub_instructor">Instructor</a></li>
								<li><a href="javascript:void(0)" id="sub_loungeview">Lounge View</a></li>
								<li><a href="javascript:void(0)" id="sub_location">Location</a></li>
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
								<li><a href="javascript:void(0)" id="sub_aboutprogram">About Program</a></li>
								<li><a href="javascript:void(0)" id="sub_registration">Registration</a></li>
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
								<li><a href="javascript:void(0)" id="sub_notice">Notice</a></li>
								<li><a href="javascript:void(0)" id="sub_qna">Q & A</a></li>
								<li><a href="javascript:void(0)" id="sub_review">Review</a></li>
								<li><a href="javascript:void(0)" id="sub_learn">Learn</a></li>
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
								<li><a href="javascript:void(0)">Login</a></li>
								<li><a href="javascript:void(0)">Join</a></li>
							</ul>
						<li>
					</ul>
				</div>
			</div>
		</div>

<article class="container">
            <div class="page-header">
                <div class="col-md-6 col-md-offset-3">
                <h3>회원가입</h3>
                </div>
            </div>
            <div class="col-sm-6 col-md-offset-3">
                <form action="Mem.do" method="post" role="form">
                
                    <div class="form-group">
                        <label for="id">아이디</label>
                        <input type="text" class="form-control" id="user_id" name="user_id" placeholder="ID">
                        <div class="eheck_font" id="id_check"></div>
                    </div>
                    
                    <div class="form-group">
                        <label for="pw">비밀번호</label>
                        <input type="password" class="form-control" id="user_pw" name="user_pw" placeholder="PASSWORD">
                        <div class="eheck_font" id="pw_check"></div>
                    </div>
                    <div class="form-group">
                        <label for="pw2">비밀번호 확인</label>
                        <input type="password" class="form-control" id="user_pw2" name="user_pw2" placeholder="Confirm Password">
                   	    <div class="eheck_font" id="pw2_check"></div>
                    </div>
                    
                       <div class="form-group">
                        <label for="user_name">이름</label>
                        <input type="text" class="form-control" id="user_name" name="user_name" placeholder="Name">
                   		<div class="eheck_font" id="name_check"></div>
                    </div>
                    
                        <div class="form-group">
                        <label for="user_birth">생년월일</label>
                        <input type="tel" class="form-control" id="user_birth" name="user_birth" placeholder="ex) 19990101">
                    	<div class="eheck_font" id="birth_check"></div>
                    </div>
                    
                    <div class="form-group">
                        <label for="user_email">이메일 주소</label>
                        <input type="email" class="form-control" id="user_email" name="user_email" placeholder="E-mail">
                    	<div class="eheck_font" id="email_check"></div>
                    </div>
                    
             
                    <div class="form-group">
                        <label for="user_phone">휴대폰 번호('-'없이 번호만 입력해주세요)</label>
                        <input type="tel" class="form-control" id="user_phone" name="user_phone" placeholder="Phone Number">
                         <div class="eheck_font" id="phone_check"></div>
                    </div>
                    
                    <div class="form-group text-center">
       			         <button type="submit" id="MemberJoin.jsp" class="btn btn-primary">
                            회원가입<i class="fa fa-check spaceLeft"></i>
                        </button> 
                 
                        <button type="reset" class="btn btn-warning">
                            다시입력<i class="fa fa-times spaceLeft"></i>
                        </button>
                    </div>
                </form>
            </div>
  
        </article>  
        		<!-- section end -->
		<div id="footer">
			<img src="images/KHGYM_logo.png" id="footerlogo">
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
	<!-- end wrap -->
</body>
</html>