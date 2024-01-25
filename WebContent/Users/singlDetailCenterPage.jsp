<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Single Detail Center Page</title>
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/singleDetailCenterPage.css"> <!-- Add your custom CSS file -->
</head>
<body>

        <jsp:include page="../ressources/navbar.jsp" />


    <div class="center-profile">
        <h2>${center.nom}</h2>
        <p>${center.tel}</p>
        <p>${center.adresse}</p>
    </div>

    <div class="events-list">
        <h2>Events</h2>
        <c:forEach var="event" items="${events}">
            <div class="event-card">
                <h3>${event.titre}</h3>
                <p>${event.description}</p>
                <p>Date: ${event.date}</p>
                <!-- Add more event details as needed -->
            </div>
        </c:forEach>
    </div>

</body>
</html>
