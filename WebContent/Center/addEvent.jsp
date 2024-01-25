<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Event</title>
    <link rel="stylesheet" href="css/add.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>

    <%@ include file="navbar.jsp" %>

    <div class="form-container">
        <h2>Add Event</h2>
        <form action="postEvent.ev" method="post">
            <label for="titre">Event Title:</label>
            <input type="text" id="titre" name="titre" required>

            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="4" required></textarea>

            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>

            <label for="adresse">Location:</label>
            <input type="text" id="adresse" name="adresse" required>

            <input type="submit" value="Add Event">
        </form>
    </div>

</body>
</html>
