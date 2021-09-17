<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Directing | Template</title>

<!-- Google Font -->
<%--    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">--%>

<!-- Css Styles -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<!-- Css Styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css2/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css2/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css2/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css2/flaticon.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css2/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css2/barfiller.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css2/magnific-popup.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css2/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css2/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css2/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css2/style.css"
	type="text/css">

</head>
<style>
.pb_thumbnail {
	margin-left: 30px;
	float: right;
	max-width: 15%;
}

.btn-light.disabled, .btn-light:disabled {
	opacity: 0.6;
	cursor: not-allowed;
}

#tagName {
	color: #27b2a5;
	font-weight: normal;
}

#profileBtn {
	cursor: pointer;
}

.modal fade {
	width: 70%;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box
}

ul>li {
	list-style: none
}

a {
	text-decoration: none;
}

.clearfix::after {
	content: "";
	display: block;
	clear: both;
}

#joinForm {
	width: 90%;
	margin: 0 auto;
}

ul.join_box {
	border: 1px solid #ddd;
	background-color: #fff;
}

.checkBox, .checkBox>ul {
	position: relative;
}

.checkBox>ul>li {
	float: left;
}

.checkBox>ul>li:first-child {
	width: 85%;
	padding: 15px;
	font-weight: 600;
	color: #888;
}

.checkBox>ul>li:nth-child(2) {
	position: absolute;
	top: 50%;
	right: 30px;
	margin-top: -12px;
}

.checkBox textarea {
	width: 96%;
	height: 90px;
	margin: 0 2%;
	background-color: #f7f7f7;
	color: #888;
	border: none;
}

.footBtwrap {
	margin-top: 15px;
}

.footBtwrap>li {
	float: left;
	width: 50%;
	height: 60px;
}

.footBtwrap>li>button {
	display: block;
	width: 100%;
	height: 100%;
	font-size: 20px;
	text-align: center;
	line-height: 60px;
}

.fpmgBt1 {
	background-color: #fff;
	color: #888
}

.fpmgBt2 {
	background-color: lightsalmon;
	color: #fff
}

#staticBackdrop {
	overflow: hidden;
}

.btn-success{


}


