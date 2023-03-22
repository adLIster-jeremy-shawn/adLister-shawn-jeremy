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
                            <p>${ad.price}</p>
                            <p>${ad.location}</p>
                            <a href="/ads/unique">...more</a>
                            <div>
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <form>
                                                <div class="mb-3">
                                                    <label for="title" class="form-label">title</label>
                                                    <input type="text" class="form-control" id="title" aria-describedby="emailHelp" required value="${ad.title}">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="Price" class="form-label">Price</label>
                                                    <input type="text" class="form-control" id="Price" aria-describedby="emailHelp" required value="${ad.price}">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="Description" class="form-label">Description/label>
                                                    <input type="text" class="form-control" id="Description" aria-describedby="emailHelp" required value="${ad.description}">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="Location" class="form-label">Location</label>
                                                    <input type="text" class="form-control" id="Location" aria-describedby="emailHelp" required value="${ad.location}">
                                                </div>
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>
                        </div>
        <button type="button" class="btn btn-primary " data-bs-toggle="modal" data-bs-target="#exampleModal">
            Launch demo modal
        </button>
                    </c:when>
                </c:choose>
            </c:forEach>

</body>
</html>
