<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
          rel="stylesheet">
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>"> 

    <title>Welcome to Our Application</title>
</head>
<body>

    <jsp:include page="/WEB-INF/jspf/header.jsp"/>

    <div class="container mt-5">
        <div class="p-5 mb-4 bg-light rounded-3">
            <h1 class="display-5 fw-bold">Welcome, Visitor!</h1>
            
            <p class="fs-4">
                The current time is: <strong>${currentTime}</strong>
            </p>
            <p class="col-md-8 fs-5">
                This is the main entry point of our application, built with JavaServer Pages (JSP) and adhering to the MVC pattern.
            </p>
            <a href="<c:url value='/products'/>" class="btn btn-primary btn-lg">
                View Products
            </a>
        </div>

        <div class="row">
            <div class="col-md-6">
                <h2>Featured Items</h2>
                <ul class="list-group">
                    <c:choose>
                        <c:when test="${not empty items}">
                            <c:forEach var="item" items="${items}" end="2">
                                <li class="list-group-item">
                                    <strong><c:out value="${item.name}"/></strong> 
                                    - Price: <c:out value="${item.price}"/>
                                </li>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <li class="list-group-item list-group-item-info">No items found yet.</li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
            
            <div class="col-md-6">
                <h2>Get Started</h2>
                <p>Register or log in to see personalized content.</p>
                <a href="<c:url value='/login'/>" class="btn btn-outline-secondary">Login</a>
                <a href="<c:url value='/register'/>" class="btn btn-success">Register</a>
            </div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/jspf/footer.jsp"/>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
