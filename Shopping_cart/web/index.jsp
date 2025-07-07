<!DOCTYPE html>
<html>
<head>
    <title>Login - Shopping Cart</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-box {
            background: white;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            width: 350px;
        }
        .login-box h2 {
            text-align: center;
            margin-bottom: 1.5rem;
        }
        .login-box input {
            width: 100%;
            padding: 10px;
            margin: 0.5rem 0;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        .login-box button {
            width: 100%;
            padding: 10px;
            background: #6c5ce7;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }
        .login-box a {
            display: block;
            text-align: center;
            margin-top: 1rem;
            text-decoration: none;
            color: #6c5ce7;
        }
    </style>
</head>
<body>
    <form class="login-box" action="LoginServlet" method="post">
        <h2>Login</h2>
        <input type="text" name="username" placeholder="Username" required/>
        <input type="password" name="password" placeholder="Password" required/>
        <button type="submit">Login</button>
        <a href="signup.jsp">Don't have an account? Sign up</a>
    </form>
</body>
</html>
