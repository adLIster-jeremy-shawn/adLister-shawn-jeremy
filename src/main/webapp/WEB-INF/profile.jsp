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
    <div class="container-fluid px-3">
    <input class="mb-3" type="text" id="search-bar" placeholder="Search ads...">
    <script>
        const searchBar = document.getElementById('search-bar');
        searchBar.addEventListener('input', (event) => {
            const filterValue = event.target.value.toLowerCase();
            const ads = document.querySelectorAll('.col');
            ads.forEach((ad) => {
                const title = ad.querySelector('h2').textContent.toLowerCase();
                const description = ad.querySelector('p').textContent.toLowerCase();
                if (title.includes(filterValue) || description.includes(filterValue)) {
                    ad.style.display = '';
                } else {
                    ad.style.display = 'none';
                }
            });
        });
    </script>
    </div>
    <div class="container-fluid px-3">
        <h1>Welcome, <c:out value="${sessionScope.user.username}"/>!</h1>
    </div>

    <div class="container-fluid px-3">
        <h1 class="mb-3">Here are your ads:</h1>
        <div class="d-flex justify-content-between">
            <c:forEach var="ad" items="${ads}">
                <c:choose>
                    <c:when test="${sessionScope.user.id eq ad.adUser_id}">
                        <div class="">
                            <h2 class="">${ad.title}</h2>
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
