<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <link rel="stylesheet" href="ressources/signup.css">
    <link rel="stylesheet" href="ressources/navbar.css">
</head>

<body>
	
   	<jsp:include page="ressources/navbar.jsp" />

   
    <div class="container">
        <h1>S'enregistrer</h1>
        <h3 style="color: green">${param.success}</h3>

        <form action="signup.in" method="post">
            <label for="nom">Nom:</label>
            <input type="text" id="nom" name="nom" required><br>

            <label for="tel">Tel:</label>
            <input type="tel" id="tel" name="tel" required><br>

            <label for="adresse">Adresse:</label>
            <input type="text" id="adresse" name="adresse" required><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>

            <label for="espace">Select Espace:</label>
            
            <label for="hopital">Hopital</label>
            <input type="radio" id="hopital" name="espace" value="hopital">
            
            <label for="center">Center</label><br>
            <input type="radio" id="center" name="espace" value="center">

            <input type="submit" value="Envoyer">
            <a href="login.in" style="text-decoration: none;color: red" >j'ai un compte</a>
        </form>
    </div>

</body>

</html>
