const ctx2 = document.getElementById('doughnut').getContext('2d');
const doughnut = new Chart(ctx2, {
    type: 'doughnut',
    data: {
        labels: ['Male', 'Female'],
        datasets: [{
            label: '# of Votes',
            data: [31, 26],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});

/*
// Fetch data from your backend (assuming you're using jQuery for simplicity)
$.ajax({
    url: 'your_backend_endpoint_to_fetch_data',
    method: 'GET',
    success: function(response) {
        // Assuming your response contains data in the format: { maleCount: ..., femaleCount: ... }
        var data = response.data;

        // Create chart with fetched data
        var ctx2 = document.getElementById('doughnut').getContext('2d');
        var doughnut = new Chart(ctx2, {
            type: 'doughnut',
            data: {
                labels: ['Male', 'Female'],
                datasets: [{
                    label: '# of Votes',
                    data: [data.maleCount, data.femaleCount],
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    },
    error: function(xhr, status, error) {
        // Handle errors
        console.error(error);
    }
});


*/