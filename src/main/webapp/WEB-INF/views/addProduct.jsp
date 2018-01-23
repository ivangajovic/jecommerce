<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<section class="blog_posts">
    <div class="wrapper">
        <div class="title animated wow fadeIn">
            <h2>Add Product</h2>
            <h3>Fill the below information to add a product:</h3>
            <hr class="separator"/>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post" commandName="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Name</label><form:errors path="productName" cssStyle="color: #b92c28;"/>
            <form:input path="productName" id="name" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="instrument"/>Instrument</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="records"/>Records</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="accessories"/>Accessories</label>
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new"/>New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used"/>Used</label>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="available"/>Available</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="unavailable"/>Not Available</label>
        </div>

        <div class="form-group">
            <label for="price">Price</label><form:errors path="productPrice" cssStyle="color: #b92c28;"/>
            <form:input path="productPrice" id="price" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="unitInStock">Units in Stock</label><form:errors path="unitInStock" cssStyle="color: #b92c28;"/>
            <form:input path="unitInStock" id="unitInStock" class="form-Control" />
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload Image</label>
            <form:input path="productImage" id="productImage" type="file" class="form:input-large" />
        </div>

        <br><br>

        <input type="submit" value="submit" class="btn btn-default"/>
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
        </form:form>

</section><!--  End blog_posts  -->


<%@include file="/WEB-INF/views/template/footer.jsp"%>