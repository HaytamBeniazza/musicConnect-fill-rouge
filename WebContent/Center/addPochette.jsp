<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Pochette</title>
    <link rel="stylesheet" href="css/add.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>

    <jsp:include page="../ressources/navbar.jsp" />

    <div class="form-container">
        <h2>Add Pochette</h2>
        <form action="postPochette.pc" method="post">
            <!-- Hidden input for the event ID -->
            <input type="hidden" name="eventId" value="${param.id}">

            <label for="groupeSang">Groupe Sang:</label>
            <input type="text" id="groupeSang" name="groupeSang" required>

            <label for="qte">Quantity:</label>
            <input type="number" id="qte" name="qte" required>

            <label for="donnateur">Select Donnateur:</label>
            <select id="donnateur" name="donnateurId">
                <c:forEach var="donnateur" items="${donnateurs}">
                    <option value="${donnateur.idDonnateur}">${donnateur.nom} ${donnateur.prenom}</option>
                </c:forEach>
            </select>

            <input type="submit" value="Add Pochette">
            <a class="link" href="addDonnateur.jsp" >Donnateur not found</a>
        </form>
    </div>

</body>
</html>
