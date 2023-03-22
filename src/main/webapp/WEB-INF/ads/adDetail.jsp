<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing Your Ads" />
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
    <h1 class="mb-3">Here is your unique ad</h1>
    <div class="d-flex justify-content-between">
        <c:choose>
            <c:when test="${sessionScope.ad.id eq adId}">
                <div class="">
                    <h2>${ad.title}</h2>
                    <p>${ad.price}</p>
                    <p>${ad.description}</p>
                    <p>${ad.location}</p>
                </div>
            </c:when>
        </c:choose>
    </div>
</div>
</body>
<script>
    <%--let adId = document.getElementById(${ad.id});--%>
    <%--console.log(adId);--%>
    <%--let test = 1 + 2;--%>
    console.log(adId);

</script>
</html>
