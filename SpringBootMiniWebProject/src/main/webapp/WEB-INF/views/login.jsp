<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        
        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background: rgba(0, 0, 0, 0.9);
            padding: 15px 0;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 40px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.5);
            z-index: 1000;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 15px;
            font-weight: bold;
            padding: 8px 18px;
            border-radius: 20px;
            transition: 0.3s;
        }
        .navbar a:hover {
            background: #f39c12;
            color: black;
        }
        .navbar .btn {
            background: #f1c40f;
            color: black;
            padding: 8px 18px;
            border-radius: 20px;
            font-weight: bold;
            transition: 0.3s;
        }
        .navbar .btn:hover {
            background: #d68910;
            color: white;
        }

        /* Login Card */
        .login-container {
            background: rgba(255, 255, 255, 0.95);
            padding: 35px 40px;
            border-radius: 15px;
            box-shadow: 0 0 25px rgba(0,0,0,0.4);
            width: 350px;
            margin-top: 90px; /* Adjust for navbar */
            text-align: center;
        }
        .login-container h2 {
            color: #2c3e50;
            margin-bottom: 25px;
        }
        .form-group {
            margin: 15px 0;
            text-align: left;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 6px;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #ccc;
            outline: none;
            transition: 0.3s;
        }
        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #f39c12;
            box-shadow: 0 0 6px rgba(243,156,18,0.6);
        }
        .submit-btn {
            width: 100%;
            padding: 14px;
            background: #f39c12;
            border: none;
            color: black;
            font-weight: bold;
            border-radius: 8px;
            margin-top: 15px;
            cursor: pointer;
            transition: 0.3s;
        }
        .submit-btn:hover {
            background: #d68910;
            color: white;
        }
        .error-msg {
            color: red;
            margin-top: 10px;
        }
        .login-container a {
            color: #2980b9;
            font-weight: bold;
            text-decoration: none;
        }
        .login-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a href="loginpage" class="btn"><i class="fas fa-sign-in-alt"></i> Login</a>
        <a href="regPage" class="btn"><i class="fas fa-user-plus"></i> Register</a>
        <a href="logout" class="btn"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>

    <!-- Login Box -->
    <div class="login-container">
        <h2><i class="fas fa-lock"></i> User Login</h2>

        <form action="loginForm" method="post">
            <div class="form-group">
                <label>Email</label>
                <input type="text" name="email" required />
            </div>

            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" required />
            </div>

            <button type="submit" class="submit-btn">Login</button>
        </form>
        
        <p>Not registered? <a href="regPage">Click Here</a></p>

        <c:if test="${not empty errorMsg}">
            <p class="error-msg">${errorMsg}</p>
        </c:if>
    </div>

</body>
</html>
