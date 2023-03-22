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
<div class="container">
    <h1 class="mb-3">Here Are all the ads!</h1>
    <div class="d-flex justify-content-center align-items-center">
<%--        <c:forEach var="ad" items="${ads}">--%>
<%--            <div class="">--%>
<%--                <h2 class="">${ad.title}</h2>--%>
<%--                <p>$${ad.price}</p>--%>
<%--                <a href=""></a>--%>
<%--                    &lt;%&ndash;                <p>${ad.description}</p>&ndash;%&gt;--%>
<%--            </div>--%>
<%--        </c:forEach>--%>
        <div class="">
            <h2 class="">Unique ad title</h2>
            <p>$100.00</p>
            <p>Unique ad description</p>
            <p>Unique ad location</p>
        </div>
    </div>
</div>
</body>
</html>
