<%--
  Created by IntelliJ IDEA.
  User: ri2kumar
  Date: 4/19/2023
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
</head>
<body>

<form class="login-form" action="handlesignin" method="post">
    <h1>Login</h1>
    <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
    </div>
    <button type="submit">Login</button>
</form>
<div class="failsignin">
    <p>Don,t have an account!</p>
    <form action="signup" method="post">
        <button type="submit">Sign Up</button>
    </form>
</div>
<style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
}
.login-form {
    background-color: #fff;
    padding: 20px;
    margin: 50px auto;
    max-width: 400px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
}

.login-form h1 {
    text-align: center;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
}

.form-group input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

button[type="submit"] {
    display: block;
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 5px;
    background-color: #4CAF50;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
}

button[type="submit"]:hover {
    background-color: #3e8e41;
}
.failsignin{
    display: flex;
    justify-content: center;
    align-items: center;
}
.failsignin p{
    margin-right: 1rem;
}
</style>
</body>
</html>
