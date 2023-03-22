<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container w-25">
        <h1>Register</h1>
        <c:choose>
            <c:when test="${not empty errorMessage}">
                <div class="alert alert-danger">${errorMessage}</div>
            </c:when>
            <c:otherwise>
                <div class="alert alert-Primary">Create new user</div>
            </c:otherwise>
        </c:choose>
        <form action="/register" method="POST">
            <div class="form-group pb-3">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text" required>
            </div>
            <div class="form-group pb-3">
                <label for="email">E-mail</label>
                <input id="email" name="email" class="form-control" type="email" required>
            </div>
            <div class="form-group pb-3">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password" placeholder="Min. 8 characters/ 1 special character and 1 number." required>
            </div>
            <input type="submit" class="btn btn-primary btn-block w-100" value="Register">
        </form>
    </div>
</body>
</html>
