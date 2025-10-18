<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Jenkins Demo Page</title>
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
      margin: 0;
      background: #f6f8fa;
    }
    .card {
      background: #fff;
      border-radius: 8px;
      box-shadow: 0 6px 18px rgba(0,0,0,0.08);
      padding: 24px;
      text-align: center;
      max-width: 480px;
      width: 90%;
    }
    .logo {
      max-width: 220px;
      width: 50%;
      height: auto;
      display: block;
      margin: 0 auto 16px;
    }
    h1 { margin: 0 0 8px; font-size: 1.6rem; }
    p { margin: 0; color: #555; }
  </style>
</head>
<body>
  <div class="card">
    <!-- Ensure the image file jenkins.png is present at webapp/images/jenkins.png -->
    <img src="${pageContext.request.contextPath}/images/jenkins.png" alt="Jenkins logo" class="logo" />
    <h1>Jenkins Demo</h1>
    <p>Simple JSP page showing the Jenkins logo (local file).</p>
  </div>
</body>
</html>
