<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Single Detail Center Page</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/singleDetailCenterPage.css"> <!-- Add your custom CSS file -->
</head>
<body class="bg-gray-100">

    <jsp:include page="../ressources/navbar.jsp" />

    <div class="container mx-auto mt-8 p-8 bg-white shadow-lg">

        <div class="center-profile">
            <h2 class="text-3xl font-semibold mb-2">${center.nom}</h2>
            <p class="text-gray-600">${center.tel}</p>
            <p class="text-gray-600">${center.adresse}</p>
        </div>

        <div class="events-list mt-8">
            <h2 class="text-2xl font-semibold mb-4">Events</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                <c:forEach var="event" items="${events}">
                    <div class="p-6 bg-gray-200 rounded-md">
                        <h3 class="text-xl font-semibold mb-2">${event.titre}</h3>
                        <p class="text-gray-600">${event.description}</p>
                        <p class="text-gray-600">Date: ${event.date}</p>
                        <!-- Add more event details as needed -->
                    </div>
                </c:forEach>
            </div>
        </div>

    </div>

</body>
</html>
