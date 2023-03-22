<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container w-25">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group pb-3">

                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text" required>

                <label for="price">Price</label>
                <input id="price" name="price" class="form-control" type="number" min="0" max="99999" required>

                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text" required></textarea>

                <label for="location">Location</label>
                <input id="location" name="location" class="form-control" type="text" required>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
