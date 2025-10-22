<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Animal Gallery</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #a8edea, #fed6e3);
            text-align: center;
            padding: 50px;
        }

        h1 {
            color: #333;
            margin-bottom: 40px;
        }

        .gallery {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 30px;
        }

        .animal-card {
            width: 200px;
            height: 250px;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 8px 20px rgba(0,0,0,0.3);
            transition: transform 0.3s, box-shadow 0.3s;
            background: white;
        }

        .animal-card:hover {
            transform: scale(1.1) rotate(5deg);
            box-shadow: 0 12px 25px rgba(0,0,0,0.5);
        }

        .animal-card img {
            width: 100%;
            height: 70%;
            object-fit: cover;
        }

        .animal-card h3 {
            margin: 10px 0;
            font-size: 18px;
            color: #444;
        }
    </style>
</head>
<body>
    <h1>🌿 Animal Gallery 🌿</h1>
    <div class="gallery">
        <div class="animal-card">
            <img src="https://images.unsplash.com/photo-1552410260-3f0f02c6b1f1?auto=format&fit=crop&w=400&q=60" alt="Lion">
            <h3>Lion 🦁</h3>
        </div>
        <div class="animal-card">
            <img src="https://images.unsplash.com/photo-1601758123927-75d5f4ec1547?auto=format&fit=crop&w=400&q=60" alt="Elephant">
            <h3>Elephant 🐘</h3>
        </div>
        <div class="animal-card">
            <img src="https://images.unsplash.com/photo-1595433562696-6f8f3f857f01?auto=format&fit=crop&w=400&q=60" alt="Tiger">
            <h3>Tiger 🐅</h3>
        </div>
        <div class="animal-card">
            <img src="https://images.unsplash.com/photo-1617602328926-bd3b4b6cf126?auto=format&fit=crop&w=400&q=60" alt="Parrot">
            <h3>Parrot 🦜</h3>
        </div>
    </div>
</body>
</html>
