<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container w-25">
        <h1>Log In</h1>
        <c:choose>
            <c:when test="${not empty errorMessage2}">
                <div class="alert alert-danger">${errorMessage2}</div>
            </c:when>
            <c:otherwise>
                <div class="alert alert-Primary">Log in</div>
            </c:otherwise>
        </c:choose>
        <form action="/login" method="POST">
            <div class="form-group pb-3">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text" required value="${param.username}" placeholder="Username">
            </div>
            <div class="form-group pb-3">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password" required placeholder="Password">
            </div>
            <input type="submit" class="btn btn-primary btn-block w-100 mb-3" value="Log In">
<%--            <input type="submit" class="btn btn-primary btn-block w-100 mb-3" href="/WEB-INF/register" value="Register"/>--%>

                <a class="btn btn-primary btn-block w-100" href="/register">
<%--            <button class="btn btn-primary btn-block w-100">--%>
                Register
<%--            </button>--%>
                </a>
        </form>
    </div>
</body>
</html>
