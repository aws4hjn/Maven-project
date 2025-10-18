<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Jenkins | The Coolest CI/CD Tool 😎</title>
  <style>
    /* Background animation */
    @keyframes gradientMove {
      0% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
      100% { background-position: 0% 50%; }
    }

    body {
      margin: 0;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(-45deg, #ff3c3c, #ff9a00, #007bff, #6610f2);
      background-size: 400% 400%;
      animation: gradientMove 10s ease infinite;
      color: #fff;
    }

    .glass-card {
      background: rgba(255, 255, 255, 0.1);
      border-radius: 20px;
      padding: 50px 40px;
      text-align: center;
      box-shadow: 0 8px 40px rgba(0, 0, 0, 0.4);
      backdrop-filter: blur(10px);
      border: 1px solid rgba(255, 255, 255, 0.2);
      transition: transform 0.5s ease, box-shadow 0.5s ease;
    }

    .glass-card:hover {
      transform: scale(1.05);
      box-shadow: 0 12px 45px rgba(0, 0, 0, 0.6);
    }

    .glass-card img {
      width: 180px;
      height: auto;
      margin-bottom: 25px;
      filter: drop-shadow(0 5px 10px rgba(0,0,0,0.4));
      transition: transform 0.4s ease;
    }

    .glass-card img:hover {
      transform: rotate(5deg) scale(1.1);
    }

    h1 {
      font-size: 2rem;
      margin-bottom: 10px;
      color: #ffeb3b;
    }

    p {
      font-size: 1.1rem;
      color: #e0e0e0;
    }

    .btn {
      margin-top: 25px;
      background: linear-gradient(90deg, #ff9800, #ffc107);
      border: none;
      color: #000;
      padding: 12px 30px;
      font-size: 1rem;
      font-weight: bold;
      border-radius: 30px;
      text-decoration: none;
      transition: all 0.3s ease;
      cursor: pointer;
      box-shadow: 0 4px 15px rgba(255, 193, 7, 0.4);
    }

    .btn:hover {
      background: linear-gradient(90deg, #ffc107, #ff9800);
      transform: scale(1.1);
      box-shadow: 0 6px 25px rgba(255, 193, 7, 0.7);
    }

    footer {
      position: absolute;
      bottom: 10px;
      font-size: 0.9rem;
      color: rgba(255, 255, 255, 0.8);
    }
  </style>
</head>
<body>
  <div class="glass-card">
    <img src="https://upload.wikimedia.org/wikipedia/commons/6/69/Jenkins_logo.svg" alt="Jenkins Logo">
    <h1>Welcome to Jenkins</h1>
    <p>The Powerhouse of Continuous Integration and Deployment 🚀</p>
    <a href="https://www.jenkins.io/" target="_blank" class="btn">Explore Jenkins</a>
  </div>

  <footer>💻 Designed by Nagesh Achar | Powered by JSP</footer>
</body>
</html>

