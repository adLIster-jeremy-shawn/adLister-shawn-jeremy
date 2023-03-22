<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "user" scope = "session" value = "${sessionScope.user}"/>
        <c:choose>
            <c:when test="${sessionScope.user != null}">
                <div class="container-fluid px-3">

                <nav class="navbar navbar-default">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="/login">Adlister</a>
                      </div>
                     <ul class="nav block-inline navbar-right">
                        <li class="me-3"><a href="/ads">All Ads</a></li>
                        <li class="me-3"><a href="/ads/create">Create Ad</a></li>
                        <li class="me-3"><a href="/profile">Profile</a></li>
                        <li><a href="/logout">Logout</a></li>
                      </ul>
                </nav>
                </div>
            </c:when>
<c:otherwise>
            <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/login">Adlister</a>
                </div>
                <ul class="nav block-inline navbar-right">
                </ul>
            </div>
            </nav>
</c:otherwise>
        </c:choose>
