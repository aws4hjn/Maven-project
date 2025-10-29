<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Daily Motivation</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>🌅 Daily Motivation</h1>
        <%
            String[] quotes = {
            "This is nagesh Jenkins test jobs"    
	    "Believe you can and you're halfway there.",
                "The best way to get started is to quit talking and begin doing.",
                "Don’t let yesterday take up too much of today.",
                "It always seems impossible until it’s done.",
                "Push yourself, because no one else is going to do it for you."
            };
            int randomIndex = (int)(Math.random() * quotes.length);
            String randomQuote = quotes[randomIndex];
        %>
        <div class="quote-box">
            <p class="quote">"<%= randomQuote %>"</p>
        </div>
        <form>
            <button type="submit">✨ New Quote</button>
        </form>
    </div>

    <footer>
        <p>Created with ❤️ using JSP</p>
    </footer>
</body>
</html>



