<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Pochette</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">

    <jsp:include page="../ressources/navbar.jsp" />

    <div class="container mx-auto mt-8 p-8 bg-white shadow-lg max-w-md">

        <h2 class="text-3xl font-semibold mb-4">Add Pochette</h2>

        <form action="postPochette.pc" method="post" class="space-y-4">
            <!-- Hidden input for the event ID -->
            <input type="hidden" name="eventId" value="${param.id}">

            <div>
                <label for="groupeSang" class="block text-sm font-medium text-gray-600">Groupe Sang:</label>
                <input type="text" id="groupeSang" name="groupeSang" required
                       class="mt-1 p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div>
                <label for="qte" class="block text-sm font-medium text-gray-600">Quantity:</label>
                <input type="number" id="qte" name="qte" required
                       class="mt-1 p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div>
                <label for="donnateur" class="block text-sm font-medium text-gray-600">Select Donnateur:</label>
                <select id="donnateur" name="donnateurId"
                        class="mt-1 p-2 border border-gray-300 rounded-md w-full">
                    <c:forEach var="donnateur" items="${donnateurs}">
                        <option value="${donnateur.idDonnateur}">${donnateur.nom} ${donnateur.prenom}</option>
                    </c:forEach>
                </select>
            </div>

            <button type="submit"
                    class="bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600 focus:outline-none focus:ring focus:border-blue-300">
                Add Pochette
            </button>

            <a href="addDonnateur.jsp"
               class="block text-blue-500 hover:underline text-sm mt-2">Donnateur not found</a>
        </form>

    </div>

</body>
</html>
