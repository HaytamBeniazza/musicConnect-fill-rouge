<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Centre</title>
    <link rel="stylesheet" href="css/dashboard.css">
    <link rel="stylesheet" href="css/navbar.css">
     <!-- Include Chart.js library -->
     <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.css" rel="stylesheet" />
     <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
    <script type="text/javascript"  src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <!-- Include your JavaScript file for handling chart data -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.css" rel="stylesheet" />
    
    <script type="text/javascript" src="chart-data.js"></script>
</head>
<body>

    <jsp:include page="../ressources/navbar.jsp" />

<!--     <div class="dashboard-container">
        <div class="widget">
            <h2>Evenements</h2>
            Content for Evenements widget goes here
        </div>

        <div class="widget">
            <h2>Donnateurs</h2>
            Content for Donnateurs widget goes here
        </div>

        <div class="widget">
          <a hrep="blog.jsp">
            <h2>Blogs</h2>
           </a>
        </div>
    </div>
    
        <div class="chart">
            <h2>Blood Quantity Chart</h2>
			<div id="bloodChart"></div>

        </div> -->


<div class="mt-8 mb-6 px-4 flex align-center item-center justify-center">
	<a href="blog.jsp" class="relative inline-flex items-center justify-center p-0.5 mb-2 me-2 overflow-hidden text-sm font-medium text-gray-900 rounded-lg group bg-gradient-to-br from-pink-500 to-orange-400 group-hover:from-pink-500 group-hover:to-orange-400 hover:text-white dark:text-white focus:ring-4 focus:outline-none focus:ring-pink-200 dark:focus:ring-pink-800">
	<span class="relative px-5 py-2.5 transition-all ease-in duration-75 bg-white dark:bg-gray-900 rounded-md group-hover:bg-opacity-0">
	Evenements
	</span>
	</a>
	
	<a href="blog.jsp" class="relative inline-flex items-center justify-center p-0.5 mb-2 me-2 overflow-hidden text-sm font-medium text-gray-900 rounded-lg group bg-gradient-to-br from-pink-500 to-orange-400 group-hover:from-pink-500 group-hover:to-orange-400 hover:text-white dark:text-white focus:ring-4 focus:outline-none focus:ring-pink-200 dark:focus:ring-pink-800">
	<span class="relative px-5 py-2.5 transition-all ease-in duration-75 bg-white dark:bg-gray-900 rounded-md group-hover:bg-opacity-0">
	Donnateurs
	</span>
	</a>
	
	<a href="blog.jsp" class="relative inline-flex items-center justify-center p-0.5 mb-2 me-2 overflow-hidden text-sm font-medium text-gray-900 rounded-lg group bg-gradient-to-br from-pink-500 to-orange-400 group-hover:from-pink-500 group-hover:to-orange-400 hover:text-white dark:text-white focus:ring-4 focus:outline-none focus:ring-pink-200 dark:focus:ring-pink-800">
	<span class="relative px-5 py-2.5 transition-all ease-in duration-75 bg-white dark:bg-gray-900 rounded-md group-hover:bg-opacity-0">
	Blogs
	</span>
	</a>
	
	<a href="blog.jsp" class="relative inline-flex items-center justify-center p-0.5 mb-2 me-2 overflow-hidden text-sm font-medium text-gray-900 rounded-lg group bg-gradient-to-br from-pink-500 to-orange-400 group-hover:from-pink-500 group-hover:to-orange-400 hover:text-white dark:text-white focus:ring-4 focus:outline-none focus:ring-pink-200 dark:focus:ring-pink-800">
	<span class="relative px-5 py-2.5 transition-all ease-in duration-75 bg-white dark:bg-gray-900 rounded-md group-hover:bg-opacity-0">
	Blood Quantity Chart
	</span>
	</a>
</div>

<div class="max-w-sm w-full bg-transparent rounded-lg shadow p-4 md:p-6 mt-8">
  <div id="column-chart"></div>
  <div class="grid grid-cols-1 items-center border-gray-200 border-t dark:border-gray-700 justify-between"></div>
</div>

<script>
  window.addEventListener("load", function () {
    const options = {
      colors: ["#1A56DB", "#FDBA8C", "#FF5733", "#FFC300", "#58D68D"],
      series: [
        {
          name: "Blood Pouches",
          data: [
            { x: "A+", y: 50 },
            { x: "A-", y: 10 },
            { x: "B+", y: 30 },
            { x: "B-", y: 50 },
            { x: "AB+", y: 20 },
            { x: "AB-", y: 3 },
            { x: "O+", y: 40 },
            { x: "O-", y: 15 },
          ],
        },
      ],
      chart: {
        type: "bar",
        height: "320px",
        fontFamily: "Inter, sans-serif",
        toolbar: {
          show: false,
        },
      },
      plotOptions: {
        bar: {
          horizontal: false,
          columnWidth: "70%",
          borderRadius: 8,
        },
      },
      tooltip: {
        shared: true,
        intersect: false,
        style: {
          fontFamily: "Inter, sans-serif",
        },
      },
      states: {
        hover: {
          filter: {
            type: "darken",
            value: 1,
          },
        },
      },
      stroke: {
        show: true,
        width: 0,
        colors: ["transparent"],
      },
      grid: {
        show: false,
        strokeDashArray: 4,
        padding: {
          left: 2,
          right: 2,
          top: -14,
        },
      },
      dataLabels: {
        enabled: false,
      },
      legend: {
        show: false,
      },
      xaxis: {
        floating: false,
        labels: {
          show: true,
          style: {
            fontFamily: "Inter, sans-serif",
            cssClass: "text-xs font-normal fill-gray-500 dark:fill-gray-400",
          },
        },
        axisBorder: {
          show: false,
        },
        axisTicks: {
          show: false,
        },
      },
      yaxis: {
        show: false,
      },
      fill: {
        opacity: 1,
      },
    };

    if (document.getElementById("column-chart") && typeof ApexCharts !== "undefined") {
      const chart = new ApexCharts(document.getElementById("column-chart"), options);
      chart.render();
    }
  });
</script>

<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>


<script src="https://cdn.tailwindcss.com"></script>
	

</body>
</html>
