<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">
  
  <meta name="author" content="themefisher.com">
  <title>파이널프로젝트</title>
  

  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css">
  <!-- Icon Font Css -->                                       
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/themify/css/themify-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/all.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/magnific-popup/dist/magnific-popup.css">
  <!-- Owl Carousel CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/slick-carousel/slick/slick-theme.css">

  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

<style type="text/css">
	/* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            overflow: hidden; /* 모달 띄웠을 시, 옆에 스크롤 제거 */
        }
    
        /* Modal Content/Box */
        #modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */                          
        }
        /*---------------------
		  Register Form
		-----------------------*/
		
		.register-login-section {
			padding-top: 72px;
			padding-bottom: 80px;
		}
		
		.register-form h2,
		.login-form h2 {
			color: #252525;
			font-weight: 700;
			text-align: center;
			margin-bottom: 35px;
		}
		
		.register-form form .group-input,
		.login-form form .group-input {
			margin-bottom: 25px;
		}
		
		.register-form form .group-input label,
		.login-form form .group-input label {
			display: block;
			font-size: 18px;
			color: #252525;
			margin-bottom: 13px;
		}
		
		.register-form form .group-input input,
		.login-form form .group-input input {
			border: 1px solid #ebebeb;
			height: 50px;
			width: 100%;
			padding-left: 20px;
			padding-right: 15px;
		}
		
		.register-form form .register-btn,
		.register-form form .login-btn,
		.login-form form .register-btn,
		.login-form form .login-btn {
			width: 100%;
			letter-spacing: 2px;
			margin-top: 5px;
			height: 50px;
		}
		
		.register-form .switch-login,
		.login-form .switch-login {
			text-align: center;
			margin-top: 22px;
		}
		
		.register-form .switch-login .or-login,
		.login-form .switch-login .or-login {
			color: #252525;
			font-size: 14px;
			letter-spacing: 2px;
			text-transform: uppercase;
			position: relative;
		}
		
		.register-form .switch-login .or-login:before,
		.login-form .switch-login .or-login:before {
			position: absolute;
			left: 0;
			bottom: 0;
			height: 2px;
			width: 100%;
			background: #9f9f9f;
			content: "";
		}
		
		.login-form .group-input.gi-check {
			margin-bottom: 8px;
		}
		
		.login-form .group-input .gi-more {
			overflow: hidden;
		}
		
		.login-form .group-input .gi-more label {
			position: relative;
			cursor: pointer;
			padding-left: 28px;
			font-size: 14px;
			color: #6B6B6B;
			float: left;
		}
		
		.login-form .group-input .gi-more label input {
			position: absolute;
			visibility: hidden;
		}
		
		.login-form .group-input .gi-more label input:checked~span {
			border-color: #6C6C6C;
		}
		
		.login-form .group-input .gi-more label input:checked~span:after {
			border-color: #6c6c6c;
		}
		
		.login-form .group-input .gi-more label .checkmark {
			position: absolute;
			left: 0;
			top: 4px;
			height: 13px;
			width: 13px;
			border: 1px solid #6C6C6C;
			border-radius: 2px;
		}
		
		.login-form .group-input .gi-more label .checkmark:after {
			left: 2px;
			top: -2px;
			width: 13px;
			height: 6px;
			border: solid #ffffff;
			border-width: 2px 2px 0px 0px;
			-webkit-transform: rotate(127deg);
			-ms-transform: rotate(127deg);
			transform: rotate(127deg);
		}
		
		.login-form .group-input .gi-more .forget-pass {
			float: right;
			line-height: 20px;
			margin-top: -2px;
			font-size: 14px;
			color: #6B6B6B;
		}
		
		#navbar .btn:hover {
		color : #fff;
		}
		
	    @font-face {
	     font-family: 'hanaBold';
	     src: local(HanaB); 
  		}
	    @font-face {
	     font-family: 'hanaMedium';
	     src: url(${pageContext.request.contextPath}/resources/css/font/HanaM.ttf) format('truetype'); 
  		}
	    @font-face {
	     font-family: 'hanaLight';
	     src: url(${pageContext.request.contextPath}/resources/css/font/HanaL.ttf) format('truetype'); 
  		}
  		
