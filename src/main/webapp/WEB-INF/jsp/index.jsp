<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>

		<!-- The Modal -->
		<div id="myModal" class="modal" >
			<!-- Modal content -->
			<div id="modal-content">
				<div class="login-form">

					<h2>Login</h2>
					<form action="${pageContext.request.contextPath }/login" method="post" name="loginForm">
						<div class="group-input">
							<label for="userId">UserID </label>
							<input type="text" id="userId" name="userId">
						</div>
						<div class="group-input">
							<label for="password">Password </label>
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
	
		<!-- Section Start -->
		<section class="slider">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-md-10">
						<div class="block">
							<span class="d-block mb-3 text-white text-capitalize">Hana Financial Group </span>
							<c:choose>
								<c:when test="${not empty userVO && not empty branchName}">
									로그인완료 , 지점까지 완료
								</c:when>
								<c:when test="${not empty userVO && empty sessionScope.branchName}">
									<h1 class="animated fadeInUp mb-5">${userVO.username}님, 서비스 이용을 위해 지점 등록을 진행해주세요</h1>
									<a href="${pageContext.request.contextPath}/select/branch" target="_blank" class="btn btn-main animated fadeInUp btn-round-full" >지점 등록하기<i class="btn-icon fa fa-angle-right ml-2"></i></a>
								</c:when>
								<c:otherwise>
									<h1 class="animated fadeInUp mb-5">안녕하세요? 하나브랜치입니다. 서비스 이용을 위해 로그인을 진행해주세요</h1>
									<button id="loginBtn" class="btn btn-solid-border btn-round-full" style="margin-left: 20px">로그인</button>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Section End-->
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
		
		<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>
</body>
</html>