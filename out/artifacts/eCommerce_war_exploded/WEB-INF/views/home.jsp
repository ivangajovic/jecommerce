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
                <li><a href="">About Us</a></li>
                <li><a href="<c:url value="/productList" />">Products</a></li>
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


<section class="services wrapper">
    <ul class="clearfix">
        <li class="animated wow fadeInDown">
            <img class="icon" src="<c:url value="/resources/img/icon1.png" />" alt=""/>
            <span class="separator"></span>
            <h2>Officia Deserunt Mollit</h2>
            <p>sed do eiusmod tempor incididunt ut labore et dolore magna aliqua voluptate velit esse
                cillum dolore.</p>
        </li>
        <li class="animated wow fadeInDown"  data-wow-delay=".2s">
            <img class="icon" src="<c:url value="/resources/img/icon2.png" />" alt=""/>
            <span class="separator"></span>
            <h2>Culpa Killum Dolore</h2>
            <p>aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
        </li>
        <li class="animated wow fadeInDown"  data-wow-delay=".4s">
            <img class="icon" src="<c:url value="/resources/img/icon3.png" />" alt=""/>
            <span class="separator"></span>
            <h2>Elit Tempor Incididunt</h2>
            <p>nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat enim ad minim veniam.</p>
        </li>
    </ul>
</section><!--  End services  -->


<section class="video">
    <img src="<c:url value="/resources/img/video_logo.png" />" alt="" class="video_logo animated wow fadeInDown"/>
    <h3 class="animated wow fadeInDown">who we are & what we do</h3>
    <a href="http://www.youtube.com/embed/cBJyo0tgLnw" id="play_btn" class="fancybox animated wow flipInX" data-wow-duration="2s"></a>
</section><!--  End video  -->


<section class="testimonials wrapper">
    <div class="title animated wow fadeIn">
        <h2>Testimonials</h2>
        <h3>what clients are saying about us</h3>
        <hr class="separator"/>
    </div>

    <ul class="clearfix">
        <li class="animated wow fadeInDown">
            <p><img src="<c:url value="/resources/img/quotes.png" />" alt="" class="quotes"/>Dolor sit amet consectetur isicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua enim ad minim veniam quis nostrud laboris.
                <span class="triangle"></span>
            </p>
            <div class="client">
                <img src="<c:url value="/resources/img/client1.jpg" />" class="avatar"/>
                <div class="client_details">
                    <h4>John Doe</h4>
                    <h5>CEO</h5>
                </div>
            </div>
        </li>
        <li class="animated wow fadeInDown"  data-wow-delay=".2s">
            <p><img src="<c:url value="/resources/img/quotes.png" />" alt="" class="quotes"/>Tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam sunt in culpa officia deserunt mollit anim laborum sint occaecat.
                <span class="triangle"></span>
            </p>
            <div class="client">
                <img src="<c:url value="/resources/img/client2.jpg" />" class="avatar"/>
                <div class="client_details">
                    <h4>Alex Martin</h4>
                    <h5>UI Designer</h5>
                </div>
            </div>
        </li>
        <li class="animated wow fadeInDown"  data-wow-delay=".4s">
            <p><img src="<c:url value="/resources/img/quotes.png" />" alt="" class="quotes"/>Aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse slum dolore eu fugiat nulla pariatursint occaecat.
                <span class="triangle"></span>
            </p>
            <div class="client">
                <img src="<c:url value="/resources/img/client3.jpg" />" class="avatar"/>
                <div class="client_details">
                    <h4>Linda Doe</h4>
                    <h5>Developer</h5>
                </div>
            </div>
        </li>
    </ul>
</section><!--  End testimonials  -->


<section class="blog_posts">
    <div class="wrapper">
        <div class="title animated wow fadeIn">
            <h2>Recent Posts</h2>
            <h3>the most recent posts from our blog</h3>
            <hr class="separator"/>
        </div>

        <ul class="clearfix">
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
                    <h1>Sed do eiusmod tempor incididunt.</h1>
                </a>
            </li>

            <li class="animated wow fadeInDown" data-wow-delay=".2s">
                <div class="media">
                    <div class="date">
                        <span class="day">11</span>
                        <span class="month">May</span>
                    </div>
                    <a href="#">
                        <img src="<c:url value="/resources/img/blog_post2.jpg" />" alt=""/>
                    </a>
                </div>
                <a href="#">
                    <h1>Velit esse cillum dollore fugiat nulla.</h1>
                </a>
            </li>

            <li class="animated wow fadeInDown" data-wow-delay=".4s">
                <div class="media">
                    <div class="date">
                        <span class="day">13</span>
                        <span class="month">Feb</span>
                    </div>
                    <a href="#">
                        <img src="<c:url value="/resources/img/blog_post3.jpg" />" alt=""/>
                    </a>
                </div>
                <a href="#">
                    <h1>Officia deserunt mollit est anim laborum.</h1>
                </a>
            </li>

            <li class="animated wow fadeInDown" data-wow-delay=".6s">
                <div class="media">
                    <div class="date">
                        <span class="day">10</span>
                        <span class="month">Jan</span>
                    </div>
                    <a href="#">
                        <img src="<c:url value="/resources/img/blog_post4.jpg" />" alt=""/>
                    </a>
                </div>
                <a href="#"><h1>Culpa qui officia deserunt
                    mollit ani
                    m.</h1>
                </a>
            </li>
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
