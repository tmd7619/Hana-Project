<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/flaticon.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/barfiller.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/style.css" type="text/css">
</head>
<style>

    .pb_thumbnail{
        margin-left: 30px;
        float: right;
        max-width: 15%;
    }

    .btn-light.disabled, .btn-light:disabled{
        opacity: 0.6;
        cursor: not-allowed;
    }

    #tagName{
        color: #27b2a5;
        font-weight: normal;
    }





</style>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>

<jsp:include page="/WEB-INF/jsp/client/searchBanker/bankerProfile.jsp"/>


<section class="hero-wrap hero-wrap-2" data-stellar-background-ratio="0.5">
    <div class="overlay" style="background: #27b2a5;"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate mb-5 text-center">
                <p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>Services <i class="fa fa-chevron-right"></i></span></p>
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
                        <li><a href="#"><%--<img src="${pageContext.request.contextPath}/resources/css2/img/hero/cat-3.png" alt="">--%> 부동산 분야</a></li>
                        <li><a href="#"><%--<img src="${pageContext.request.contextPath}/resources/css2/img/hero/cat-1.png" alt="">--%> 주식 분야</a></li>
                        <li><a href="#"><%--<img src="${pageContext.request.contextPath}/resources/css2/img/hero/cat-2.png" alt="">--%> 채권 분야</a></li>
                        <li><a href="#"><%--<img src="${pageContext.request.contextPath}/resources/css2/img/hero/cat-4.png" alt="">--%> 펀드 분야</a></li>
                        <li><a href="#"><%--<img src="${pageContext.request.contextPath}/resources/css2/img/hero/cat-5.png" alt="">--%> 세금 분야</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


<!-- Blog Section Begin -->
<section class="blog-section spad" >
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <c:forEach items="${bankerList}" var="banker" varStatus="loop">
                <div class="blog__item__large">
                    <div class="blog__item__text">
                        <ul class="blog__item__tags">
                            <li><i class="fa fa-tags"></i><c:out value="${banker.branchName}"/></li>
                            <li><c:out value="${banker.mainField}"/> </li>
                        </ul>
                        <div><img class="pb_thumbnail" src="${pageContext.request.contextPath}/resources/images/user2.png" />
