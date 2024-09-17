<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="CSS/doctorDash.css">
    <title>Document</title>

</head>


<header class="header">
    <img src="images/bac-clinic-favicon-black.png" alt="logo" width="100" height="100">
</header>

<body>

<aside>
    <!--<div class="close" id="close-btn">
        <span class="material-symbols-sharp">close</span>
    </div>-->

    <div class="sidebar">
        <a href="newDoc.jsp">
            <span class="material-symbols-sharp">dashboard</span>
            <h3>Home</h3>
        </a>

      <!--  <a href="apps.html" class="active">
            <span class="material-symbols-sharp">calendar_today</span>
            <h3>Appointments</h3>
        </a>-->

        <a href="#">
            <span class="material-symbols-sharp">message</span>
            <h3>Messages</h3>
            <span class="message-count"></span><!--holds notification count-->
        </a>

        <a href="Appointment.jsp">
            <span class="material-symbols-sharp">message</span>
            <h3>Appointments</h3>
            <span class="message-count"></span><!--holds notification count-->
        </a>

       <!-- <a href="settings.html">
            <span class="material-symbols-sharp">person</span>
            <h3>Settings</h3>
        </a>-->

        <a href="doctorFeedback.jsp">
            <span class="material-symbols-sharp">feedback</span>
            <h3>Feedback</h3>
        </a>

        <a href="#">
            <span class="material-symbols-sharp">logout</span>
            <h3>LogOut</h3>
        </a>
    </div>
</aside>

<main class="main-content">
    <div class="left-section">
        <div class="doctorcard">
            <div class="text-section">
                <h1>WELCOME BACK DOCTOR</h1>
                <p>Let's see how many patients you have booked today.</p>
            </div>
            <div class="icon-section">
                <img src="images/doctor.png" alt="logo" width="100" height="100">
            </div>
        </div>

        <div class="accepted-appointments-container">
            <h2>Today's Accepted Appointments</h2>
            <!-- Accepted appointments will be dynamically added here -->
        </div>

        <div class="statistics-container">
            <h2>Appointment Statistics</h2>
            <div>Total Appointments Today: <span id="total-today">0</span></div>
            <div>Total Appointments This Month: <span id="total-month">0</span></div>
        </div>
    </div>

    <div class="right-section">
        <div class="calendar-container">
            <h2>Calendar</h2>
            <!-- Embed your calendar here -->
            <iframe src="https://calendar.google.com/calendar/embed?src=your_calendar_id&ctz=your_time_zone" style="border: 0" width="100%" height="400" frameborder="0" scrolling="no"></iframe>
        </div>

        <div class="appointments-container">
            <h2>Booked Appointments</h2>
            <div class="appointment">
                <span>John Doe</span>
                <span>10:00 AM</span>
                <div class="appointment-actions">
                    <button class="accept-btn">Accept</button>
                    <button class="decline-btn">Decline</button>
                </div>
            </div>
            <div class="appointment">
                <span>Jane Smith</span>
                <span>11:00 AM</span>
                <div class="appointment-actions">
                    <button class="accept-btn">Accept</button>
                    <button class="decline-btn">Decline</button>
                </div>
            </div>
            <div class="appointment">
                <span>Michael Johnson</span>
                <span>01:00 PM</span>
                <div class="appointment-actions">
                    <button class="accept-btn">Accept</button>
                    <button class="decline-btn">Decline</button>
                </div>
            </div>
        </div>
    </div>
</main>

<script>
    document.addEventListener('DOMContentLoaded', () => {
        const acceptButtons = document.querySelectorAll('.accept-btn');
        const declineButtons = document.querySelectorAll('.decline-btn');
        const acceptedContainer = document.querySelector('.accepted-appointments-container');
        const totalTodaySpan = document.getElementById('total-today');
        const totalMonthSpan = document.getElementById('total-month');

        let totalToday = 0;
        let totalMonth = 0; // Assuming this would be fetched from the database

        const acceptAppointment = (appointmentElement) => {
            const clone = appointmentElement.cloneNode(true);
            clone.querySelector('.appointment-actions').remove();
            acceptedContainer.appendChild(clone);
            appointmentElement.remove();
            totalToday++;
            totalTodaySpan.innerText = totalToday;
        };

        const declineAppointment = (appointmentElement) => {
            appointmentElement.remove();
        };

        acceptButtons.forEach(button => {
            button.addEventListener('click', (e) => {
                const appointmentElement = e.target.closest('.appointment');
                acceptAppointment(appointmentElement);
            });
        });

        declineButtons.forEach(button => {
            button.addEventListener('click', (e) => {
                const appointmentElement = e.target.closest('.appointment');
                declineAppointment(appointmentElement);
            });
        });

        // Simulate fetching total appointments for the month from the database
        totalMonth = 30; // This should be fetched dynamically
        totalMonthSpan.innerText = totalMonth;
    });
</script>

</body>
</html>
