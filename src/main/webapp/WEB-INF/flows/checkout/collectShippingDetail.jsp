<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<section class="blog_posts">
    <div class="wrapper">
        <div class="title animated wow fadeIn">
            <h2>Customer</h2>
            <h3>Customer Details</h3>
            <hr class="separator"/>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3>Shipping Address</h3>

        <div class="form-group">
            <label for="shippingStreet">Street Name</label>
            <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Apatment Number</label>
            <form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCity">City</label>
            <form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingState">State</label>
            <form:input path="cart.customer.shippingAddress.state" id="shippingState" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCountry">Country</label>
            <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingZipCode">Zip Code</label>
            <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZipCode" class="form-Control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />


        <br><br>

        <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>
        <input type="submit" value="next" class="btn btn-default" name="_eventId_shippingDetailCollected" />
        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>
        </form:form>

</section><!--  End blog_posts  -->


<%@include file="/WEB-INF/views/template/footer.jsp"%>