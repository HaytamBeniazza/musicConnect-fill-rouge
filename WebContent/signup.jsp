<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <!-- <link rel="stylesheet" href="ressources/signup.css"> -->
    <!-- <link rel="stylesheet" href="ressources/navbar.css"> -->
            <script src="https://cdn.tailwindcss.com"></script>
    
</head>

<body>
	
   	<jsp:include page="ressources/navbar.jsp" />

   
<%--     <div class="container">
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
    </div> --%>
    
    
    
    
        <div class="bg-gray-100 flex justify-center items-center h-screen">
    <!-- Left: Image -->
<div class="w-1/2 h-screen hidden lg:block">
  <img src="https://media.discordapp.net/attachments/1199392158193561610/1199792883071455273/7d97d444-f0ca-46db-8375-502c5d29a4b7.jpg?ex=65c3d532&is=65b16032&hm=f8c7af801564c1a96bb54345a1047f919d1a7b520aad793cd40c89a11d23fcb3&=&format=webp&width=662&height=662">
</div>
<!-- Right: Login Form -->
<div class="lg:p-36 md:p-52 sm:20 p-8 w-full lg:w-1/2">
  <h1 class="text-2xl font-semibold mb-4">Register</h1>
  <h5 class="text-2xl font-semibold mb-4">${param.success}</h5>
  <form action="signup.in" method="POST">
  
    <div class="mb-4">
      <label for="nom" class="block text-gray-600">Nom :</label>
      <input type="text" id="nom" name="nom" class="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:border-blue-500" autocomplete="off" required>
    </div>
    
    <div class="mb-4">
      <label for="tel" class="block text-gray-600">Telephone :</label>
      <input type="text" id="tel" name="tel" class="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:border-blue-500" autocomplete="off" required>
    </div>
    
    <div class="mb-4">
      <label for="adresse" class="block text-gray-600">Adresse :</label>
      <input type="text" id="adresse" name="adresse" class="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:border-blue-500" autocomplete="off" required>
    </div>
    <!-- Username Input -->
    <div class="mb-4">
      <label for="email" class="block text-gray-600">Email :</label>
      <input type="email" id="email" name="email" class="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:border-blue-500" autocomplete="off" required>
    </div>
    <!-- Password Input -->
    <div class="mb-4">
      <label for="password" class="block text-gray-600">Password :</label>
      <input type="password" id="password" name="password" class="w-full border border-gray-300 rounded-md py-2 px-3 focus:outline-none focus:border-blue-500" autocomplete="off">
    </div>
    
    <div class="flex mb-5 mt-5 gap-3">
              <label for="espace">Select Espace:</label>
            
            <label for="hopital">Hopital</label>
            <input type="radio" id="hopital" name="espace" value="hopital">
            
            <label for="center">Center</label><br>
            <input type="radio" id="center" name="espace" value="center">
    </div>
    <!-- Login Button -->
    <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white font-semibold rounded-md py-2 px-4 w-full">Login</button>
  </form>
  <!-- Sign up  Link -->
  <div class="mt-6 text-blue-500 text-center">
    <a href="login.in" class="hover:underline">J'ai un compte</a>
  </div>
</div>
</div>

</body>

</html>
