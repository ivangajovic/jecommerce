<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags" %>--%>
<%--<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<%--<section class="video">--%>
<%--<img src="<c:url value="/resources/img/video_logo.png" />" alt="" class="video_logo animated wow fadeInDown"/>--%>
<%--<h3 class="animated wow fadeInDown">who we are & what we do</h3>--%>
<%--<a href="http://www.youtube.com/embed/cBJyo0tgLnw" id="play_btn" class="fancybox animated wow flipInX" data-wow-duration="2s"></a>--%>
<%--</section><!--  End video  -->--%>

<section class="blog_posts">
    <div class="wrapper">
        <div class="title animated wow fadeIn">
            <h2>Product Inventory Page</h2>
            <h3>This is product inventory page</h3>
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

                        <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                            <img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width: 100%"/>
                        </a>
                    </div>
                    <a href="#">
                        <h1>${product.productName}</h1><br>
                    </a>
                    <i>Manufacturer: </i><strong>${product.productManufacturer}</strong><br><br>
                    <i>Category: </i> <strong>${product.productCategory}</strong><br><br>
                    <i>Price: </i> <strong>${product.productPrice} EUR</strong><br><br>
                    <br><br><a href="<spring:url value="/admin/product/deleteProduct/${product.productId}"/> "><span class="glyphicon glyphicon-remove"/> </a>
                    <br><br><a href="<spring:url value="/admin/product/editProduct/${product.productId}"/> "><span class="glyphicon glyphicon-pencil"/> </a>

                </li>
            </c:forEach>
        </ul>
    </div>
        <a href="<spring:url value="/admin/product/addProduct" /> " class="btn btn-primary">Add Product</a>
</section><!--  End blog_posts  -->



<%@include file="/WEB-INF/views/template/footer.jsp"%>