<%--
  Created by IntelliJ IDEA.
  User: TOPO ANTHONY
  Date: 20/05/2024
  Time: 08:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="CSS/newDoc.css" />
    <title>Title</title>
</head>

<body>
<header class="header">
    <img src="images/bac-clinic-high-resolution-logo-black-transparent.png" alt="logo" width="100" height="100">
</header>

<aside>
    <div class="close" id="close-btn">
        <span class="material-symbols-sharp">close</span><!-- close icon-->
    </div>

    <div class="sidebar">
        <a href="newDoc.jsp">
            <span class="material-symbols-sharp">dashboard</span>
            <h3>Home</h3>
        </a>

        <a href="#" class="active">
            <span class="material-symbols-sharp">calendar_today</span>
            <h3>Appointments</h3>
        </a>

        <a href="#">
            <span class="material-symbols-sharp">message</span>
            <h3>Messages</h3>
            <span class="message-count"></span><!--holds notification count-->
        </a>

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
        <!--<div class="calendar-container">-->
        <h1>Calendar</h1>
        <div class="calendar">
            <header>
                <h3></h3>
                <nav>
                    <button id="prev"></button>
                    <button id="next"></button>
                </nav>
            </header>
            <section>
                <ul class="days">
                    <li>Sun</li>
                    <li>Mon</li>
                    <li>Tue</li>
                    <li>Wed</li>
                    <li>Thu</li>
                    <li>Fri</li>
                    <li>Sat</li>
                </ul>
                <ul class="dates"></ul>
            </section>
        </div>
        <!--</div>-->


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
    const header = document.querySelector(".calendar h3");
    const dates = document.querySelector(".dates");
    const navs = document.querySelectorAll("#prev, #next");

    const months = [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December",
    ];

    let date = new Date();
    let month = date.getMonth();
    let year = date.getFullYear();

    function renderCalendar() {
        const start = new Date(year, month, 1).getDay();
        const endDate = new Date(year, month + 1, 0).getDate();
        const end = new Date(year, month, endDate).getDay();
        const endDatePrev = new Date(year, month, 0).getDate();

        let datesHtml = "";

        for (let i = start; i > 0; i--) {
            datesHtml += `<li class="inactive">${endDatePrev - i + 1}</li>`;
        }

        for (let i = 1; i <= endDate; i++) {
            let className =
                i === date.getDate() &&
                month === new Date().getMonth() &&
                year === new Date().getFullYear()
                    ? ' class="today"'
                    : "";
            datesHtml += `<li${className}>${i}</li>`;
        }

        for (let i = end; i < 6; i++) {
            datesHtml += `<li class="inactive">${i - end + 1}</li>`;
        }

        dates.innerHTML = datesHtml;
        header.textContent = `${months[month]} ${year}`;
    }

    navs.forEach((nav) => {
        nav.addEventListener("click", (e) => {
            const btnId = e.target.id;

            if (btnId === "prev" && month === 0) {
                year--;
                month = 11;
            } else if (btnId === "next" && month === 11) {
                year++;
                month = 0;
            } else {
                month = btnId === "next" ? month + 1 : month - 1;
            }

            date = new Date(year, month, new Date().getDate());
            year = date.getFullYear();
            month = date.getMonth();

            renderCalendar();
        });
    });

    renderCalendar();
</script>


<!--
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      renderCalendar('doctorCalendar', true);
    });
  </script>
-->

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
