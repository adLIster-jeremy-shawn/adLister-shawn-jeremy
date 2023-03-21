<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<input class="mx-3" type="text" id="search-bar" placeholder="Search ads...">
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
<div class="container w-90">
    <h1 class="mb-5">Here Are all the ads!</h1>
    <div class="row row-cols-4">
        <c:forEach var="ad" items="${ads}">
            <div class="col mb-3">
                <h2 class="mb-1">${ad.title}</h2>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>

</div>

</body>
</html>
