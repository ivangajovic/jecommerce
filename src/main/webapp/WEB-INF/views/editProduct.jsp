<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<section class="blog_posts">
    <div class="wrapper">
        <div class="title animated wow fadeIn">
            <h2>Edit Product</h2>
            <h3>Please update the product information here:</h3>
            <hr class="separator"/>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/editProduct" method="post" commandName="product" enctype="multipart/form-data">
        <form:hidden path="productId" value="${product.productId}"/>


        <div class="form-group">
            <label for="name">Name</label><form:errors path="productName" cssStyle="color: #b92c28;"/>
            <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="instrument"/>Instrument</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="records"/>Records</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="accessories"/>Accessories</label>
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}" />
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new"/>New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used"/>Used</label>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control" value="${product.productManufacturer}" />
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="available"/>Available</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="unavailable"/>Not Available</label>
        </div>

        <div class="form-group">
            <label for="price">Price</label><form:errors path="productPrice" cssStyle="color: #b92c28;"/>
            <form:input path="productPrice" id="price" class="form-Control" value="${product.productPrice}" />
        </div>

        <div class="form-group">
            <label for="unitInStock">Units in Stock</label><form:errors path="unitInStock" cssStyle="color: #b92c28;"/>
            <form:input path="unitInStock" id="unitInStock" class="form-Control" value="${product.unitInStock}"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload Image</label>
            <form:input path="productImage" id="productImage" type="file" class="form:input-large" />
        </div>

        <br><br>

        <input type="submit" value="Submit" class="btn btn-default"/>
        <a href="<c:url value="/admin/productInventory"/>" class="btn btn-default">Cancel</a>


        </form:form>





</section><!--  End blog_posts  -->


<%@include file="/WEB-INF/views/template/footer.jsp"%>