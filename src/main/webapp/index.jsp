<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Kannada Film Actors Gallery</title>
    <style>
        body {
            background: linear-gradient(to right, #ffecd2, #fcb69f);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            text-align: center;
            padding: 40px;
        }

        h1 {
            color: #333;
            font-size: 40px;
            margin-bottom: 40px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
        }

        .gallery {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 30px;
        }

        .actor-card {
            background: white;
            border-radius: 15px;
            width: 200px;
            overflow: hidden;
            box-shadow: 0 6px 15px rgba(0,0,0,0.3);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .actor-card:hover {
            transform: scale(1.08);
            box-shadow: 0 10px 25px rgba(0,0,0,0.5);
        }

        .actor-card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }

        .actor-card h3 {
            margin: 10px 0;
            color: #222;
            font-size: 18px;
        }

        footer {
            margin-top: 40px;
            color: #333;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <h1>🎥 Kannada Film Actors Gallery 🎬</h1>

    <div class="gallery">
        <div class="actor-card">
            <img src="https://upload.wikimedia.org/wikipedia/commons/2/2d/Yash_at_KGF_Chapter_2_event.jpg" alt="Yash">
            <h3>Yash</h3>
        </div>

        <div class="actor-card">
            <img src="https://upload.wikimedia.org/wikipedia/commons/a/a9/Puneeth_Rajkumar_in_2011.jpg" alt="Puneeth Rajkumar">
            <h3>Puneeth Rajkumar</h3>
        </div>

        <div class="actor-card">
            <img src="https://upload.wikimedia.org/wikipedia/commons/1/1f/Sudeep_at_Manikarnika_Press_Meet.jpg" alt="Kiccha Sudeep">
            <h3>Kiccha Sudeep</h3>
        </div>

        <div class="actor-card">
            <img src="https://upload.wikimedia.org/wikipedia/commons/8/8d/Darshan_Thoogudeepa_2023.jpg" alt="Darshan Thoogudeepa">
            <h3>Darshan Thoogudeepa</h3>
        </div>

        <div class="actor-card">
            <img src="https://upload.wikimedia.org/wikipedia/commons/d/d1/Rishab_Shetty_2023.jpg" alt="Rishab Shetty">
            <h3>Rishab Shetty</h3>
        </div>

        <div class="actor-card">
            <img src="https://upload.wikimedia.org/wikipedia/commons/a/a3/Upendra_Rao_2022.jpg" alt="Upendra">
            <h3>Upendra</h3>
        </div>

        <div class="actor-card">
            <img src="https://upload.wikimedia.org/wikipedia/commons/5/57/Shivarajkumar_in_2022.jpg" alt="Shivrajkumar">
            <h3>Shivrajkumar</h3>
        </div>

        <div class="actor-card">
            <img src="https://upload.wikimedia.org/wikipedia/commons/2/2a/Rakshit_Shetty_in_2023.jpg" alt="Rakshit Shetty">
            <h3>Rakshit Shetty</h3>
        </div>

        <div class="actor-card">
            <img src="https://upload.wikimedia.org/wikipedia/commons/9/97/Ganesh_in_2023.jpg" alt="Golden Star Ganesh">
            <h3>Golden Star Ganesh</h3>
        </div>

        <div class="actor-card">
            <img src="https://upload.wikimedia.org/wikipedia/commons/f/fe/Dhananjaya_2023.jpg" alt="Dhananjaya">
            <h3>Dhananjaya</h3>
        </div>
    </div>

    <footer>
        <p>❤️ Designed by Nagesh | Powered by JSP + Tomcat + Jenkins ❤️</p>
    </footer>
</body>
</html>

