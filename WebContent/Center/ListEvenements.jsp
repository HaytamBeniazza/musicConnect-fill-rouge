<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List of Events</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<!--     <link rel="stylesheet" href="css/events.css">
    <link rel="stylesheet" href="css/navbar.css"> -->
</head>
<body class="bg-gray-100">

    <jsp:include page="../ressources/navbar.jsp" />

    <div class="container mx-auto mt-8 p-8 bg-white shadow-lg">
        <h2 class="text-3xl font-semibold mb-4">Les événements</h2>
        <h3 class="text-green-500">${param.success}</h3>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            <c:forEach var="event" items="${events}">
                <div class="p-6 bg-gray-200 rounded-md">
                    <h3 class="text-xl font-semibold mb-2">${event.titre}</h3>
                    <p class="text-gray-600">${event.description}</p>
                    <p class="text-gray-600">Date: ${event.date}</p>
                    <p class="text-gray-600">Location: ${event.adresse}</p>
                    <a href="addPochette.pc?id=${event.idEvent}" class="text-blue-500 hover:underline">Ajouter une pochette</a>
                </div>
            </c:forEach>
        </div>

        <a href="addEvent.ev" class="block mt-4 text-blue-500 hover:underline">Ajouter un Événement</a>
    </div>

</body>
</html>
