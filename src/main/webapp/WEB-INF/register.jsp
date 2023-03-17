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
        <form action="/register" method="POST">
            <div class="form-group pb-3">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group pb-3">
                <label for="email">E-mail</label>
                <input id="email" name="email" class="form-control" type="text">
            </div>
            <div class="form-group pb-3">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
<%--            <div class="form-group pb-3">--%>
<%--                <label for="confirm_password">Confirm password</label>--%>
<%--                <input id="confirm_password" name="confirm_password" class="form-control" type="password">--%>
<%--            </div>--%>
            <input type="submit" class="btn btn-primary btn-block w-100" value="Register">
        </form>
    </div>
</body>
</html>
