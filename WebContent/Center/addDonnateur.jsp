<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Donnateur</title>
    <link rel="stylesheet" href="css/add.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>

    <%@ include file="navbar.jsp" %>

    <div class="form-container">
        <h2>Add Donnateur</h2>
        <form action="postDonnateur.pc" method="post" >
            <label for="nom">Nom:</label>
            <input type="text" id="nom" name="nom" required>

            <label for="prenom">Prenom:</label>
            <input type="text" id="prenom" name="prenom" required>

            <label for="cin">CIN:</label>
            <input type="text" id="cin" name="cin" required>

            <label for="tel">Tel:</label>
            <input type="text" id="tel" name="tel" required>

            <label for="codeAnalyse">Code Analyse:</label>
            <input type="text" id="codeAnalyse" name="codeAnalyse" required>

            <label for="photoGenereAnalyse">Photo Genere Analyse:</label>
            <input type="text" id="photoGenereAnalyse" name="photoGenereAnalyse" required>

            <input type="submit" value="Add Donnateur">
        </form>
    </div>

</body>
</html>
