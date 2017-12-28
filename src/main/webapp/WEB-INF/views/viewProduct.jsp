<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<section class="blog_posts">
    <div class="wrapper">
        <div class="title animated wow fadeIn">
            <h2>Product Detail</h2>
            <h3>Here is the detail info about product</h3>
            <hr class="separator"/>
        </div>

        <div class="container">
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
                </div>

            </div>
        </div>



</section><!--  End blog_posts  -->


<%@include file="/WEB-INF/views/template/footer.jsp"%>