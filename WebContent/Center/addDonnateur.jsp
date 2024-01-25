<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Donnateur</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/add.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body class="bg-gray-100">

    <jsp:include page="../ressources/navbar.jsp" />

    <div class="container mx-auto mt-8 p-8 bg-white shadow-lg max-w-md">

        <h2 class="text-3xl font-semibold mb-4">Add Donnateur</h2>

        <form action="postDonnateur.pc" method="post" class="space-y-4">
            <div>
                <label for="nom" class="block text-sm font-medium text-gray-600">Nom:</label>
                <input type="text" id="nom" name="nom" required
                       class="mt-1 p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div>
                <label for="prenom" class="block text-sm font-medium text-gray-600">Prenom:</label>
                <input type="text" id="prenom" name="prenom" required
                       class="mt-1 p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div>
                <label for="cin" class="block text-sm font-medium text-gray-600">CIN:</label>
                <input type="text" id="cin" name="cin" required
                       class="mt-1 p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div>
                <label for="tel" class="block text-sm font-medium text-gray-600">Tel:</label>
                <input type="text" id="tel" name="tel" required
                       class="mt-1 p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div>
                <label for="codeAnalyse" class="block text-sm font-medium text-gray-600">Code Analyse:</label>
                <input type="text" id="codeAnalyse" name="codeAnalyse" required
                       class="mt-1 p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div>
                <label for="photoGenereAnalyse" class="block text-sm font-medium text-gray-600">Photo Genere Analyse:</label>
                <input type="text" id="photoGenereAnalyse" name="photoGenereAnalyse" required
                       class="mt-1 p-2 border border-gray-300 rounded-md w-full">
            </div>

            <button type="submit"
                    class="bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600 focus:outline-none focus:ring focus:border-blue-300">
                Add Donnateur
            </button>
        </form>

    </div>

</body>
</html>
