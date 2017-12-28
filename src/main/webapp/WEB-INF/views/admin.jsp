<%--
  Created by IntelliJ IDEA.
  User: AlteaVision23
  Date: 12/11/2017
  Time: 1:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<%--<section class="video">--%>
<%--<img src="<c:url value="/resources/img/video_logo.png" />" alt="" class="video_logo animated wow fadeInDown"/>--%>
<%--<h3 class="animated wow fadeInDown">who we are & what we do</h3>--%>
<%--<a href="http://www.youtube.com/embed/cBJyo0tgLnw" id="play_btn" class="fancybox animated wow flipInX" data-wow-duration="2s"></a>--%>
<%--</section><!--  End video  -->--%>

<section class="blog_posts">
    <div class="wrapper">
        <div class="title animated wow fadeIn">
            <h2>Administrator page</h2>
            <h3>This is the administrator page</h3>
            <hr class="separator"/>
        </div>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Welcome: ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout"/> ">Logout</a>
            </h2>
        </c:if>
            <h5><a href="<c:url value="/admin/productInventory" />">Product Inventory</a></h5>

            <p>Here you can view, check and modify product inventory!</p>

    </div>
</section><!--  End blog_posts  -->


<%@include file="/WEB-INF/views/template/footer.jsp"%>
