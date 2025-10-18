<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to Jenkins</title>
    <style>
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #2d2d2d, #3b3b3b);
            color: #fff;
        }

        .card {
            background: #ffffff10;
            backdrop-filter: blur(8px);
            border-radius: 20px;
            padding: 40px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.4);
            width: 400px;
            animation: fadeIn 1.2s ease;
        }

        .card img {
            width: 160px;
            height: auto;
            margin-bottom: 20px;
            transition: transform 0.4s ease;
        }

        .card img:hover {
            transform: scale(1.1) rotate(2deg);
        }

        h1 {
            margin: 0;
            font-size: 1.8rem;
            color: #ffcc00;
        }

        p {
            color: #ddd;
            font-size: 1rem;
            margin-top: 10px;
        }

        .btn {
            display: inline-block;
            margin-top: 25px;
            background: #ffcc00;
            color: #333;
            padding: 12px 24px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: bold;
            transition: background 0.3s ease;
        }

        .btn:hover {
            background: #ffdb4d;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="card">
        <!-- Jenkins official logo from Wikimedia -->
        <img src="https://upload.wikimedia.org/wikipedia/commons/6/69/Jenkins_logo.svg" alt="Jenkins Logo">
        <h1>Welcome to Jenkins</h1>
        <p>Your Continuous Integration and Deployment Companion 🚀</p>
        <a class="btn" href="https://www.jenkins.io/" target="_blank">Visit Jenkins.io</a>
    </div>
</body>
</html>
