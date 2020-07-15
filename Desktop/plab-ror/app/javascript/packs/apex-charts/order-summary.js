import ApexCharts from 'apexcharts';
$(document).on('turbolinks:load', function () {
  // var pricedata = document.getElementById('y-axis').dataset.values.slice(1, -1).split(',').map(Number)
    var options = {
        chart: {
            height: 350,
            type: 'area',
        },
        dataLabels: {
            enabled: false
        },
        stroke: {
            curve: 'smooth',
            width: 3,
        },
        series: [{
            name: 'Alexander-Arnold',
            data: [10, 20, 73, 40, 50, 150, 112, 150, 141, 145]
        }, {
            name: 'Total Dividends',
            data: [50, 60, 70, 80, 90, 110, 112, 140, 141, 145]
        }],
        xaxis: {
            type: 'date',
            categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct"],
            labels: {
                style: {
                    colors: '#686c71',
                    fontSize: '12px',
                },
            },
            axisBorder: {
                show: true,
                color: '#f6f6f7',
                height: 1,
                width: '100%',
                offsetX: 0,
                offsetY: 0
            },
        },
        tooltip: {
            x: {
                format: 'dd/MM/yy'
            },
        },
        legend: {
            offsetY: -10,
        },
        grid: {
            show: true,
            borderColor: '#f6f6f7',
        },
        labels: {
            style: {
                colors: '#686c71',
                fontSize: '12px',
            },
        },
        axisBorder: {
            show: true,
            color: '#f6f6f7',
            height: 1,
            width: '100%',
            offsetX: 0,
            offsetY: 0
        },
        yaxis: {
            labels: {
                style: {
                    color: '#686c71',
                    fontSize: '12px',
                },
            },
            axisBorder: {
                show: false,
                color: '#f6f6f7',
            },
        }

    }

    var chart = new ApexCharts(
        document.querySelector("#order-summary"),
        options
    );

    chart.render();
});
