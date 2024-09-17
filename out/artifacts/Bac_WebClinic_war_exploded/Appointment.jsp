<%--
  Created by IntelliJ IDEA.
  User: TOPO ANTHONY
  Date: 19/05/2024
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
    <link rel="stylesheet" href="CSS/Appointment.css">
    <title>Appointment Dashboard</title>

</head>
<body>


<header class="header">
    <img src="images/bac-clinic-high-resolution-logo-black-transparent.png" alt="logo" width="100" height="100">
</header>

<aside>
    <div class="sidebar">
        <a href="home.html">
            <span class="material-symbols-sharp">dashboard</span>
            <h3>Home</h3>
        </a>
        <a href="appointments.html">
            <span class="material-symbols-sharp">date_range</span>
            <h3>Appointments</h3>
        </a>
        <a href="messages.html">
            <span class="material-symbols-sharp">message</span>
            <h3>Messages</h3>
        </a>
        <a href="patients.html">
            <span class="material-symbols-sharp">person</span>
            <h3>Patients</h3>
        </a>
        <a href="calendar.html">
            <span class="material-symbols-sharp">calendar_today</span>
            <h3>Calendar</h3>
        </a>
        <a href="feedback.html">
            <span class="material-symbols-sharp">feedback</span>
            <h3>Feedback</h3>
        </a>
        <a href="#">
            <span class="material-symbols-sharp">logout</span>
            <h3>LogOut</h3>
        </a>
    </div>
</aside>

<main>


    <div class="row">
        <div class="column1">
            <div class="card">
                <div id="chart-container">
                    <canvas id="chart"></canvas>
                </div>
            </div>

        </div>


        <div class="column2">
            <div class="card">
                <h3>Cancellations</h3>
                <p class="danger">50</p>

            </div>
        </div>

        <div class="column3">
            <div class="card">
                <h3>Total Appointment</h3>
                <p class="danger">180</p>
                <p></p>
            </div>
        </div>
    </div>


    <div class="activity">
        <h1>Appointment Dashboard</h1>
        <table>
            <thead>
            <tr>
                <th>Patient Name</th>
                <th>Appointment Date</th>
                <th>Status</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>John Doe</td>
                <td>2024-06-01</td>
                <td class="primary">Confirmed</td>
            </tr>
            <tr>
                <td>Jane Smith</td>
                <td>2024-06-03</td>
                <td class="warning">Pending</td>
            </tr>
            <tr>
                <td>Emily Johnson</td>
                <td>2024-06-05</td>
                <td class="danger">Cancelled</td>
            </tr>
            <tr>
                <td>Michael Brown</td>
                <td>2024-06-07</td>
                <td class="primary">Confirmed</td>
            </tr>
            </tbody>
        </table>
        <a href="#">Show All</a>
    </div>

</main>





<script>
    document.addEventListener('DOMContentLoaded', function () {
        const currentLocation = location.href;
        const menuItem = document.querySelectorAll('aside .sidebar a');
        const menuLength = menuItem.length;
        for (let i = 0; i < menuLength; i++) {
            if (menuItem[i].href === currentLocation) {
                menuItem[i].className = "active";
            }
        }
    });
</script>

<script src="javaScript/ap.js"></script>




</body>
</html>
