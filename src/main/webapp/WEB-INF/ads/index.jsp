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
<div class="container-fluid px-3">

<input class="mb-3" type="text" id="search-bar" placeholder="Search ads...">
<script>
    const searchBar = document.getElementById('search-bar');
    searchBar.addEventListener('input', (event) => {
        const filterValue = event.target.value.toLowerCase();
        const ads = document.querySelectorAll('.listads');
        ads.forEach((ad) => {
            const title = ad.querySelector('h2').textContent.toLowerCase();
            const price = ad.querySelector('p').textContent.toLowerCase();
            if (title.includes(filterValue) || price.includes(filterValue)) {
                ad.style.display = '';
            } else {
                ad.style.display = 'none';
            }
        });
    });
</script>
</div>

<div class="container-fluid px-3">
    <h1 class="mb-3">Here Are all the ads!</h1>
    <div class="d-flex justify-content-between">
        <c:forEach var="ad" items="${ads}">
            <div class="">
                <h2 class="">${ad.title}</h2>
                <p>${ad.description}</p>
                <a id="${ad.id}" href="${pageContext.request.contextPath}/ads/unique?id=${ad.id}">...more</a>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
