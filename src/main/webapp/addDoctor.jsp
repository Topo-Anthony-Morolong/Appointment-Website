<%--
  Created by IntelliJ IDEA.
  User: TOPO ANTHONY
  Date: 19/05/2024
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Doctor Registration Form </title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!----======== CSS ======== -->


    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="stylesheet" href="CSS/AddDoc_Style.css">
</head>
<body>

<div class="container">
    <header>Doctor Registration</header>

    <form action="adminDashboard" method="post">
        <div class="form first">
            <div class="details personal">
                <span class="title">Personal Details</span>
                <div class="fields">
                    <div class="input-field">

                       <%-- <label>DoctorID

                        <input type="text" placeholder="Enter ID" required>
                        </label> --%>

                        <label for="firstname">Full Name
                        <input type="text" placeholder="Enter name" id="firstname" name="firstname" required>
                        </label>

                        <label for="email">Email
                        <input type="text" placeholder="Enter your email" id="email"  name="email" required>
                        </label>

                        <label for="specialization">Specialization
                        <input type="text" placeholder="Enter field" id="specialization" name="specialization" required>
                        </label>
                        <input type="hidden" name="action" value="AddDoctor">
                    </div>

                </div>
            </div>
            <button type="submit" id="saveButton">
                SAVE
            </button>
        </div>
    </form>
</div>

</body>
</html>
