<%--<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>--%>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags" %>--%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


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

                    <a href="<spring:url value="/product/viewProduct/${product.productId}"/>">
                        <img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width: 100%"/>
                    </a>
                </div>
                <a href="#">
                    <h1>${product.productName}</h1><br>
                </a>
                <i>Manufacturer: </i><strong>${product.productManufacturer}</strong><br><br>
                <i>Category: </i> <strong>${product.productCategory}</strong><br><br>
                <i>Price: </i> <strong>${product.productPrice} EUR</strong><br><br>

            </li>
            </c:forEach>
        </ul>
    </div>
</section><!--  End blog_posts  -->


<%@include file="/WEB-INF/views/template/footer.jsp"%>