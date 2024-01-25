<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation - Blog</title>
    <link rel="stylesheet" href="css/add.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>
    <jsp:include page="../ressources/navbar.jsp" />

    <div class="blog-container">
        <h2>Ajouter un blog</h2>
        <h3 style="color:red;">${param.error}</h3>
        
        <form action="postBlogForm.bce" method="post">
            <label for="titre">Titre:</label>
            <input type="text" id="titre" name="titre" required><br>

            <label for="description">Description:</label>
            <textarea id="description" name="description" required></textarea><br>

            <label for="image">Image URL:</label>
            <input type="text" id="image" name="image" required><br>

            <input type="submit" value="Ajouter">
        </form>
    </div>
</body>
</html>
