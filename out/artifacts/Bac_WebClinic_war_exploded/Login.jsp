<%--
  Created by IntelliJ IDEA.
  User: TOPO ANTHONY
  Date: 10/05/2024
  Time: 00:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BAC CLINIC | LOGIN</title>
    <link rel="stylesheet" type="text/css" href="CSS/loginStyle.css">
</head>
<body>

    <header class="header">
        <img src="images/bac-clinic-high-resolution-logo-black-transparent.png" alt="logo" width="100" height="100">
    </header>

    <div class="login-container">
        <h2> Login </h2>

        <form method="post" action="${pageContext.request.contextPath}/Login">

            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" id="email" name="email">
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password">
            </div>
        <button type="submit">Login</button>
        </form>
        <p>Don't have an account? <a href="Signup.jsp">Sign Up</a></p>
        <p>Forgot password?<a href="">Change password</a></p>

    </div>

</body>
</html>
