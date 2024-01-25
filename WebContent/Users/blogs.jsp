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
    <jsp:include page="../ressources/navbar.jsp" />

    <div class="blog-container">
        <h2>Donnattion de sang - Blog</h2>
        <div class="blog-cards">
            <c:forEach var="blog" items="${blogs}">
                <div class="blog-card">
                    <img src="https://img.freepik.com/free-photo/toy-bricks-table_144627-48267.jpg?w=740&t=st=1706025210~exp=1706025810~hmac=5bab7bcd188721ddbde3a95176083b7f955d6233ba06117939c403e67f1c3216" alt="${blog.titreBlog}" class="blog-image">
					<h3>Centre : ${blog.institution.nom}</h3>
                    <h3>${blog.titreBlog}</h3>
					<a href="blogDetail.bce?id=${blog.id}">Voir detail</a>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
