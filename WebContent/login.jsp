<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
<!--     <link rel="stylesheet" href="ressources/signup.css">
    <link rel="stylesheet" href="ressources/navbar.css"> -->
        <script src="https://cdn.tailwindcss.com"></script>
    
</head>

<body>
	
   	<jsp:include page="ressources/navbar.jsp" />

   
<%--     <div class="container">
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
    </div> --%>
    
    
    <div class="bg-gray-100 flex justify-center items-center h-screen">
    <!-- Left: Image -->
<div class="w-1/2 h-screen hidden lg:block">
  <img src="https://media.discordapp.net/attachments/1199392158193561610/1199792883071455273/7d97d444-f0ca-46db-8375-502c5d29a4b7.jpg?ex=65c3d532&is=65b16032&hm=f8c7af801564c1a96bb54345a1047f919d1a7b520aad793cd40c89a11d23fcb3&=&format=webp&width=662&height=662">
</div>
<!-- Right: Login Form -->
<div class="lg:p-36 md:p-52 sm:20 p-8 w-full lg:w-1/2">
  <h1 class="text-2xl font-semibold mb-4">Login</h1>
  <form action="logged.in" method="POST">
    <!-- Username Input -->
    <div class="mb-4">
      <label for="username" class="block text-gray-600">Email :</label>
      <input type="email" id="email" name="email" class="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:border-blue-500" autocomplete="off" required>
    </div>
    <!-- Password Input -->
    <div class="mb-4">
      <label for="password" class="block text-gray-600">Password :</label>
      <input type="password" id="password" name="password" class="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:border-blue-500" autocomplete="off">
    </div>
    <!-- Login Button -->
    <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white font-semibold rounded-md py-2 px-4 w-full">Login</button>
  </form>
  <!-- Sign up  Link -->
  <div class="mt-6 text-blue-500 text-center">
    <a href="signup.in" class="hover:underline">Sign up Here</a>
  </div>
</div>
</div>

</body>

</html>