<%--                            <button class="btn btn-light btn-sm " id="profileBtn">프로필보기</button></div>--%>
                        <h3><a href="#"><c:out value="${banker.pbName}"/></a></h3>
                        <p><c:out value="${banker.introContent}"/> </p>
                        <ul class="blog__item__widget" >
                            <h3><p style="color: black">상담 가능 시간</p></h3>
                                <c:if test="${fn:contains(banker.impossible,'1')}">
                                  <li><button class="btn btn-light btn-sm disabled" style="margin-bottom: 10px;font-weight: lighter">10:00</button></li>
                                </c:if>
                                <c:if test="${not fn:contains(banker.impossible,'1')}">
                                  <li><button class="btn btn-light btn-sm " style="margin-bottom: 10px;">10:00</button></li>
                                </c:if>
                                <c:if test="${fn:contains(banker.impossible,'2')}">
                                  <li><button class="btn btn-light btn-sm disabled" style="margin-bottom: 10px;font-weight: lighter">11:00</button></li>
                                </c:if>
                                <c:if test="${not fn:contains(banker.impossible,'2')}">
                                    <li><button class="btn btn-light btn-sm " style="margin-bottom: 10px;">11:00</button></li>
                                </c:if>
                                <c:if test="${fn:contains(banker.impossible,'3')}">
                                  <li><button class="btn btn-light btn-sm disabled" style="margin-bottom: 10px;font-weight: lighter">13:00</button></li>
                                </c:if>
                                <c:if test="${not fn:contains(banker.impossible,'3')}">
                                    <li><button class="btn btn-light btn-sm " style="margin-bottom: 10px;">13:00</button></li>
                                </c:if>
                                <c:if test="${fn:contains(banker.impossible,'4')}">
                                  <li><button class="btn btn-light btn-sm disabled" style="margin-bottom: 10px;"font-weight: lighter>14:00</button></li>
                                </c:if>
                                <c:if test="${not fn:contains(banker.impossible,'4')}">
                                    <li><button class="btn btn-light btn-sm " style="margin-bottom: 10px;">14:00</button></li>
                                </c:if>
                                <c:if test="${fn:contains(banker.impossible,'5')}">
                                  <li><button class="btn btn-light btn-sm disabled" style="margin-bottom: 10px;font-weight: lighter">15:00</button></li>
                                </c:if>
                                <c:if test="${not fn:contains(banker.impossible,'5')}">
                                    <li><button class="btn btn-light btn-sm " style="margin-bottom: 10px;">15:00</button></li>
                                </c:if>
                                <c:if test="${fn:contains(banker.impossible,'6')}">
                                  <li><button class="btn btn-light btn-sm disabled" style="margin-bottom: 10px;font-weight: lighter">16:00</button></li>
                                </c:if>
                                <c:if test="${not fn:contains(banker.impossible,'6')}">
                                  <li><button class="btn btn-light btn-sm " style="margin-bottom: 10px;">16:00</button></li>
                                </c:if>
                        </ul>

                    <div id="tagName"><c:out value="${banker.tagName}"/></div>
                    </div>
                </div>
                </c:forEach>

                <div class="blog__pagination">
                    <a href="#"><i class="fa fa-long-arrow-left"></i> Pre</a>
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">Next <i class="fa fa-long-arrow-right"></i></a>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="blog__sidebar">
                    <div class="blog__sidebar__search">
                        <form action="#">
                            <input type="text" placeholder="Searching...">
                            <button type="submit"><i class="fa fa-search"></i></button>
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
                        <a href="#">Business</a>
                        <a href="#">Marketing</a>
                        <a href="#">Payment</a>
                        <a href="#">Travel</a>
                        <a href="#">Finance</a>
                        <a href="#">Videos</a>
                        <a href="#">Ideas</a>
                        <a href="#">Unique</a>
                        <a href="#">Music</a>
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
                                <p><i class="fa fa-clock-o"></i> 19th March, 2019</p>
                            </div>
                        </a>
                        <a href="#" class="blog__sidebar__recent__item">
                            <div class="blog__sidebar__recent__item__pic">
                                <img src="img/blog/recent-2.jpg" alt="">
                            </div>
                            <div class="blog__sidebar__recent__item__text">
                                <span><i class="fa fa-tags"></i> Hotels</span>
                                <h6>Shrimp floured and fried</h6>
                                <p><i class="fa fa-clock-o"></i> 22th March, 2019</p>
                            </div>
                        </a>
                        <a href="#" class="blog__sidebar__recent__item">
                            <div class="blog__sidebar__recent__item__pic">
                                <img src="img/blog/recent-3.jpg" alt="">
                            </div>
                            <div class="blog__sidebar__recent__item__text">
                                <span><i class="fa fa-tags"></i> Restaurant</span>
                                <h6>Sweet and sour pork ribs</h6>
                                <p><i class="fa fa-clock-o"></i> 25th March, 2019</p>
                            </div>
                        </a>
                        <a href="#" class="blog__sidebar__recent__item">
                            <div class="blog__sidebar__recent__item__pic">
                                <img src="img/blog/recent-4.jpg" alt="">
                            </div>
                            <div class="blog__sidebar__recent__item__text">
                                <span><i class="fa fa-tags"></i> Videos</span>
                                <h6>Crab fried with tamarind</h6>
                                <p><i class="fa fa-clock-o"></i> 19th March, 2019</p>
                            </div>
                        </a>
                        <a href="#" class="blog__sidebar__recent__item">
                            <div class="blog__sidebar__recent__item__pic">
                                <img src="img/blog/recent-5.jpg" alt="">
                            </div>
                            <div class="blog__sidebar__recent__item__text">
                                <span><i class="fa fa-tags"></i> Travel</span>
                                <h6>Tortoise grilled on salt</h6>
                                <p><i class="fa fa-clock-o"></i> 19th March, 2019</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->

<jsp:include page="/WEB-INF/jsp/common/footer.jsp"/>

<!-- Js Plugins -->
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.nicescroll.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.barfiller.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.slicknav.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/main.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/bootstrap.min.js"></script>
</body>

</html>