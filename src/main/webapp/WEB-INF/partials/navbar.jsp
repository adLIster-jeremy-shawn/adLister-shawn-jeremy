<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "user" scope = "session" value = "${sessionScope.user}"/>
        <c:choose>
            <c:when test="${sessionScope.user != null}">
                <nav class="navbar navbar-default">
                   <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="/ads">Adlister</a>
                      </div>
                     <ul class="nav block-inline navbar-right">
                        <li class="me-3"><a href="/ads">Ads</a></li>
                        <li class="me-3"><a href="/ads/create">Create Ad</a></li>
                        <li class="me-3"><a href="/profile">profile</a></li>
                        <li><a href="/logout">Logout</a></li>
                      </ul>
                   </div>
                </nav>
            </c:when>
<c:otherwise>
            <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/ads">Adlister</a>
                </div>
                <ul class="nav block-inline navbar-right">
                    <li class="me-3"><a href="/login">Login</a></li>
                    <li class="me-3"><a href="/ads/create">Create Ad</a></li>
                </ul>
            </div>
            </nav>
</c:otherwise>
        </c:choose>
