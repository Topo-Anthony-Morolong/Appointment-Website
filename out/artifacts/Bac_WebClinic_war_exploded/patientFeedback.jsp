<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="CSS/feedbackStyle.css">
    <title></title>

</head>
<body>
<header class="header">
    <img src="images/bac-clinic-favicon-black.png" alt="logo" width="100" height="100">
</header>

<aside>
    <div class="sidebar">
        <a href="PatientDashboard.jsp">
            <span class="material-symbols-sharp">dashboard</span>
            <h3>Home</h3>
        </a>
        <a href="Appointment.jsp">
            <span class="material-symbols-sharp">date_range</span>
            <h3>Appointments</h3>
        </a>
        <a href="#">
            <span class="material-symbols-sharp">message</span>
            <h3>Messages</h3>
        </a>
        <a href="#">
            <span class="material-symbols-sharp">person</span>
            <h3>Patients</h3>
        </a>
        <a href="#">
            <span class="material-symbols-sharp">calendar_today</span>
            <h3>Calendar</h3>
        </a>
        <a href="patientFeedback.jsp">
            <span class="material-symbols-sharp">feedback</span>
            <h3>Feedback</h3>
        </a>
        <a href="#">
            <span class="material-symbols-sharp">logout</span>
            <h3>LogOut</h3>
        </a>
    </div>
</aside>


<div class="feedback-container">
    <h1>Rate Your Experience</h1>
    <div class="rating">
        <div class="emoji-card-container">
            <div class="emoji-card">
                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-emoji-frown" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                    <path d="M4.285 12.433a.5.5 0 0 0 .683-.183A3.5 3.5 0 0 1 8 10.5c1.295 0 2.426.703 3.032 1.75a.5.5 0 0 0 .866-.5A4.5 4.5 0 0 0 8 9.5a4.5 4.5 0 0 0-3.898 2.25.5.5 0 0 0 .183.683M7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5m4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5"/>
                </svg>
            </div>
            <div class="rating-labels">Terrible</div>
        </div>

        <div class="emoji-card-container">
            <div class="emoji-card">
                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-emoji-astonished" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                    <path d="M7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5m4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5M4.884 4.022a2 2 0 0 1 1.458-.048a.5.5 0 0 0 .316-.948a3 3 0 0 0-2.167.077a3.1 3.1 0 0 0-.773.478q-.036.03-.07.064l-.002.001a.5.5 0 0 0 .707.708l-.001.002.001-.002a2 2 0 0 1 .122-.1a2 2 0 0 1 .41-.232Zm6.232 0a2 2 0 0 0-1.458-.048a.5.5 0 1 1-.316-.948a3 3 0 0 1 2.168.077a3 3 0 0 1 .773.478l.07.064v.001a.5.5 0 0 1-.706.708l.002.002-.002-.002a2 2 0 0 0-.122-.1a2 2 0 0 0-.41-.232ZM8 10c-.998 0-1.747.623-2.247 1.246-.383.478.08 1.06.687.98q1.56-.202 3.12 0c.606.08 1.07-.502.687-.98C9.747 10.623 8.998 10 8 10"/>
                </svg>
            </div>
            <div class="rating-labels">Bad</div>
        </div>

        <div class="emoji-card-container">
            <div class="emoji-card">
                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-emoji-neutral" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                    <path d="M4 10.5a.5.5 0 0 0 .5.5h7a.5.5 0 0 0 0-1h-7a.5.5 0 0 0-.5.5m3-4C7 5.672 6.552 5 6 5s-1 .672-1 1.5S5.448 8 6 8s1-.672 1-1.5m4 0c0-.828-.448-1.5-1-1.5s-1 .672-1 1.5S9.448 8 10 8s1-.672 1-1.5"/>
                </svg>
            </div>
            <div class="rating-labels">Okay</div>
        </div>

        <div class="emoji-card-container">
            <div class="emoji-card">
                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-emoji-smile" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                    <path d="M4.285 9.567a.5.5 0 0 1 .683.183A3.5 3.5 0 0 0 8 11.5a3.5 3.5 0 0 0 3.032-1.75a.5.5 0 1 1 .866.5A4.5 4.5 0 0 1 8 12.5a4.5 4.5 0 0 1-3.898-2.25a.5.5 0 0 1 .183-.683M7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5m4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5"/>
                </svg>
            </div>
            <div class="rating-labels">Good</div>
        </div>

        <div class="emoji-card-container">
            <div class="emoji-card">
                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-emoji-grin" viewBox="0 0 16 16">
                    <path d="M12.946 11.398A6.002 6.002 0 0 1 2.108 9.14c-.114-.595.426-1.068 1.028-.997C4.405 8.289 6.48 8.5 8 8.5s3.595-.21 4.864-.358c.602-.07 1.142.402 1.028.998a5.95 5.95 0 0 1-.946 2.258m-.078-2.25C11.588 9.295 9.539 9.5 8 9.5s-3.589-.205-4.868-.352c.11.468.286.91.517 1.317A37 37 0 0 0 8 10.75a37 37 0 0 0 4.351-.285c.231-.407.407-.85.517-1.317m-1.36 2.416c-1.02.1-2.255.186-3.508.186s-2.488-.086-3.507-.186A5 5 0 0 0 8 13a5 5 0 0 0 3.507-1.436ZM6.488 7c.114-.294.179-.636.179-1 0-1.105-.597-2-1.334-2C4.597 4 4 4.895 4 6c0 .364.065.706.178 1c.23-.598.662-1 1.155-1c.494 0 .925.402 1.155 1M12 6c0 .364-.065.706-.178 1c-.23-.598-.662-1-1.155-1c-.494 0-.925.402-1.155 1a2.8 2.8 0 0 1-.179-1c0-1.105.597-2 1.334-2C11.403 4 12 4.895 12 6"/>
                    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16m0-1A7 7 0 1 1 8 1a7 7 0 0 1 0 14"/>
                </svg>
            </div>
            <div class="rating-labels">Amazing</div>
        </div>

    </div>

    <form class="feedback-form">
        <p>Optional: Any suggestions for improving the system?</p>
        <textarea id="reasons" class="comment-box" rows="4" ></textarea>
        <div class="buttons">
            <button type="submit">Submit</button>
            <button type="button" onclick="cancelFeedback()">Cancel</button>
        </div>
    </form>
</div>


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

    function cancelFeedback() {
        // Clear the comment box
        document.getElementById("reasons").value = "";
    }
</script>
</body>
</html>
