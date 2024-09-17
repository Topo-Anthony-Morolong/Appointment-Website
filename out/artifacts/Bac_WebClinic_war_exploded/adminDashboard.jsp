<%--
  Created by IntelliJ IDEA.
  User: TOPO ANTHONY
  Date: 18/05/2024
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- JSTL import-->

<html>
<head>
    <title>Admin-Dashboard</title>
    <!--material cdn icon-->

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="CSS/adminStyle.css">

</head>
<body>
<div class="container">
    <aside>
        <div class="top">
            <div class="logo">
                <img src="images/bac-clinic-high-resolution-logo-black-transparent.png" alt="" >
                <h2>BAC <span class="danger">clinic</span> </h2>
            </div>
            <div class="close" id="close-btn">
                <span class="material-symbols-sharp">close</span><!-- close icon-->
            </div>
        </div>

        <div class="sidebar">

            <a href="#" class="active" >
                <span class="material-symbols-sharp">grid_view</span>
                <h3>Dashboard</h3>
            </a>


            <a href="Reports.jsp">
                <span class="material-symbols-sharp">
                    monitoring
                    </span>
                <h3>Reports</h3>
            </a>



            <a href="#">
                <span class="material-symbols-sharp">manage_accounts</span>
                <h3>Settings</h3>
            </a>

            <a href="TechnicalSupport.jsp">
                <span class="material-symbols-sharp">manage_accounts</span>
                <h3>Technical Support</h3>
            </a>



            <a href="#">
                <span class="material-symbols-sharp">
                    logout
                    </span>
                <h3>LogOut</h3>
            </a>
        </div>
    </aside>


    <!----END  OF ASIDE SECTION-->
    <main>
        <h1>DASHBOARD</h1>


        <div id="currentDate" class="date"></div>
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                const currentDateElement = document.getElementById('currentDate');

                function updateCurrentDate() {
                    const currentDate = new Date();
                    const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
                    const f_formatedDate = currentDate.toLocaleDateString('en-US', options);
                    currentDateElement.textContent = f_formatedDate;
                }

                // Update the current date initially
                updateCurrentDate();

                // Update the current date every second (you can adjust the interval as needed)
                setInterval(updateCurrentDate, 1000);
            });

        </script>

        <div class="insights">
            <div class="student">
                <span class="material-symbols-sharp">personal_injury</span>
                <div class="middle">
                    <div class="left">
                        <h3>Total Patient</h3>
                        <h1>1212</h1>
                    </div>
                    <div class="progress">
                        <svg>
                            <circle cx="38" cy="38" r="36"></circle>
                        </svg>
                        <div class="numb er">
                            <p>81%</p>
                        </div>
                    </div>
                </div>
                <small class="text-muted" >last 24 hours</small>
            </div>

            <!---END OF STUDENTS---->

            <div class="patient">
                <span class="material-symbols-sharp">sick </span>
                <div class="middle">
                    <div class="left">
                        <h3>New Patient</h3>
                        <h1>10</h1>
                    </div>
                    <div class="progress">
                        <svg>
                            <circle cx="38" cy="38" r="36"></circle>
                        </svg>
                        <div class="number">
                            <p>10%</p>
                        </div>
                    </div>
                </div>
                <small class="text-muted" >last 24 hours</small>
            </div>


            <div class="appointment">
                <span class="material-symbols-sharp"> event</span>
                <div class="middle">
                    <div class="left">
                        <h3>Appointment</h3>
                        <h1>30</h1>
                    </div>
                    <div class="progress">
                        <svg>
                            <circle cx="38" cy="38" r="36"></circle>
                        </svg>
                        <div class="number">
                            <p>20%</p>
                        </div>
                    </div>
                </div>
                <small class="text-muted" >last 24 hours</small>
            </div>
            <!---END OF Appointment---->
        </div>  <!-------END OF INSIGHTS-------->

        <div class="activity">
            <h2>Pending Accounts</h2>
            <table>
                <thead>
                <tr>
                    <!--<th>Assigned Doctor</th>-->
                    <th>Patient Name</th>
                  <!--  <th>Date</th> -->
                    <th>Status</th>
                    <th></th>
                    <th></th>

                </tr>
                </thead>
                <tbody>
                        <!-- More understanding of JSTL is ***Needed*** -->
                        <!-- <//jsp:useBean id="user" scope="request">
                            <class>com.top0.bac_webclinic.model.User</class>
                        <class/jsp:useBean> -->
                        <c:forEach items ="${patientList}" var="user">
                <tr>
                   <!-- <td>Dr LOVE</td> -->
                    <td><c:out value="${user.getName()}"/></td>
                   <!-- <td>22/05/2024</td> -->
                    < class="warning"><td> <c:out value="${user.getStatus()}"/></td>
                    <td class="danger">Reject</td>
                    <td class="primary">Accept</td>
                </tr></c:forEach>
