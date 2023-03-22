<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container-fluid px-3">
    <input class="mb-3" type="text" id="search-bar" placeholder="Search ads...">
    <script>
        const searchBar = document.getElementById('search-bar');
        searchBar.addEventListener('input', (event) => {
            const filterValue = event.target.value.toLowerCase();
            const ads = document.querySelectorAll('.userads');
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
        <h1>Welcome, <c:out value="${sessionScope.user.username}"/>!</h1>
    </div>

    <div class="container-fluid px-3">
        <h1 class="mb-3">Here are your ads:</h1>
        <div class="d-flex justify-content-between">
            <c:forEach var="ad" items="${ads}">
                <c:choose>
                    <c:when test="${sessionScope.user.id eq ad.adUser_id}">
<%--                        <div class="userads">--%>
<%--                            <h2 class="title">${ad.title}</h2>--%>
<%--                            <p class="description">${ad.description}</p>--%>
<%--                            <p class="price">${ad.price}</p>--%>
<%--                            <p>${ad.location}</p>--%>
<%--                            <a href="/ads/unique">...more</a>--%>
                        <div class="">
                            <h2 class="">${ad.title}</h2>
                            <p>${ad.description}</p>
                            <a id="${ad.id}" href="${pageContext.request.contextPath}/ads/unique?id=${ad.id}">...more</a>
<%--                            <a id="${ad.id}" href="${pageContext.request.contextPath}/ads/unique">...more</a>--%>
                        </div>
                    </c:when>
                </c:choose>
            </c:forEach>
        </div>
    </div>


<%--<c:forEach var="ad" items="${ads}">--%>
<%--        <c:when test="${}">--%>
<%--            <jsp:include page="/WEB-INF/partials/messages.jsp" />--%>
<%--        </c:when>--%>
<%--        <c:otherwise>--%>
<%--        <p>no errors here boss</p>--%>
<%--        </c:otherwise>--%>
<%--        </c:forEach>--%>
</body>
    <script>
        function myFunction(e) {
            let elementId = e.target.id;
            if (elementId !== '') {
                // console.log(elementId);
                // alert(elementId);
            }
            else {
                console.log("An element without an id was clicked.");
            }
        }
        // let aTarget = document.getElementsByTagName("UL")
        document.addEventListener('click', myFunction);
    </script>
</html>
