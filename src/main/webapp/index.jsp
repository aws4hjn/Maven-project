<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- 1. JSTL Tag Library: Required for loops, conditions, and Expression Language (EL) --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <%-- Bootstrap CSS for a modern, responsive design --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
          rel="stylesheet">
    <%-- Custom Stylesheet (using JSTL for proper URL pathing) --%>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>"> 

    <title>Welcome to the MVC Application</title>
</head>
<body>

    <%-- 2. Include Header/Navigation Fragment --%>
    <%-- Place header code in /WEB-INF/jspf/header.jsp --%>
    <jsp:include page="/WEB-INF/jspf/header.jsp"/>

    <div class="container mt-5">
        
        <%-- Hero Section --%>
        <div class="p-5 mb-4 bg-light rounded-3 shadow-sm">
            <h1 class="display-5 fw-bold">Welcome, ${user.firstName} Visitor!</h1>
            
            <%-- Data passed from the Servlet using Expression Language (EL) --%>
            <p class="fs-4">
                Server Time: <strong>${currentTime}</strong>
            </p>
            <p class="col-md-8 fs-5">
                This application follows the MVC pattern. All data is prepared by Java Servlets and displayed here in the JSP View.
            </p>
            <a href="<c:url value='/dashboard'/>" class="btn btn-primary btn-lg">
                Go to Dashboard &raquo;
            </a>
        </div>

        <div class="row">
            <div class="col-md-6">
                <h2>Featured Items</h2>
                <ul class="list-group">
                    <%-- 3. JSTL for Logic: Check if the 'items' list is not empty --%>
                    <c:choose>
                        <c:when test="${not empty items}">
                            <%-- Loop through the list of 'items' passed from the Servlet --%>
                            <c:forEach var="item" items="${items}" begin="0" end="2">
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    <strong><c:out value="${item.name}"/></strong>
                                    <span class="badge bg-success rounded-pill">$<c:out value="${item.price}"/></span>
                                </li>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <li class="list-group-item list-group-item-info">No items are featured right now.</li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
            
            <div class="col-md-6">
                <h2>Need an Account?</h2>
                <p>Register today to unlock personalized features and services.</p>
                <a href="<c:url value='/login'/>" class="btn btn-outline-secondary me-2">Login</a>
                <a href="<c:url value='/register'/>" class="btn btn-success">Create Account</a>
            </div>
        </div>
    </div>

    <%-- 4. Include Footer Fragment --%>
    <%-- Place footer code in /WEB-INF/jspf/footer.jsp --%>
    <jsp:include page="/WEB-INF/jspf/footer.jsp"/>
    
    <%-- Bootstrap JavaScript Bundle --%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
