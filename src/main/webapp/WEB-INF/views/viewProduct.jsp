<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<%@include file="/WEB-INF/views/template/header.jsp"%>


<section class="blog_posts">
    <div class="wrapper">
        <div class="title animated wow fadeIn">
            <h2>Product Detail</h2>
            <h3>Here is the detail info about product</h3>
            <hr class="separator"/>
        </div>

        <div class="container" ng-app="cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width: 100%"/>
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3><br><br>
                    <i>Manufacturer: </i><strong>${product.productManufacturer}</strong><br><br>
                    <i>Category: </i><strong>${product.productCategory}</strong><br><br>
                    <i>Description: </i><strong>${product.productDescription}</strong><br><br>
                    <i>Condition: </i><strong>${product.productCondition}</strong><br><br>
                    <i>Price: </i><strong>${product.productPrice} EUR</strong><br><br>
                    <i>Status: </i><strong>${product.productStatus}</strong><br><br>
                    <i>Units in stock: </i><strong>${product.unitInStock} pcs</strong>

                    <br>
                    <c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/admin/productInventory" />
                    <c:if test="${role='admin'}">
                       <c:set var="url" scope="page" value="/productList" />
                    </c:if>



                    <p data-ng-controller="cartCtrl">
                        <a href="<c:url value="${url}" />" class="btn btn-default">Back</a>
                        <a href="#" class="btn btn-warning btn-large" data-ng-click="addToCart('${product.productId}')"><span class="glyphicon glyphicon-shopping-cart"></span>Order Now</a>
                        <a href="<spring:url value="/cart" />" class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a>
                        <%--System.out.println("I AM WELL and ALIVE1!");--%>
                    </p>
                </div>

            </div>
        </div>
    </div>



</section><!--  End blog_posts  -->


<script src="<c:url value="/resources/js/controller.js"/> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp"%>