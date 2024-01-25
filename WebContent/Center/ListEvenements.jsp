<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List of Events</title>
    <link rel="stylesheet" href="css/events.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>

    <%@ include file="navbar.jsp" %>

    <div class="events-container">
        <h2>Les evenements</h2>
                <h3 style="color:green;">${param.success}</h3>
       
        <div class="event-cards">
            <c:forEach var="event" items="${events}">
                <div class="event-card">
                    <h3>${event.titre}</h3>
                    <p>${event.description}</p>
                    <p>Date: ${event.date}</p>
                    <p>Location: ${event.adresse}</p>
                    <a class="add-event-link" href="addPochette.pc?id=${event.idEvent}">Ajouter une pochette</a>
                </div>
            </c:forEach>
        </div>
    </div>
		<a href="addEvent.ev" class="add-event-link">Ajouter un Evenement</a>

</body>
</html>
