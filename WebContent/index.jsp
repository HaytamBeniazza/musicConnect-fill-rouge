<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation</title>
    <link rel="stylesheet" href="ressources/index.css">
    <link rel="stylesheet" href="ressources/navbar.css">
    <script src="https://cdn.tailwindcss.com"></script>
   
</head>

<body>

	<jsp:include page="ressources/navbar.jsp" />

<div class="w-screen h-screen overflow-hidden relative before:block before:absolute before:bg-black before:h-full before:w-full before:top-0 before:left-0 before:z-10 before:opacity-30">
  <img src="https://media.discordapp.net/attachments/1199392158193561610/1199733629425831996/nguy-n-hi-p-sTTeaN4wwrU-unsplash.jpg?ex=65c39e03&is=65b12903&hm=26425f3026b3396df44191398b3eb61c6300243c813fbeefb6b753367ee32fff&=&format=webp&width=1123&height=662" class="absolute top-0 w-screen" alt="">
  <div class="relative z-20 max-w-screen-lg mx-auto grid grid-cols-12 h-full items-center">
    <div class="col-span-6">
      <span class="uppercase text-white text-xs font-bold mb-2 block">WE ARE EXPERTS</span>
      <h1 class="text-white font-extrabold text-5xl mb-8">Blood Donation</h1>
      <p class="text-stone-100 text-base">
		Your Slogan or Subtitle Here
      </p>
      <div class="mt-10">
	      <a href="signup.jsp" class="mt-8 text-white uppercase py-4 text-base font-light px-10 border border-white hover:bg-red-500 hover:bg-opacity-60">S'enregistrer</a>
	      <a href="login.jsp" class="mt-8 text-white uppercase py-4 text-base font-light px-10 border border-white hover:bg-red-900 hover:bg-opacity-80">Se connecter</a>
      </div>
    </div>
  </div>
</div>
</body>

</html>
