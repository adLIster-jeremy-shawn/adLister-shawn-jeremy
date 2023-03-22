<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, <c:out value="${sessionScope.user.username}"/>!</h1>
    </div>

    <div class="container w-90">
<%--    <c:choose>--%>
<%--        <c:when test="${sessionScope.user.id eq ad.adUser_id}">--%>
<%--            <h2 class="mb-5">Here are your ads!</h2>--%>
<%--        </c:when>--%>
<%--        <c:otherwise>--%>
<%--            <h2>You do not have any ads to show.</h2>--%>
<%--        </c:otherwise>--%>
<%--    </c:choose>--%>

    <h2 class="mb-5">Here are your ads:</h2>
    <div class="row row-cols-4">
            <c:forEach var="ad" items="${ads}">
                <c:choose>
                    <c:when test="${sessionScope.user.id eq ad.adUser_id}">
                        <div class="col mb-3">
                            <h2 class="mb-1">${ad.title}</h2>
                            <p>${ad.description}</p>
                            <a href="/ads/unique">...more</a>
                        </div>
                    </c:when>
                </c:choose>
            </c:forEach>
        </div>
    </div>
</body>
</html>
