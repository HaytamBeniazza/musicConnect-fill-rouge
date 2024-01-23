var bloodGroups = ['A+', 'B+', 'AB+', 'O+', 'A-', 'B-', 'AB-', 'O-'];
var bloodQuantities = [15, 25, 20, 30, 10, 18, 15, 25];

// Get the chart canvas element
var ctx = document.getElementById('bloodChart').getContext('2d');

// Create the chart
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: bloodGroups,
        datasets: [{
            label: 'Blood Quantities',
            data: bloodQuantities,
            backgroundColor: 'rgba(75, 192, 192, 0.6)', // Color for bars
            borderColor: 'rgba(75, 192, 192, 1)', // Border color for bars
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true,
                title: {
                    display: true,
                    text: 'Quantity'
                }
            },
            x: {
                title: {
                    display: true,
                    text: 'Blood Group'
                }
            }
        }
        

    }
    
});
