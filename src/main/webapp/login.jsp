<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BAC CLINIC | LOGIN</title>
    <link rel="shortcut icon" href="favicon (2).png" type="image/x-icon">
    
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

.header {
    display: block;
    background-color: #fff;
    text-align: center;
    padding: 2px 5px;
    box-sizing: border-box;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    max-width: 100%;
    border-radius: 5px;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 999; /* Ensure the header stays above other content */
  }

.login-container {
    max-width: 400px;
    margin: 190px auto;
    padding: 20px 35px 20px 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 5px;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #3EA8E8;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #007bff;
}

p {
    text-align: center;
}

a {
    color: #3EA8E8;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

   </style>
</head>
<body>
    <header class="header">
     <img src="logo.png" alt="logo" width="100" height="100">
    </header>

    <div class="login-container">
        <h2>Login</h2>
        <form action="Login" method="POST">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Login</button>
        </form>
        <p>Don't have an account? <a href="sign.jsp">Sign Up</a></p>
    </div>
</body>
</html>
