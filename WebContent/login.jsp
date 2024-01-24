<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="ressources/signup.css">
    <link rel="stylesheet" href="ressources/navbar.css">
</head>

<body>
	
   	<jsp:include page="ressources/navbar.jsp" />

   
    <div class="container">
        <h1>Se connecter</h1>
        <h3 style="color: green">${param.success}</h3>

        <form action="logged.in" method="POST">

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>

			
<!--             <label for="espace">Vous etes ?</label>
            
            <label for="hopital">Espace Hopital</label>
            <input type="radio" id="hopital" name="espace" value="hopital">
            <label for="center">Espace Center</label><br>
            <input type="radio" id="center" name="espace" value="center"> -->
            <input type="submit" value="Se connecter">
            <a href="signup.in" style="text-decoration: underline;color: red" >je n'ai pas un compte</a>
        </form>
    </div>

</body>

</html>
