<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
<%--    <style><%@include file="../../CSS/styles.css"%></style>--%>

</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container w-25">
        <h1>Create a new Ad</h1>
        <form class= "needs-validation" action="/ads/create" method="post">
            <div class="form-group pb-3">
                <label for="title" class="form-label" id="createAdTitle">Title</label>
                <input id="title" name="title" class="form-control" type="text" aria-describedby="createAdTitle validationServerUsernameFeedback" required>
                <div id="validationServerUsernameFeedback" class="invalid-feedback">
                    Give your ad a title
                </div>
            </div>
            <div class="form-group pb-3">
                <label for="description" class="form-label">Description</label>
                <textarea id="description" name="description" class="form-control is-valid" type="text" required></textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
<%--    <script><%@include file="../../JS/script.js"%></script>--%>
</body>
</html>