</style>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>


	<jsp:include page="/WEB-INF/jsp/client/searchBanker/profileModal.jsp" />
	<jsp:include page="/WEB-INF/jsp/common/header.jsp" />


	<section class="hero-wrap hero-wrap-2"
		data-stellar-background-ratio="0.5">
		<div class="overlay" style="background: #27b2a5;"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate mb-5 text-center">
					<p class="breadcrumbs mb-0">
						<span class="mr-2"><a href="index.html">Home <i
								class="fa fa-chevron-right"></i></a></span> <span>Services <i
							class="fa fa-chevron-right"></i></span>
					</p>
					<h1 class="mb-0 bread" style="color: #fff">Services</h1>
				</div>
			</div>
		</div>
	</section>

	<div class="container" style="padding-top: 100px; color: black">
		<div class="row">
			<div class="col-lg-12">
				<div class="hero__text">
					<ul class="hero__categories__tags">
						<li>
						<button name="sector" id="totalBtn" type="button" class="btn btn-success" style="background-color: #27b2a5;border-color:#27b2a5;">전체 분야</button> 
						</li>
						<li>
						<button name="sector" type="button" class="btn btn-success" style="background-color: #27b2a5;;border-color:#27b2a5;">주식 분야</button> 
						
						</li>
						<li>
						<button name="sector" type="button" class="btn btn-success" style="background-color: #27b2a5;;border-color:#27b2a5;">채권 분야</button> 
						
						</li>
						<li>
						<button name="sector" type="button" class="btn btn-success" style="background-color: #27b2a5;;border-color:#27b2a5;">예금 분야</button> 
						
						</li>
						<li>
						<button name="sector" type="button" class="btn btn-success" style="background-color: #27b2a5;;border-color:#27b2a5;">펀드 분야</button> 
						</li>
						<li>
						<button name="sector" type="button" class="btn btn-success" style="background-color: #27b2a5;;border-color:#27b2a5;">랩 어카운트</button> 
						
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<!-- Blog Section Begin -->
	<section class="blog-section spad">
		<div class="container">
			<div class="row">
				<div id="sectorList" class="col-lg-8">
					<c:forEach items="${bankerList}" var="banker" varStatus="loop">
						<div class="blog__item__large">
							<div class="blog__item__text">
								<ul class="blog__item__tags">
									<li><i class="fa fa-tags"></i>
									<c:out value="${banker.branchName}" /></li>
									<input class="pbBranchName" type="hidden"
										value="<c:out value="${banker.branchName}"/>" />
									<li><c:out value="${banker.mainField}" /></li>
								</ul>
								<%--                            <button type="button" id="popbutton" class="btn btn-primary" id="#modalScroll">--%>
								<%--                            </button>--%>
								<a id="profileBtn"><img class="pb_thumbnail"
									src="${pageContext.request.contextPath}/resources/images/user2.png" /></a>
								<h3>
									<span><c:out value="${banker.pbName}" /></span> 자산관리사 <input
										class="pbName" type="hidden"
										value="<c:out value="${banker.pbName}"/>" />
								</h3>
								<p>
									<c:out value="${banker.introContent}" />
								</p>
								<ul class="blog__item__widget">
									<h3>
										<p style="color: black">상담 가능 시간</p>
									</h3>
									<c:if test="${fn:contains(banker.impossible,'1')}">
										<li>
											<button class="btn btn-light btn-sm disabled"
												style="margin-bottom: 10px; font-weight: lighter"
												value="10:00">10:00</button>
										</li>
									</c:if>
									<c:if test="${not fn:contains(banker.impossible,'1')}">
										<li>
											<button id="termsModal" class="btn btn-light btn-sm"
												style="margin-bottom: 10px;" value="10:00">10:00</button>
										</li>
									</c:if>
									<c:if test="${fn:contains(banker.impossible,'2')}">
										<li>
											<button class="btn btn-light btn-sm disabled"
												style="margin-bottom: 10px; font-weight: lighter">11:00
											</button>
										</li>
									</c:if>
									<c:if test="${not fn:contains(banker.impossible,'2')}">
										<li>
											<button class="btn btn-light btn-sm"
												style="margin-bottom: 10px;" value="11:00">11:00</button>
										</li>
									</c:if>
									<c:if test="${fn:contains(banker.impossible,'3')}">
										<li>
											<button class="btn btn-light btn-sm disabled"
												style="margin-bottom: 10px; font-weight: lighter">13:00
											</button>
										</li>
									</c:if>
									<c:if test="${not fn:contains(banker.impossible,'3')}">
										<li>
											<button value="13:00" class="btn btn-light btn-sm "
												style="margin-bottom: 10px;">13:00</button>
										</li>
									</c:if>
									<c:if test="${fn:contains(banker.impossible,'4')}">
										<li>
											<button class="btn btn-light btn-sm disabled"
												style="margin-bottom: 10px; font-weight: lighter">14:00
											</button>
										</li>
									</c:if>
									<c:if test="${not fn:contains(banker.impossible,'4')}">
										<li>
											<button value="14:00" class="btn btn-light btn-sm "
												style="margin-bottom: 10px;">14:00</button>
										</li>
									</c:if>
									<c:if test="${fn:contains(banker.impossible,'5')}">
										<li>
											<button class="btn btn-light btn-sm disabled"
												style="margin-bottom: 10px; font-weight: lighter">15:00
											</button>
										</li>
									</c:if>
									<c:if test="${not fn:contains(banker.impossible,'5')}">
										<li>
											<button value="15:00" class="btn btn-light btn-sm "
												style="margin-bottom: 10px;">15:00</button>
										</li>
									</c:if>
									<c:if test="${fn:contains(banker.impossible,'6')}">
										<li>
											<button class="btn btn-light btn-sm disabled"
												style="margin-bottom: 10px; font-weight: lighter">16:00
											</button>
										</li>
									</c:if>
									<c:if test="${not fn:contains(banker.impossible,'6')}">
										<li>
											<button value="16:00" class="btn btn-light btn-sm "
												style="margin-bottom: 10px;">16:00</button>
										</li>
									</c:if>
								</ul>
								<div id="tagName">
									<c:out value="${banker.tagName}" />
								</div>
							</div>
						</div>
					</c:forEach>
					<div class="blog__pagination">
						<a href="#"><i class="fa fa-long-arrow-left"></i> Pre</a> <a
							href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">Next
							<i class="fa fa-long-arrow-right"></i>
						</a>
					</div>
				</div>


				<div class="col-lg-4">
					<div class="blog__sidebar">
						<div class="blog__sidebar__search">
							<form action="#">
								<input type="text" placeholder="Searching...">
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
						<div class="blog__sidebar__categories">
							<h5>TOP 5 조회 목록</h5>
							<ul>
								<li><a href="#">Finance <span>18</span></a></li>
								<li><a href="#">Business <span>20</span></a></li>
								<li><a href="#">Loan <span>07</span></a></li>
								<li><a href="#">Consulting <span>22</span></a></li>
								<li><a href="#">Credit <span>19</span></a></li>
							</ul>
						</div>
						<div class="blog__sidebar__tags">
							<h5>인기 태그 목록</h5>
							<a href="#">Business</a> <a href="#">Marketing</a> <a href="#">Payment</a>
							<a href="#">Travel</a> <a href="#">Finance</a> <a href="#">Videos</a>
							<a href="#">Ideas</a> <a href="#">Unique</a> <a href="#">Music</a>
							<a href="#">Key</a>
						</div>
						<div class="blog__sidebar__recent">
							<h5>최근 상담한 자산관리사</h5>
							<a href="#" class="blog__sidebar__recent__item">
								<div class="blog__sidebar__recent__item__pic">
									<img src="img/blog/recent-1.jpg" alt="">
								</div>
								<div class="blog__sidebar__recent__item__text">
									<span><i class="fa fa-tags"></i> Shopping</span>
									<h6>Tortoise grilled on salt</h6>
									<p>
										<i class="fa fa-clock-o"></i> 19th March, 2019
									</p>
								</div>
							</a> <a href="#" class="blog__sidebar__recent__item">
								<div class="blog__sidebar__recent__item__pic">
									<img src="img/blog/recent-2.jpg" alt="">
								</div>
								<div class="blog__sidebar__recent__item__text">
									<span><i class="fa fa-tags"></i> Hotels</span>
									<h6>Shrimp floured and fried</h6>
									<p>
										<i class="fa fa-clock-o"></i> 22th March, 2019
									</p>
								</div>
							</a> <a href="#" class="blog__sidebar__recent__item">
								<div class="blog__sidebar__recent__item__pic">
									<img src="img/blog/recent-3.jpg" alt="">
								</div>
								<div class="blog__sidebar__recent__item__text">
									<span><i class="fa fa-tags"></i> Restaurant</span>
									<h6>Sweet and sour pork ribs</h6>
									<p>
										<i class="fa fa-clock-o"></i> 25th March, 2019
									</p>
								</div>
							</a> <a href="#" class="blog__sidebar__recent__item">
								<div class="blog__sidebar__recent__item__pic">
									<img src="img/blog/recent-4.jpg" alt="">
								</div>
								<div class="blog__sidebar__recent__item__text">
									<span><i class="fa fa-tags"></i> Videos</span>
									<h6>Crab fried with tamarind</h6>
									<p>
										<i class="fa fa-clock-o"></i> 19th March, 2019
									</p>
								</div>
							</a> <a href="#" class="blog__sidebar__recent__item">
								<div class="blog__sidebar__recent__item__pic">
									<img src="img/blog/recent-5.jpg" alt="">
								</div>
								<div class="blog__sidebar__recent__item__text">
									<span><i class="fa fa-tags"></i> Travel</span>
									<h6>Tortoise grilled on salt</h6>
									<p>
										<i class="fa fa-clock-o"></i> 19th March, 2019
									</p>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->


	<!--  acceptTermsModal -->
	<div id="staticBackdrop" class="modal fade" id="exampleModalScrollable"
		tabindex="-1" role="dialog"
		aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">서비스 이용 약관동의</h5>
					<%--                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
				</div>
				<div class="modal-body">
					<div id="joinForm">
						<ul class="join_box">

							<li class="checkBox check02">
								<ul class="clearfix">
									<li>이용약관 동의(필수)</li>
									<li class="checkBtn"><input type="checkbox" name="chk">
									</li>
								</ul> <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
							</li>
							<li class="checkBox check03">
								<ul class="clearfix">
									<li>개인정보 수집 및 이용에 대한 안내(필수)</li>
									<li class="checkBtn"><input type="checkbox" name="chk">
									</li>
								</ul> <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
							</li>
							<li class="checkBox check03">
								<ul class="clearfix">
									<li>위치정보 이용약관 동의(선택)</li>
									<li class="checkBtn"><input type="checkbox" name="chk">
									</li>
								</ul> <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
							</li>
							<li class="checkBox check04">
								<ul class="clearfix">
									<li>이벤트 등 프로모션 알림 메일 수신(선택</li>
									<li class="checkBtn"><input type="checkbox" name="chk">
									</li>
								</ul>

							</li>
							<li class="checkBox check01">
								<ul class="clearfix">
									<li>이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택), 프로모션 안내 메일 수신(선택)에
										모두 동의합니다.</li>
									<li class="checkAllBtn"><input type="checkbox"
										name="chkAll" id="chk" class="chkAll"></li>
								</ul>
							</li>
						</ul>
						<ul class="footBtwrap clearfix">
						</ul>
					</div>
				</div>
				<div class="modal-footer">
					<button id="termsCloseBtn" type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button id="reservationBtn" type="button" class="btn btn-primary">상담예약하기</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="sendModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="exampleModalLabel">온라인 상담신청</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<%--                    <div class="form-group">--%>
						<%--                        <label for="recipient-name" class="control-label">상담 정보</label>--%>
						<%--                        <div id="recipient-name" >성함 : ${userVO.username}</div>--%>
						<%--                        <div >상담 시간 : ${}</div>--%>
						<%--                    </div>--%>
						<div class="form-group">
							<label for="message-text" class="control-label">상담 요청 내용
								:</label>
							<textarea class="form-control" id="message-text"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button id="sendMsg" type="button" class="btn btn-primary">확인</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="sendModal2" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">상담 신청을 하시겠습니까?</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							상담사 이름 : <span id="pb"></span><br> 상담 시간 : <span id="time"></span>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button id="sendMsg2" type="button" class="btn btn-primary"
						data-dismiss="modal">상담 신청하기</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>





	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
		var consultTime;
		var username = '${sessionScope.userVO.username}';
		var reserveComment;
		var pbName;
		var sendMessage;
		var pbBranchName;

		var socket = null;
		$(document).ready(function() {

			// 웹소켓 연결
			sock = new SockJS("<c:url value="/client/searchList"/>");
			socket = sock;
		})

		$("#profileBtn").click(function() {
			$('#exampleModalScrollable').modal();
		})

		$(".btn.btn-light.btn-sm").click(function() {
			consultTime = $(this).val()
			var parent = $(this).parents('.blog__item__large')
			pbName = parent.find('.pbName').val();
			pbBranchName = parent.find('.pbBranchName').val();

			$('#staticBackdrop').modal('show');

		})

		$("#termsCloseBtn").click(function() {
			$('#staticBackdrop').modal('hide');
		})

		$("#reservationBtn").click(function() {
			$('#staticBackdrop').modal('hide');
			$('#sendModal').modal('show');
		})

		$(function() {
			$('#sendMsg')
					.click(
							function() {
								reserveComment = $('#message-text').val();
								$('#sendModal').modal('hide');
								$('#sendModal2').modal('show');
								$("#time").text(consultTime)
								$("#pb").text(pbName)
								sendMessage = {
									"username" : username,
									"rsrvTime" : consultTime,
									"rsrvComent" : reserveComment,
									"pbName" : pbName,
									"pbBranchName" : pbBranchName
								}
								console.log(sendMessage)
								console.log(JSON.stringify(sendMessage))
								$('#sendMsg2')
										.click(
												function() {
													socket.send(username + ","
															+ pbName + ","
															+ consultTime + ","
															+ reserveComment);
													// 예약 정보 DB 저장 ajax
													$.ajax({
																type : "POST",
																url : "${pageContext.request.contextPath}/client/sendReservation",
																dataType : 'json',
																contentType : 'application/json',
																data : JSON
																		.stringify(sendMessage),
																success : function() {
																}
															})
													window.location.href = '${pageContext.request.contextPath}/client/searchList';
												})
							})

		})
		
		 
/* 		$('button[name=sector').click(function(){
			console.log($(this).text())
			sector = $(this).text()
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/client/searchBySector",
				data : sector,
				contentType : "application/json; charset=utf-8;",
				dataType : "text",
				success : function(res) {
					$('#sectorList').empty()
					$('#sectorList').append(res);
					
				}
			});
			
		}) */
		
		 var sector;
		
			$('button[name=sector').click(function(){
			console.log($(this).text())
			sector = $(this).text()
			location.href ="${pageContext.request.contextPath}/client/searchBySector?sector="+sector;			
		})
		
		
		
		
		
		
		
		
		
	</script>
	<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />

	<!-- Js Plugins -->
	<script
		src="${pageContext.request.contextPath}/resources/css2/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css2/js/jquery-ui.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css2/js/jquery.nicescroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css2/js/jquery.barfiller.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css2/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css2/js/jquery.slicknav.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css2/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css2/js/main.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/css2/js/bootstrap.min.js"></script>


</body>

</html>