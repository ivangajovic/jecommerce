<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: AlteaVision23
  Date: 12/6/2017
  Time: 2:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sublime - stunning free HTML5/CSS3 website template</title>
    <meta charset="utf-8">
    <meta name="author" content="pixelhint.com">
    <meta name="description" content="Sublime Stunning free HTML5/CSS3 website template"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/reset.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/fancybox-thumbs.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/fancybox-buttons.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/fancybox.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/animate.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css" />">

    <script type="text/javascript" src="<c:url value="/resources/js/jquery.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/fancybox.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/fancybox-buttons.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/fancybox-media.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/fancybox-thumbs.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/wow.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/main.js" />"></script>
</head>
<body>

<section class="billboard dark">
    <header class="wrapper dark">
        <a href="#"><img class="logo" src="<c:url value="/resources/img/logo_dark.png" />" alt=""/></a>
        <nav>
            <ul>
                <li><a href="<c:url value="/" />">Home</a></li>
                <li><a href="">Journal</a></li>
                <li><a href="">Contact Us</a></li>
            </ul>
        </nav>
    </header>

    <div class="caption dark animated wow fadeInDown clearfix">
        <h1>Sunt In Culpa Officia Deserunt</h1>
        <p>dolore magna aliqua enim ad minim veniam occaecat</p>
        <hr>
    </div>
    <div class="shadow"></div>
</section><!--  End billboard  -->

<%--<section class="video">--%>
    <%--<img src="<c:url value="/resources/img/video_logo.png" />" alt="" class="video_logo animated wow fadeInDown"/>--%>
    <%--<h3 class="animated wow fadeInDown">who we are & what we do</h3>--%>
    <%--<a href="http://www.youtube.com/embed/cBJyo0tgLnw" id="play_btn" class="fancybox animated wow flipInX" data-wow-duration="2s"></a>--%>
<%--</section><!--  End video  -->--%>

<section class="blog_posts">
    <div class="wrapper">
        <div class="title animated wow fadeIn">
            <h2>Products</h2>
            <h3>List of products from our shop</h3>
            <hr class="separator"/>
        </div>

        <ul class="clearfix">
            <c:forEach items="${products}" var="product">
            <li class="animated wow fadeInDown">
                <div class="media">
                    <div class="date">
                        <span class="day">25</span>
                        <span class="month">Jun</span>
                    </div>

                    <a href="#">
                        <img src="<c:url value="/resources/img/blog_post1.jpg" />" alt=""/>
                    </a>
                </div>
                <a href="#">
                    <h1>${product.productName}</h1><br>
                </a>
                <i>Manufacturer: </i><strong>${product.productManufacturer}</strong><br><br>
                <i>Category: </i> <strong>${product.productCategory}</strong><br><br>
                <i>Price: </i> <strong>${product.productPrice} EUR</strong><br><br>
                <i>Desc.: </i> <strong>${product.productDescription}</strong>

            </li>
            </c:forEach>
        </ul>
    </div>
</section><!--  End blog_posts  -->


<footer>
    <div class="wrapper">
        <div class="rights">
            <img src="<c:url value="/resources/img/footer_logo.png" />" alt="" class="footer_logo"/>
            <p>© Sublime. All Rights Reserved 2014 - More Free Templates at <a href="http://pixelhint.com" target="_blank">Pixelhint.com</a></p>
        </div>

        <nav>
            <ul>
                <li><a href="#">About</a></li>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </div>
</footer><!--  End footer  -->
<script src='../ga.js'></script>
</body>
</html>
