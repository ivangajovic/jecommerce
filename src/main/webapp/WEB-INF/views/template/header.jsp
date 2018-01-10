<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags" %>--%>
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
    <meta name="author" content="">
    <meta name="description" content="Ivan's Web Shop"/>
    <%--Angular JS--%>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/reset.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/fancybox-thumbs.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/fancybox-buttons.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/fancybox.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/animate.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css" />">
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

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
        <a href="<c:url value="/"/> "><img class="logo" src="<c:url value="/resources/img/logo_dark.png" />" alt=""/></a>
        <nav>
            <ul>
                <li><a href="<c:url value="/" />">Home</a></li>
                <li><a href="<c:url value="/productList" />">Products</a></li>
                <li><a href="">Contact Us</a></li>
                <li><a href="<c:url value="/admin" />">Admin</a></li>
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