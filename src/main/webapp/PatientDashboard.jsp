<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="CSS/patientDashboard.css">
    <title>Document</title>

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
        <a href="PatientDashboard.jsp">
            <span class="material-symbols-sharp">dashboard</span>
            <h3>Home</h3>
        </a>

        <a href="#">
            <span class="material-symbols-sharp">message</span>
            <h3>Messages</h3>
            <span class="message-count"></span><!--holds notification count-->
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

<main class="main-content">

    <section class="topbuttons">
        <button id="bookapp">
            Book Appointment
            <small>Schedule a new consultation.</small>
        </button>
        <button id="profile">
            Profile
            <small>View and manage your information.</small>
        </button>
    </section>


    <div class="appointment-card">
        <h2>Upcoming Appointments</h2>
        <div class="appointment-details">
            <div class="appointment-info">
                <p>Patient name:</p>
                <p>Date: </p>
                <p>Time: </p>
                <p>Doctor name:</p>
            </div>
            <div class="appointment-actions">
                <button>Cancel</button>
                <button>Reschedule</button>
            </div>
        </div>
    </div>

    <!-- Booking form -->
    <div class="container" id="booking-form-container">
        <h2>Booking Form</h2>
        <form id="booking-form">
            <!-- Add hidden input field to store the appointment type -->
            <input type="hidden" id="appointment-type" name="appointmentType">

            <label for="name">Patient Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" required>

            <label for="appointment-preference">Appointment Preference:</label>
            <select id="appointment-preference" name="appointmentPreference">
                <option value="">Select Preference</option>
                <option value="physical">Physical Appointment</option>
                <option value="audio">Audio Call Appointment</option>
            </select>
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>
            <label for="time">Time:</label>
            <input type="time" id="time" name="time" required>
            <input type="submit" value="Submit">
        </form>
    </div>

    <!-- Profile form -->
    <div class="profile-container" id="profile-form-container">
        <h2>Profile</h2>
        <form id="profile-form">
            <label for="profile-name">Patient Name:</label>
            <input type="text" id="profile-name" name="name" required>

            <label for="profile-email">Email:</label>
            <input type="email" id="profile-email" name="email" required>

            <label for="profile-phone">Phone:</label>
            <input type="tel" id="profile-phone" name="phone" required>

            <label for="profile-address">Address:</label>
            <input type="text" id="profile-address" name="address" required>

            <label for="profile-dob">Date of Birth:</label>
            <input type="date" id="profile-dob" name="dob" required>

            <input type="submit" value="Update Profile">
        </form>
    </div>

    <div class="cards-container">
        <div class="card">
            <h2>Sick Leave Card</h2>
            <div class="detail">
                <span class="label">Duration:</span>
                <span class="value" id="duration">5 Days</span>
            </div>
            <div class="detail">
                <span class="label">Start Date:</span>
                <span class="value" id="start-date">May 20, 2024</span>
            </div>
            <div class="detail">
                <span class="label">End Date:</span>
                <span class="value" id="end-date">May 24, 2024</span>
            </div>
        </div>

        <div class="card">
            <h2>Prescription Card</h2>
            <div class="detail">
                <span class="label">Medication:</span>
                <span class="value" id="medication">Amoxicillin</span>
            </div>
            <div class="detail">
                <span class="label">Dosage:</span>
                <span class="value" id="dosage">500 mg</span>
            </div>
            <div class="detail">
                <span class="label">Frequency:</span>
                <span class="value" id="frequency">3 times a day</span>
            </div>
            <div class="detail">
                <span class="label">Duration:</span>
                <span class="value" id="prescription-duration">7 Days</span>
            </div>
        </div>
    </div>



</main>

<script>
    document.getElementById('bookapp').addEventListener('click', function() {
        var formContainer = document.getElementById('booking-form-container');
        var profileContainer = document.getElementById('profile-form-container');
        if (formContainer.style.display === 'none' || formContainer.style.display === '') {
            formContainer.style.display = 'block';
            profileContainer.style.display = 'none'; // Hide the profile form if it's visible
        } else {
            formContainer.style.display = 'none';
        }
    });

    document.getElementById('profile').addEventListener('click', function() {
        var profileContainer = document.getElementById('profile-form-container');
        var formContainer = document.getElementById('booking-form-container');
        if (profileContainer.style.display === 'none' || profileContainer.style.display === '') {
            profileContainer.style.display = 'block';
            formContainer.style.display = 'none'; // Hide the booking form if it's visible
        } else {
            profileContainer.style.display = 'none';
        }
    });

    const cancelButton = document.querySelector('.appointment-card button:nth-child(2)'); // Selects second button (assuming cancel is second)
    const rescheduleButton = document.querySelector('.appointment-card button:nth-child(1)'); // Selects first button (assuming reschedule is first)

    // Add click event listeners for each button
    cancelButton.addEventListener('click', handleCancelClick);
    rescheduleButton.addEventListener('click', handleRescheduleClick);

    // Function to handle cancel click
    function handleCancelClick() {
        // Implement logic to confirm cancellation (e.g., popup message)
        const confirmation = confirm('Are you sure you want to cancel this appointment?');
        if (confirmation) {
            // Send a request to the server to cancel the appointment
            // (Functionality depends on your backend implementation)
            console.log('Sending request to cancel appointment...');
            // After successful cancellation, remove the appointment card from the DOM
            const appointmentCard = document.querySelector('.appointment-card');
            appointmentCard.parentNode.removeChild(appointmentCard);
        }
    }

    // Function to handle reschedule click
    function handleRescheduleClick() {
        // Open a modal or redirect to a dedicated page for rescheduling
        // (Functionality depends on your UI approach)
        console.log('Opening reschedule form...');

        // You might need to modify the appointment details based on your HTML structure
        const patientName = document.querySelector('.appointment-info h3').textContent;
        const appointmentDate = document.querySelector('.appointment-info p:nth-child(2)').textContent;
        const appointmentTime = document.querySelector('.appointment-info p:nth-child(3)').textContent;

        // Simulate opening a reschedule form with pre-filled details (replace with your actual logic)
        alert(`Opening reschedule form with pre-filled details:\nPatient Name: ${patientName}\nDate: ${appointmentDate}\nTime: ${appointmentTime}`);
    }
</script>

</body>
</html>
