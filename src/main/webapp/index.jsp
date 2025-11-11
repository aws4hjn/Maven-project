<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <style>
        /* Ensures a widely-supported font is used for Kannada text */
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+Kannada:wght@400;700&display=swap');
        body {
            font-family: 'Noto Sans Kannada', sans-serif;
        }
    </style>
    
    <title>ನಮ್ಮ ಕನ್ನಡ ಜಾಲತಾಣ</title> 

    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <header>
        <nav>
            <ul>
                <li><a href="index.jsp">ಮುಖಪುಟ (Home)</a></li>
                <li><a href="about.jsp">ನಮ್ಮ ಬಗ್ಗೆ (About Us)</a></li>
                <li><a href="contact.jsp">ಸಂಪರ್ಕಿಸಿ (Contact)</a></li>
            </ul>
        </nav>
        <h1>ಸಮೃದ್ಧ ಕನ್ನಡಕ್ಕೆ ಸುಸ್ವಾಗತ</h1>
        <p>ಜಾವಾ ಸರ್ವರ್ ಪುಟಗಳನ್ನು (JSP) ಬಳಸಿಕೊಂಡು ರಚಿಸಲಾಗಿದೆ.</p>
    </header>

    <main>
        <section>
            <h2>ಮಹತ್ವದ ಮಾಹಿತಿ</h2>
            <p>
                ಕನ್ನಡ ಭಾಷೆಯಲ್ಲಿನ ಈ ವಿಷಯವು ಯೂನಿಕೋಡ್ (UTF-8) ಎನ್‌ಕೋಡಿಂಗ್ ಅನ್ನು ಬಳಸಿಕೊಂಡು ಸರಿಯಾಗಿ ಪ್ರದರ್ಶಿಸಲಾಗುತ್ತಿದೆ.
                ಯೂನಿಕೋಡ್ ಅನ್ನು ಹೊಂದಿಸುವುದು ಯಾವುದೇ ಭಾರತೀಯ ಭಾಷೆಯ ವೆಬ್‌ಸೈಟ್‌ಗೆ ಅತ್ಯಂತ ಮುಖ್ಯವಾಗಿದೆ.
            </p>
        </section>

        <section>
            <h2>ಇಂದಿನ ದಿನಾಂಕ</h2>
            <% 
                java.util.Date now = new java.util.Date();
                // You would typically use JSTL/Format tags or a custom utility 
                // for proper Kannada date formatting in a real application.
            %>
            <p>
                ಇಂದಿನ ದಿನಾಂಕ: <%= now.toString() %>
            </p>
        </section>
    </main>

    <footer>
        <p>&copy; 2025 ನಮ್ಮ ಕನ್ನಡ ವೆಬ್‌ಸೈಟ್. ಎಲ್ಲ ಹಕ್ಕುಗಳನ್ನು ಕಾಯ್ದಿರಿಸಲಾಗಿದೆ.</p>
    </footer>

</body>
</html>
