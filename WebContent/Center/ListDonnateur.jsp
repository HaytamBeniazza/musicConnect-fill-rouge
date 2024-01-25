<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Donnateurs List</title>
        <link rel="stylesheet" href="css/navbar.css">
    
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

	
	<%@ include file="navbar.jsp" %>
	
    <h2>Donnateurs List</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Prenom</th>
                <th>CIN</th>
                <th>Tel</th>
                <th>Code Analyse</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <!-- Iterate over your list of Donnateurs and populate the table -->
            <c:forEach var="donnateur" items="${donnateurs}">
                <tr>
                    <td>${donnateur.idDonnateur}</td>
                    <td>${donnateur.nom}</td>
                    <td>${donnateur.prenom}</td>
                    <td>${donnateur.cin}</td>
                    <td>${donnateur.tel}</td>
                    <td>${donnateur.codeAnalyse}</td>
                    <td>
                        <!-- Add links or buttons for actions (e.g., edit, delete) -->
                        <a href="editDonnateur.do?id=${donnateur.idDonnateur}">Edit</a>
                        <a href="deleteDonnateur.do?id=${donnateur.idDonnateur}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
