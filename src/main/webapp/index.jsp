<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="kn">
<head>
<meta charset="UTF-8">
<title>ಕರ್ನಾಟಕ ಪುಟ</title>
<style>
/* Animated gradient background */
@keyframes gradientMove {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}
body {
    margin:0;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    font-family: 'Noto Sans Kannada', sans-serif;
    background: linear-gradient(-45deg,#ffcc00,#ff0000,#008000,#0000ff);
    background-size:400% 400%;
    animation: gradientMove 12s ease infinite;
    color:#fff;
}
.glass-card {
    background: rgba(255,255,255,0.15);
    border-radius:20px;
    padding:50px 40px;
    text-align:center;
    box-shadow:0 8px 40px rgba(0,0,0,0.4);
    backdrop-filter: blur(10px);
    transition: transform 0.5s ease, box-shadow 0.5s ease;
}
.glass-card:hover {
    transform: scale(1.05);
    box-shadow: 0 12px 45px rgba(0,0,0,0.6);
}
.glass-card img {
    width:250px;
    height:auto;
    margin-bottom:25px;
    border-radius:10px;
    box-shadow:0 4px 20px rgba(0,0,0,0.3);
}
h1 {
    font-size:2rem;
    margin-bottom:10px;
    color:#ffeb3b;
    text-shadow: 2px 2px 6px rgba(0,0,0,0.4);
}
p {
    font-size:1.1rem;
    color:#e0e0e0;
}
.btn {
    margin-top:25px;
    background:linear-gradient(90deg,#ff9800,#ffc107);
    border:none; color:#000; padding:12px 30px;
    font-size:1rem; font-weight:bold; border-radius:30px;
    text-decoration:none; cursor:pointer; display:inline-block;
    box-shadow:0 4px 15px rgba(255,193,7,0.4);
    transition: all 0.3s ease;
}
.btn:hover {
    background: linear-gradient(90deg,#ffc107,#ff9800);
    transform: scale(1.1);
    box-shadow:0 6px 25px rgba(255,193,7,0.7);
}
footer {
    position: absolute;
    bottom: 10px;
    font-size:0.9rem;
    color: rgba(255,255,255,0.8);
}
</style>
</head>
<body>
<div class="glass-card">
    <!-- Karnataka Flag -->
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_Karnataka.png/320px-Flag_of_Karnataka.png" 
         alt="Karnataka Flag">
    
    <!-- Kannada Text -->
    <h1>ಕರ್ನಾಟಕ ರಾಜ್ಯಕ್ಕೆ ಸ್ವಾಗತ</h1>
    <p>ನಿಮ್ಮು ಸ್ವಾಗತ ನಮ್ಮ ವೆಬ್ ಪುಟಕ್ಕೆ 🚀</p>
    <a href="#" class="btn">ಹೆಲೋ ಹೇಳಿ!</a>
</div>

<footer>💻 ವಿನ್ಯಾಸ: H J Nagesh | JSP ನಲ್ಲಿ ಶಕ್ತಿ</footer>
</body>
</html>





