<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation - Blog</title>
    <link rel="stylesheet" href="css/blogg.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>
    <jsp:include page="navbar.jsp"></jsp:include>

    <div class="blog-container">
        <h2>Donnattion de sang - Pochettes de sang</h2>
        <h4 style="color:green;" >${param.success}</h4>
        <div class="blog-cards">
            <c:forEach var="p" items="${pochettes}">
                <div class="blog-card">
                    <a href="singlEvent.ev?id=${p.evenement.idEvent}" ><h2>Evenement : ${p.evenement.titre}</h3></a>
                    <h3>Groupe Sang : ${p.groupeSang}</h3>
                    <p>Quantite :  ${p.qte}</p>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
