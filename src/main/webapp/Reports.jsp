<%--
  Created by IntelliJ IDEA.
  User: TOPO ANTHONY
  Date: 19/05/2024
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Responsive Analytic Dashboard</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <script src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1/dist/chart.min.js"></script>
  <link rel="stylesheet" href="CSS/Reports.css">
</head>

<body>


<div class="container">
  <aside>
    <div class="top">
      <div class="logo">
        <img src="img/bac-clinic-high-resolution-logo-black-transparent.png" alt="" >
        <h2>BAC <span class="danger">clinic</span> </h2>
      </div>
      <div class="close" id="close-btn">
        <span class="material-symbols-sharp">close</span><!-- close icon-->
      </div>
    </div>

    <div class="sidebar">
      <a href="Admin.html" >
        <span class="material-symbols-sharp">grid_view</span>
        <h3>Dashboard</h3>
      </a>


      <a href="Reports.html" class="active">

                <span class="material-symbols-sharp">
                    monitoring
                    </span>
        <h3>Reports</h3>
      </a>

      <a href="TechnicalSupport.jsp">
        <span class="material-symbols-sharp">manage_accounts</span>
        <h3>Technical Support</h3>
      </a>

      <a href="Settings.jsp" >
                <span class="material-symbols-sharp">
                    settings
                    </span>
        <h3>Settings</h3>
      </a>


      <a href="#">
                <span class="material-symbols-sharp">
                    logout
                    </span>
        <h3>LogOut</h3>
      </a>
    </div>
  </aside>

  <main>

    <h1>REPORTS</h1>


    <div class="card">
      <div class="chart doughnut-chart">
        <h2>Patients</h2>
        <div>
          <canvas id="doughnut"></canvas>
        </div>
      </div>
    </div>
    <div class="card">
      <h2>Feedbacks Report</h2>
      <table>
        <tr>
          <th>Category</th>
          <th>Total</th>
        </tr>
        <tr>
          <td>Overall Ratings</td>
          <td>100</td>
        </tr>
        <tr>
          <td>No: of reviews</td>
          <td>60</td>
        </tr>
        <tr>
          <td>Response Rate</td>
          <td>10</td>
        </tr>
        <tr>
          <td>Comments</td>
          <td>0</td>
        </tr>
      </table>
    </div>
    <div class="card">
      <h2>Appointments Report</h2>
      <table>
        <tr>
          <th>Category</th>
          <th>Total</th>
        </tr>
        <tr>
          <td>Total Appointments</td>
          <td>100</td>
        </tr>
        <tr>
          <td>Cancellations</td>
          <td>10</td>
        </tr>
        <tr>
          <td>Approved</td>
          <td>80</td>
        </tr>
        <tr>
          <td>No Show</td>
          <td>5</td>
        </tr>
      </table>
    </div>

    <script src="javaScript/chart.js"></script>

  </main>



</div>


</body>
</html>
