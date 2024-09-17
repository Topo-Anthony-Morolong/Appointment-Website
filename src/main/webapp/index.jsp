<%--
  Created by IntelliJ IDEA.
  User: TOPO ANTHONY
  Date: 18/05/2024
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bac Clinic</title>
    <link rel="stylesheet" href="CSS/indexStyle.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
</head>
<body>
 <div class="container">
     <nav>
         <div class="logo">
             <h2><span class="/logo"> BAC-clinic</span> </h2>

         </div>
         <button class="btn" onclick="redirectToLogin()" >Login</button>

     </nav>
     <script>
         //js to redirect to signup
         function redirectToSignup(){
             window.location.href ="Signup.jsp";
         }
         //js redirect to Login page
         function  redirectToLogin(){
             window.location.href = "Login.jsp";
         }
     </script>
     <header class="header">
         <div class="content">
             <h1><span>Get Quick</span> <br>Medical Services</h1>
             <p>
                 Welcome to BAC Clinic, where your health is our top priority!
                 Our dedicated team of medical professionals is committed to providing you
                 with personalized care in a warm and welcoming environment. Whether
                 you're visiting us for a routine check-up or seeking specialized treatment,
                 we're here to support you every step of the way.
                 Feel confident in entrusting us with your health needs.

                 <b><br>Our primary mission: putting the patients needs first.</b>
             </p>
             <button class="btn" onclick="redirectToSignup()">New here? Sign Up</button>
         </div>
         <div class="image">
             <span class="image__bg"></span>
             <img src="images/Amin%20doc1.jpg" alt="header image"/>
             <div class="image__content image__content__1">
                 <span> <i class="ri-user-3-line"></i></span>
                 <div class="details">
                     <h4>50+</h4>
                     <p>Active Patients</p>
                 </div>
             </div>
             <div class="image__content image__content__2">
                 <ul>
                     <li>
                         <span> <i class="ri-check-line"></i></span>
                         Fast medical attention
                     </li>
                     <li>
                         <span> <i class="ri-check-line"></i></span>
                         Expert Doctors
                     </li>
                 </ul>
             </div>
         </div>
     </header>

<section class="how-it-works">
    <h2> How It Works</h2>
    <div class="how-it-works-items">
        <div class="how-it-works-item">
            <span class="material-icons-outlined">how_to_reg</span>
<h3>Sign UP</h3>
            <p> Create an account with us and get the <br> best healthcare services online.</p>
        </div>
        <div class="how-it-works-item">
            <span class="material-icons-outlined">flag</span>
            <h3>Set Up an Appointment</h3>
            <p>Get medical assistance on your<br> preferred date and time.Reschedule <br>your appointment in case of an unforeseen event.</p>
        </div>
        <div class="how-it-works-item">
            <span class="material-icons-outlined">star</span>
            <h3>Enjoy</h3>
            <p>Enjoy various features in the website.Access <br> video consultation,text based prescriptions,<br> messaging capabilities and much more<br>more after you sign up.</p>
        </div>
    </div>


</section>

 </div>

</body>
</html>
