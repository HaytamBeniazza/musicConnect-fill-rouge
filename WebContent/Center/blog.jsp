<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation - Blog</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/blog.css">
</head>
<body class="bg-gray-100">
    <jsp:include page="../ressources/navbar.jsp" />

    <div class="container mx-auto mt-8 p-8 bg-white shadow-lg">

        <h2 class="text-3xl mb-4">Donnattion de sang - Blog</h2>
        <h4 class="text-green-500">${param.success}</h4>
        <a href="blogForm.bce" class="add-blog-link text-blue-500 underline mb-4">Ajouter un Blog</a>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            <c:forEach var="blog" items="${blogs}">
                <div class="bg-white p-4 rounded-md shadow-md">
                    <img src="https://img.freepik.com/free-photo/toy-bricks-table_144627-48267.jpg?w=740&t=st=1706025210~exp=1706025810~hmac=5bab7bcd188721ddbde3a95176083b7f955d6233ba06117939c403e67f1c3216"
                         alt="${blog.titreBlog}" class="w-full h-40 object-cover rounded-md mb-4">
                    <h3 class="text-xl font-semibold mb-2">${blog.titreBlog}</h3>
                    <p class="text-gray-600">${blog.description}</p>
                </div>
            </c:forEach>
        </div>

    </div>
</body>
</html>
