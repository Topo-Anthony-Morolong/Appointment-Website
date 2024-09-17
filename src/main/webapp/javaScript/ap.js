const xValues = [10,20,30,40,50,60,70,80,90,100]

new Chart("chart", {
    type: 'line',
    data: {
        labels: xValues,
        datasets: [{

            data: [10,25,35,44,58,60,70,54,96 ],
            borderColor:"green",
            fill:false,
            backgroundcolor:"#fff",
            lineTension:0.4,
            pointRadius:4,
            label:"Approved"

        },
            {
                data: [20,15,35,60,35,20,28,68,86 ],
                borderColor:"yellow",
                fill:false,
                backgroundColor:"#fff",
                lineTension:0.4,
                pointRadius:4,
                label:"Rejected"
            },
        ],
    },

    options:{

        title: {
            display:true,
            text:"Appointment chart",
            fontSize:30,
        },
    }
});