<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "user" scope = "session" value = "${sessionScope.user}"/>
<c:choose>
    <c:when test="${sessionScope.user != null}">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="/ads">Adlister</a>
                </div>
                <ul class="nav block-inline navbar-right">
                    <li class="me-3"><a href="/profile">My Ads</a></li>
                    <li class="me-3"><a href="/ads">Ads</a></li>
                    <li class="me-3"><a href="/ads/create">Create Ad</a></li>
                    <li><a href="/logout">Logout</a></li>
                </ul>
            </div>
        </nav>
    </c:when>
    <c:otherwise>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="/ads">Adlister</a>
                </div>
            </div>
        </nav>
    </c:otherwise>
</c:choose>