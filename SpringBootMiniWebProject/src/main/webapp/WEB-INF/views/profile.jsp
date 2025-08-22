<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<style>
   
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #ffecd2, #fcb69f);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .welcome-container {
        background: white;
        padding: 40px 50px;
        border-radius: 12px;
        box-shadow: 0 0 18px rgba(0,0,0,0.25);
        text-align: center;
        max-width: 400px;
    }

    .welcome-container h2 {
        color: #333;
        margin-bottom: 25px;
        font-size: 28px;
        text-shadow: 1px 1px 4px rgba(0,0,0,0.1);
    }

    .logout-btn {
        display: inline-block;
        padding: 12px 25px;
        background: linear-gradient(135deg, #ff416c, #ff4b2b);
        color: white;
        font-weight: bold;
        font-size: 16px;
        text-decoration: none;
        border-radius: 8px;
        transition: 0.3s;
        box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    }

    .logout-btn:hover {
        opacity: 0.9;
        transform: scale(1.05);
    }
</style>
</head>
<body>

    <div class="welcome-container">
        <h2>Welcome ${modelName}</h2>
        <a href="logout" class="logout-btn">Logout</a>
    </div>

</body>
</html>
