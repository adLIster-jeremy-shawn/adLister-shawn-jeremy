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
<%--        <h1 class="mb-5">Here are your ads!</h1>--%>
    <c:choose>
        <c:when test="${sessionScope.user.id eq ad.adUser_id}">
            <h1 class="mb-5">Here are your ads!</h1>
        </c:when>
        <c:otherwise>
            <p>none of the above tests were true</p>
        </c:otherwise>
    </c:choose>

    <div class="row row-cols-4">

            <c:forEach var="ad" items="${ads}">
                <c:choose>
                    <c:when test="${sessionScope.user.id eq ad.adUser_id}">
                        <div class="col mb-3">
                            <h2 class="mb-1">${ad.title}</h2>
                            <p>${ad.description}</p>
                        </div>
                    </c:when>
                </c:choose>
            </c:forEach>
<%--                    <c:otherwise>--%>
<%--                        <h2>No ads yet.</h2>--%>
<%--                    </c:otherwise>--%>
        </div>
    </div>

</body>
</html>
