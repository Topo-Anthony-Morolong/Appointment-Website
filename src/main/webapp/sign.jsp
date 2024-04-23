<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BAC CLINIC | SIGNUP</title>
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
    color: white;
    text-align: center;
    padding: 2px 5px;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 999; /* Ensure the header stays above other content */
    box-sizing: border-box;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    background-color: #fff;
    border-radius: 5px;
}

.signup-container {
    max-width: 400px;
    margin: 100px auto;
    padding: 20px;
    max-width: 400px;
    margin: 150px auto;
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
input[type="email"],
input[type="tel"],
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
     
    <div class="signup-container">
        <h2>Sign Up</h2>
        <form action="#" method="POST">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="address">Physical Address:</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="postal-address">Postal Address:</label>
                <input type="text" id="postal-address" name="postal-address" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Sign Up</button>
        </form>
        <p>Already have an account? <a href="login.html">Login</a></p>
    </div>
</body>
</html>
