<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/flaticon.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/barfiller.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/owl.carousel.min.css"
          type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/style.css" type="text/css">

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

        ul > li {
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

        .checkBox, .checkBox > ul {
            position: relative;
        }

        .checkBox > ul > li {
            float: left;
        }

        .checkBox > ul > li:first-child {
            width: 85%;
            padding: 15px;
            font-weight: 600;
            color: #888;
        }

        .checkBox > ul > li:nth-child(2) {
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

        .footBtwrap > li {
            float: left;
            width: 50%;
            height: 60px;
        }

        .footBtwrap > li > button {
            display: block;
            width: 100%;
            height: 100%;
            font-size: 20px;
            text-align: center;
            line-height: 60px;
        }


        .product-classification {
            cursor: pointer;
            padding: 5px 40px 5px 10px;
            -moz-appearance: none;
            -webkit-appearance: none;
            appearance: none;
            border: 1px solid #dedede;
            font-size: 16px;
            background: transparent;
            background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%20000002%22%20d%3D%22M287%2069.4a17.6%2017.6%200%200%200-13-5.4H18.4c-5%200-9.3%201.8-12.9%205.4A17.6%2017.6%200%200%200%200%2082.2c0%205%201.8%209.3%205.4%2012.9l128%20127.9c3.6%203.6%207.8%205.4%2012.8%205.4s9.2-1.8%2012.8-5.4L287%2095c3.5-3.5%205.4-7.8%205.4-12.8%200-5-1.9-9.2-5.5-12.8z%22%2F%3E%3C%2Fsvg%3E');
            background-position: right 10px top 50%, 0, 0;
            background-size: 12px auto, 100%;
            background-repeat: no-repeat;
        }

        #mainContent {
            border: 1px solid black;
            padding: 15px;
        }

        .listing__hero__text h2 {
            color: black;
        }

    </style>

</head>

<body>
<%--<!-- Page Preloder -->--%>
<%--<div id="preloder">--%>
<%--    <div class="loader"></div>--%>
<%--</div>--%>

<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>

<section class="hero-wrap hero-wrap-2"
         data-stellar-background-ratio="0.5" style="margin-bottom: 100px;">
    <div class="overlay" style="background: #27b2a5;"></div>
    <div class="container">
        <div
                class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate mb-5 text-center">
                <p class="breadcrumbs mb-0">
						<span class="mr-2"><a href="index.html">Home <i
                                class="fa fa-chevron-right"></i></a></span> <span>My Page <i
                        class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread" style="color: #fff">상담 내역 조회</h1>
            </div>
        </div>
    </div>
</section>

<!-- Listing Section Begin -->
<section class="listing-hero set-bg" data-setbg="img/listing/details/listing-hero.jpg">
    <div class="container">
        <div class="row" style="background-color: #f9f9f9">
            <div class="listing__hero__option">
                <div class="listing__hero__icon">
                    <img src="img/listing/details/ld-icon.png" alt="">
                </div>
                <div class="listing__hero__text">
                    <h2>Cosiana Sour Restaurant</h2>
                    <div class="listing__hero__widget">
                        <div class="listing__hero__widget__rating">
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star-half_alt"></span>
                        </div>
                        <div>120 Review</div>
                    </div>
                    <p><span class="icon_pin_alt"></span> 1012 Vesper Dr. Columbus, Georgia, United States</p>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<!-- Listing Section End -->

<!-- Listing Details Section Begin -->
<section class="listing-details spad">
    <div class="container">
        <div class="row" style="background-color: #f9f9f9">
            <div class="col-lg-12">
                <div class="listing__details__text">
                    <div class="listing__details__about">
                        <h4>상담 코멘트</h4>
                        <div id="mainContent">
                            <p>Entries from over 70 countries cover every imaginable space; From ships to airports,
                                museums to burger vans, from revered Michelin-starred establishments to the fleeting
                                dynamism of pop-ups.</p>
                            <p>The judges are the most influential global personalities from hospitality, design and
                                lifestyle media and have previously included the Editor in Chief of Wallpaper*, Marcus
                                Wareing and Thomas Heatherwick.
                                The Awards are followed by over 40,000 of the most influential architects, designers,
                                hospitality professionals and lifestyle media from around the globe.</p>
                        </div>
                    </div>
                </div>
                <div class="listing__details__comment">
                    <h4>Comment</h4>
                    <div class="listing__details__comment__item">
                        <div class="listing__details__comment__item__pic">
                            <img src="${pageContext.request.contextPath}/resources/pbImage.png" alt=""
                                 style="border: 1px solid cadetblue">
                        </div>
                        <div class="listing__details__comment__item__text">
                            <%--                            <div class="listing__details__comment__item__rating">--%>
                            <%--                                <i class="fa fa-star"></i>--%>
                            <%--                                <i class="fa fa-star"></i>--%>
                            <%--                                <i class="fa fa-star"></i>--%>
                            <%--                                <i class="fa fa-star"></i>--%>
                            <%--                                <i class="fa fa-star"></i>--%>
                            <%--                            </div>--%>
                            <span>March 22, 2019</span>
                            <h5>Marry Jane</h5>
                            <p>From ships to airports, museums to burger vans, from revered Michelin star
                                establish to the fleeting dynamism of pop-ups.</p>
                            <%--                            <ul>--%>
                            <%--                                <li><i class="fa fa-hand-o-right"></i> Like</li>--%>
                            <%--                                <li><i class="fa fa-share-square-o"></i> Reply</li>--%>
                            <%--                            </ul>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="listing__details__review" style="padding: 30px; width: 100%;">
                <h4>Add Review</h4>
                <form action="#">
                    <textarea placeholder="Review"></textarea>
                    <button type="submit" class="site-btn">댓글 달기</button>
                </form>
            </div>
        </div>
    </div>
    </div>
    </div>
</section>
<!-- Listing Details Section End -->


<jsp:include page="/WEB-INF/jsp/common/footer.jsp"/>


<!-- Js Plugins -->
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.barfiller.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.slicknav.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/main.js"></script>
</body>

</html>