</style>
</head>
	 <!-- The Modal -->
    <div id="myModal" class="modal" >
     <!-- Modal content -->
     <div id="modal-content">
                    <div class="login-form">
                    
                        <h2>Login</h2>
                        <form action="${pageContext.request.contextPath }/login" method="post" name="loginForm">
                            <div class="group-input">
                                <label for="username">UserID </label>
                                <input type="text" id="username" name="id">
                            </div>
                            <div class="group-input">
                                <label for="pass">Password </label>
                                <input type="password" id="password" name="password">
                            </div>
                            <button type="submit" class="site-btn login-btn" style="background: #01888c;color: #fff">Sign In</button>
                        </form>
                        <div class="switch-login">
                            <a href="<%=request.getContextPath() %>/register.do" class="or-login">Or Create An Account</a>
                            <a id="kakao-login-btn" style="padding-left: 30px"></a>
                        </div>
                    </div>
      </div>
 
    </div>
    <!--End Modal-->



	<!-- Header Start --> 
	
	<header class="navigation">
		<div class="header-top ">
			<div class="container">
				<div class="row justify-content-between align-items-center">
					<div class="col-lg-2 col-md-4">
						<div class="header-top-socials text-center text-lg-left text-md-left">
							<a href="https://www.facebook.com/themefisher" target="_blank"><i class="ti-facebook"></i></a>
							<a href="https://twitter.com/themefisher" target="_blank"><i class="ti-twitter"></i></a>
							<a href="https://github.com/themefisher/" target="_blank"><i class="ti-github"></i></a>
						</div>
					</div>
					<div class="col-lg-10 col-md-8 text-center text-lg-right text-md-right">
						<div class="header-top-info">
							<a href="tel:+23-345-67890">Call Us : <span>+23-345-67890</span></a>
							<a href="mailto:support@gmail.com" ><i class="fa fa-envelope mr-2"></i><span>support@gmail.com</span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg  py-4" id="navbar">
			<div class="container">
				
				<img alt="" src="${pageContext.request.contextPath }/resources/images/hana3.jpg" style="width: 170px">
<!-- 			  <a class="navbar-brand" href="index.html">
			  	Mega<span>kit.</span>
			  </a> -->
	
			  <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarsExample09" aria-controls="navbarsExample09" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span>
			  </button>
		  
			  <div class="collapse navbar-collapse text-center" id="navbarsExample09">
				<ul class="navbar-nav ml-auto">
				  <li class="nav-item active">
					<a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
				  </li>
				  <li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">거래 관리</a>
						<ul class="dropdown-menu" aria-labelledby="dropdown03">
							<li><a class="dropdown-item" href="about.html">계좌 이체</a></li>
							<li><a class="dropdown-item" href="pricing.html">거래 내역 조회</a></li>
						</ul>
				  </li>
				  <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">온라인 투자 상담</a>
					<ul class="dropdown-menu" aria-labelledby="dropdown03">
						<li><a class="dropdown-item" href="about.html">실시간 상담하기</a></li>
						<li><a class="dropdown-item" href="pricing.html">상담 내역 조회</a></li>
					</ul>
			      </li>
				  <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">자산 관리</a>
					<ul class="dropdown-menu" aria-labelledby="dropdown03">
						<li><a class="dropdown-item" href="about.html">온라인 자산 리밸런싱</a></li>
						<li><a class="dropdown-item" href="pricing.html">보유 자산 조회</a></li>
					</ul>
			      </li>
				   <li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="dropdown05" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">My 브랜치</a>
						<ul class="dropdown-menu" aria-labelledby="dropdown05">
							<li><a class="dropdown-item" href="./reservation.html">간편 상담 예약</a></li>
							<li><a class="dropdown-item" href="event_info.html">지점 이벤트 정보</a></li>
							<li><a class="dropdown-item" href="blog-single.html">브랜치 등록</a></li>
						</ul>
				  </li>
				   <li class="nav-item"><a class="nav-link" href="contact.html">고객지원</a></li>
				</ul>
					<c:choose>
						<c:when test="${empty userVO }">
						 	<button id="loginBtn" class="btn btn-solid-border btn-round-full" style="margin-left: 20px">로그인</button>
						 	<button id="loginBtn" class="btn btn-solid-border btn-round-full" style="margin-left: 20px;margin-left: 0px" >회원가입</button>
						</c:when>
						<c:otherwise>
						 	<button id="logoutBtn" class="btn btn-solid-border btn-round-full" style="margin-left: 20px">로그아웃</button>
							
						</c:otherwise>
					</c:choose>
			  </div>
			</div>
		</nav>
	</header>
	
	<!-- Header Close --> 
	
    <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	      
	        $(document).ready(function() {
	                $('#loginBtn').click(function(){
	                    $('#myModal').show();
	                	
	                });
	                
	                $('#logoutBtn').click(function(){
	                	location.href = '${pageContext.request.contextPath}/logout'
	                	
	                });
	                
	        });
	        
	    	 // 외부영역 클릭 시 팝업 닫기
	        $(document).mouseup(function (e){
	          var LayerPopup = $(".modal");
	          if(LayerPopup.has(e.target).length === 0){
	            	$('#myModal').hide();
	          }
	        });
	        
	</script>