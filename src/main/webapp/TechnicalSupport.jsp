<%--
  Created by IntelliJ IDEA.
  User: TOPO ANTHONY
  Date: 19/05/2024
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Technical Support Dashboard</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,1,0" />
  <script src="javaScript/script.js" defer></script>
  <link rel="stylesheet" href="CSS/TecSupport.css">
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
      <a href="#" >
        <span class="material-symbols-sharp">grid_view</span>
        <h3>Dashboard</h3>
      </a>


      <a href="Reports.jsp" >

                <span class="material-symbols-sharp">
                    monitoring
                    </span>
        <h3>Reports</h3>
      </a>
<!-- Add the relevant href value-->
      <a href="messages.html">
        <span class="material-symbols-sharp">mail</span>
        <h3>Messages</h3>
        <span  class="message-count" ></span><!--holds notification count-->
      </a>

      <a href="TechnicalSupport.jsp" class="active">
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
    <h1>TECHNICAL SUPPORT</h1>

    <div class="live-chat-support">
      <h2>Live Chat Support</h2>
      <p>Real-time assistance for users who need immediate help.</p>
    </div>
    <div class="card">
      <div class="container">
        <h4><b>John Doe</b></h4>
        <p>Architect & Engineer</p>
      </div>
    </div>

  </main>




  <!---
      <button class="chatbot-toggler">
        <span class="material-symbols-rounded">mode_comment</span>
        <span class="material-symbols-outlined">close</span>
      </button>
      <div class="chatbot">
        <header>
          <h2>Chatbot</h2>
          <span class="close-btn material-symbols-outlined">close</span>
        </header>
        <ul class="chatbox">
          <li class="chat incoming">
            <span class="material-symbols-outlined">smart_toy</span>
            <p>Hi there 👋<br>How can I help you today?</p>
          </li>
        </ul>
        <div class="chat-input">
          <textarea placeholder="Enter a message..." spellcheck="false" required></textarea>
          <span id="send-btn" class="material-symbols-rounded">send</span>
        </div>
      </div>
      -->
</div>


</body>
</html>
