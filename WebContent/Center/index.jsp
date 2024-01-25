<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/navbar.css">
    
</head>

<body>

    <jsp:include page="../ressources/navbar.jsp" />


    <div class="container">
        <h1>Blood Donation</h1>
        <h2>Bienvenue ${sessionScope.nom } Dans votre espace centre</h2>

        <div class="buttons">
            <a href="signup.jsp">Explorer les demandes</a>
            <a href="login.jsp">Ajouter un donnateur</a>
        </div>
    </div>

</body>

</html>
