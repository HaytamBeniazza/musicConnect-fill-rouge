<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation - Blog</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/blogg.css">
</head>
<body class="bg-gray-100">
    <jsp:include page="../ressources/navbar.jsp" />

    <div class="container mx-auto mt-8 p-8 bg-white shadow-lg">

        <h2 class="text-3xl mb-4">Donnattion de sang - Pochettes de sang</h2>
        <h4 class="text-green-500">${param.success}</h4>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            <c:forEach var="p" items="${pochettes}">
                <div class="bg-white p-4 rounded-md shadow-md">
                    <a href="singlEvent.ev?id=${p.evenement.idEvent}" class="text-blue-500 hover:underline">
                        <h2 class="text-xl font-semibold mb-2">Evenement : ${p.evenement.titre}</h2>
                    </a>
                    <h3 class="text-lg mb-2">Groupe Sang : ${p.groupeSang}</h3>
                    <p class="text-gray-600">Quantite :  ${p.qte}</p>
                </div>
            </c:forEach>
        </div>

    </div>
</body>
</html>
