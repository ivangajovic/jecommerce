<%--<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>--%>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags" %>--%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<section class="blog_posts">
    <div class="wrapper">
        <div class="title animated wow fadeIn">
            <h2>Customer Management Page</h2>
            <h3>This is the customer management page</h3>
            <hr class="separator"/>
        </div>

        <table class="table table-bordered table-hover">
            <thead class="thead-dark">
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Username</th>
                <th>Enabled</th>
            </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tbody>
                <tr>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.username}</td>
                    <td>${customer.enabled}</td>
                </tr>
                </tbody>
            </c:forEach>
        </table>
    </div>
</section><!--  End blog_posts  -->


<%@include file="/WEB-INF/views/template/footer.jsp"%>