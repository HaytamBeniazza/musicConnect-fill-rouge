<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donnateurs List</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>

<jsp:include page="../ressources/navbar.jsp" />

    <div class="container mx-auto p-8">

        

        <h2 class="text-3xl font-semibold mb-4">Donnateurs List</h2>

        <table class="w-full bg-white border border-gray-300 shadow-lg">
            <thead>
                <tr>
                    <th class="py-2 px-4 border-b">ID</th>
                    <th class="py-2 px-4 border-b">Nom</th>
                    <th class="py-2 px-4 border-b">Prenom</th>
                    <th class="py-2 px-4 border-b">CIN</th>
                    <th class="py-2 px-4 border-b">Tel</th>
                    <th class="py-2 px-4 border-b">Code Analyse</th>
                    <th class="py-2 px-4 border-b">Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterate over your list of Donnateurs and populate the table -->
                <c:forEach var="donnateur" items="${donnateurs}">
                    <tr>
                        <td class="py-2 px-4 border-b">${donnateur.idDonnateur}</td>
                        <td class="py-2 px-4 border-b">${donnateur.nom}</td>
                        <td class="py-2 px-4 border-b">${donnateur.prenom}</td>
                        <td class="py-2 px-4 border-b">${donnateur.cin}</td>
                        <td class="py-2 px-4 border-b">${donnateur.tel}</td>
                        <td class="py-2 px-4 border-b">${donnateur.codeAnalyse}</td>
                        <td class="py-2 px-4 border-b">
                            <!-- Add links or buttons for actions (e.g., edit, delete) -->
                            <a href="editDonnateur.do?id=${donnateur.idDonnateur}" class="text-blue-500 hover:underline mr-2">Edit</a>
                            <a href="deleteDonnateur.do?id=${donnateur.idDonnateur}" class="text-red-500 hover:underline">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </div>

</body>
</html>