<!--
                <tr>
                     <td>Dr LOVE</td>
                    <td>Sandile</td>
                    <td>22/05/2024</td>
                    <td class="danger">Declined</td>
                    <td class="danger">Reject</td>
                    <td class="primary">Accept</td>
                </tr>

                <tr>
                     <td>Dr LOVE</td>
                    <td>Sandile</td>
                    <td>22/05/2024</td>
                    <td class="primary">Accepted</td>
                    <td class="danger">Reject</td>
                    <td class="primary">Accept</td>
                </tr>

                <tr>
                     <td>Dr LOVE</td>
                    <td>Sandile</td>
                    <td>22/05/2024</td>
                    <td class="warning">Pending</td>
                    <td class="danger">Reject</td>
                    <td class="primary">Accept</td>
                </tr>

                <tr>
                     <td>Dr LOVE</td>
                    <td>Sandile</td>
                   <td>22/05/2024</td>
                    <td class="warning">Pending</td>
                    <td class="danger">Reject</td>
                    <td class="primary">Accept</td>
                </tr>
-->
                </tbody>
            </table>
            <a href="#">Show All</a>
        </div>
    </main>



    <div class="right">
        <div class="top">
            <button id="menu-btn">
                <span class="material-symbols-sharp">menu </span>
            </button>
            <div class="theme-toggler"><!--mode-->
                <span class="material-symbols-sharp active">light_mode</span>
                <span class="material-symbols-sharp">dark_mode</span>
            </div>
            <div class="profile">
                <div class="info">
                    <p>hey, <b>Sandy</b></p>
                    <small class="text-muted">ADMIN</small>
                </div>
                <div class="profile-photo">
                    <img src="images/profile-1.jpg" alt="">
                </div>
            </div>
        </div>
        <!---end of top-->

        <div class="sales-analytics">
            <h2>Doctor</h2>
            <div class="item online">
                <div class="icon">
                    <span class="material-symbols-sharp">person</span>
                </div>
                <div class="right">
                    <div class="info">
                        <h3>Dr Serbastian</h3>
                        <small class="text-muted">Ms(general practitioner)</small>
                    </div>
                    <h5 class="primary">away</h5>
                    <h3>3849</h3>
                </div>
            </div>

            <div class="item online">
                <div class="icon">
                    <span class="material-symbols-sharp">person</span>
                </div>
                <div class="right">
                    <div class="info">
                        <h3>Dr Sam</h3>
                        <small class="text-muted">general</small>
                    </div>
                    <h5 class="danger">offline</h5>
                    <h3>3849</h3>
                </div>
            </div>

            <div class="item online">
                <div class="icon">
                    <span class="material-symbols-sharp">person</span>
                </div>
                <div class="right">
                    <div class="info">
                        <h3>Dr matthew</h3>
                        <small class="text-muted">physio</small>
                    </div>
                    <h5 class="success">Online</h5>
                    <h3>3849</h3>
                </div>
            </div>
            <div class="item add-product" id="addProduct">
                <div>
                    <a href="addDoctor.jsp">
                        <h3> Add doctor</h3>
                    </a>

                </div>
            </div>
        </div>

    </div>


</div>
</body>
</html>
