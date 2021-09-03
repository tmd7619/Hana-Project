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
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>

		<!-- Section Start -->
		<section class="slider">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-md-10">
						<div class="block">
							<span class="d-block mb-3 text-white text-capitalize">Hana Financial Group </span>
							<c:choose>
								<c:when test="${not empty userVO && not empty sessionScope.branchName}">
									로그인완료 , 지점까지 완료
								</c:when>
								<c:when test="${not empty userVO && empty sessionScope.branchName}">
									<h1 class="animated fadeInUp mb-5">${userVO.username}님, 서비스 이용을 위해 지점 등록을 진행해주세요</h1>
									<a href="${pageContext.request.contextPath}/select/branch" target="_blank" class="btn btn-main animated fadeInUp btn-round-full" >지점 등록하기<i class="btn-icon fa fa-angle-right ml-2"></i></a>
								</c:when>
								<c:otherwise>
									<h1 class="animated fadeInUp mb-5">안녕하세요? 하나브랜치입니다. 서비스 이용을 위해 로그인을 진행해주세요</h1>
									<button id="loginBtn2" class="btn btn-main animated fadeInUp btn-round-full" >로그인</button>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Section End-->


		<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>
</body>

</script>
</html>