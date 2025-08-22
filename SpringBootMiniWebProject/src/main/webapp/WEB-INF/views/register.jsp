<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

<!-- FontAwesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
    body {
        margin: 0;
        font-family: 'Poppins', sans-serif;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: linear-gradient(135deg, #6a11cb, #2575fc, #ff4da6, #ff9966);
        background-size: 400% 400%;
        animation: gradientBG 12s ease infinite;
    }

    @keyframes gradientBG {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

   
    .navbar {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        background: rgba(0, 0, 0, 0.6);
        backdrop-filter: blur(12px);
        display: flex;
         justify-content: center;
        align-items: center;
        padding: 12px 40px;
        z-index: 1000;
        color: #fff;
    }

    .navbar .logo {
        font-size: 20px;
        font-weight: 600;
        display: flex;
        align-items: center;
        gap: 8px;
    }

    .navbar .nav-links {
        display: flex;
        gap: 25px;
    }

    .navbar .nav-links a {
        color: #fff;
        text-decoration: none;
        font-weight: 500;
        transition: 0.3s;
    }

    .navbar .nav-links a:hover {
        color: #ff66cc;
    }

   
    .register-container {
        background: rgba(255, 255, 255, 0.08);
        backdrop-filter: blur(12px);
        border-radius: 15px;
        padding: 40px;
        width: 350px;
        box-shadow: 0 8px 32px rgba(0,0,0,0.4);
        color: #fff;
        text-align: center;
        margin-top: 80px; /* space for fixed navbar */
    }

    .register-container h2 {
        margin-bottom: 25px;
        font-weight: 600;
        font-size: 24px;
        color: #fff;
    }

    .register-container label {
        display: block;
        text-align: left;
        margin: 10px 0 5px;
        font-size: 14px;
    }

    .register-container input[type="text"],
    .register-container input[type="email"],
    .register-container input[type="password"] {
        width: 100%;
        padding: 12px;
        margin-bottom: 18px;
        border: none;
        border-radius: 8px;
        font-size: 14px;
        outline: none;
    }

    .register-container input[type="submit"] {
        width: 100%;
        padding: 12px;
        background: linear-gradient(135deg, #ff4da6, #ff66cc);
        border: none;
        border-radius: 25px;
        color: #fff;
        font-weight: 600;
        cursor: pointer;
        font-size: 15px;
        transition: 0.3s;
    }

    .register-container input[type="submit"]:hover {
        opacity: 0.9;
        transform: translateY(-2px);
    }

    .bottom-link {
        margin-top: 15px;
        font-size: 14px;
    }

    .bottom-link a {
        color: #ffd6ff;
        text-decoration: none;
        font-weight: 500;
    }

    .bottom-link a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

    <div class="navbar">
        <div class="nav-links">
            
            <a href="loginpage"><i class="fas fa-sign-in-alt"></i> Login</a>
            <a href="regPage"><i class="fas fa-user-plus"></i> Register</a>
            <a href="logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </div>
    </div>

   
    <form class="register-container" action="regForm" method="post">
        <h2><i class="fas fa-user-plus"></i> Register</h2>

        <label for="id">User ID</label>
        <input type="text" name="id" placeholder="Enter ID" required>

        <label for="name">Full Name</label>
        <input type="text" name="name" placeholder="Enter your name" required>

        <label for="email">Email</label>
        <input type="email" name="email" placeholder="Enter email" required>

        <label for="password">Password</label>
        <input type="password" name="password" placeholder="Enter password" required>

        <input type="submit" value="Register">

        <div class="bottom-link">
            Already registered? <a href="loginpage">Sign In</a>
        </div>
    </form>

</body>
</html>
