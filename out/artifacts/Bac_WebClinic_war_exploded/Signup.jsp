<%--
  Created by IntelliJ IDEA.
  User: TOPO ANTHONY
  Date: 04/05/2024
  Time: 00:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BAC CLINIC | SIGNUP</title>
    <link rel="stylesheet" type="text/css" href="CSS/signupStyle.css">

</head>

<body>

<header class="header">
    <img src="images/bac-clinic-favicon-black.png" alt="logo" width="100" height="100">
</header>

<div class="signup-container">
    <h2>Sign up</h2>

    <form method="post" action="${pageContext.request.contextPath}/Signup">

        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name">
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
                <input type="email" id="email" name="email">
        </div>

            <div class="form-group">
                <label for="dateOfBirth">Date of Birth</label>
                <input type="date" id="dateOfBirth" name="dateOfBirth">
            </div>

        <div class="form-group">
            <label for="physicalAddress">Physical Address</label>
            <input type="text" id="physicalAddress" name="physicalAddress">
        </div>

        <div class="form-group">
            <label for="postalAddress">Postal Address</label>
            <input type="text" id="postalAddress" name="postalAddress">
        </div>

            <div class="form-group">
                <label for="phoneNumber">Phone Number</label>
                <input type="text" id="phoneNumber" name="phoneNumber">
            </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password">
        </div>

        <button type="submit">Sign up</button>
    </form>


</div>


</body>
</html>
