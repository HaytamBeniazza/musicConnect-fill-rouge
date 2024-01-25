<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation - Blog</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/add.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body class="bg-gray-100">
    <jsp:include page="../ressources/navbar.jsp" />

    <div class="container mx-auto mt-8 p-8 bg-white shadow-lg max-w-md">

        <h2 class="text-3xl font-semibold mb-4">Ajouter un blog</h2>
        <h3 style="color:red;">${param.error}</h3>

        <form action="postBlogForm.bce" method="post" class="space-y-4">
            <div>
                <label for="titre" class="block text-sm font-medium text-gray-600">Titre:</label>
                <input type="text" id="titre" name="titre" required
                       class="mt-1 p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div>
                <label for="description" class="block text-sm font-medium text-gray-600">Description:</label>
                <textarea id="description" name="description" required
                          class="mt-1 p-2 border border-gray-300 rounded-md w-full"></textarea>
            </div>

            <div>
                <label for="image" class="block text-sm font-medium text-gray-600">Image URL:</label>
                <input type="text" id="image" name="image" required
                       class="mt-1 p-2 border border-gray-300 rounded-md w-full">
            </div>

            <button type="submit"
                    class="bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600 focus:outline-none focus:ring focus:border-blue-300">
                Ajouter
            </button>
        </form>

    </div>
</body>
</html>
