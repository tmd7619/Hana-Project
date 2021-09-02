<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>
	
		<!-- Section Start -->
		<section class="slider">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-md-10">
						<div class="block">
							<span class="d-block mb-3 text-white text-capitalize">Prepare for new future</span>
							<h1 class="animated fadeInUp mb-5">Our work is <br>presentation of our <br>capabilities.</h1>
							<a href="${pageContext.request.contextPath}/select/branch" target="_blank" class="btn btn-main animated fadeInUp btn-round-full" >지점 등록하기<i class="btn-icon fa fa-angle-right ml-2"></i></a>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- Section End-->
	
	
		
		<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>
</body>
</html>