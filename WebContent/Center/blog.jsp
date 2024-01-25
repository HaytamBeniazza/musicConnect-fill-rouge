<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation - Blog</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="css/blog.css">
    
</head>
<body>
    <jsp:include page="../ressources/navbar.jsp" />

    <div class="blog-container">
        <h2>Donnattion de sang - Blog</h2>
        <h4 style="color:green;" >${param.success}</h4>
        <a href="blogForm.bce" class="add-blog-link">Ajouter un Blog</a>
        <div class="blog-cards">
            <c:forEach var="blog" items="${blogs}">
                <div class="blog-card">
                    <img src="https://img.freepik.com/free-photo/toy-bricks-table_144627-48267.jpg?w=740&t=st=1706025210~exp=1706025810~hmac=5bab7bcd188721ddbde3a95176083b7f955d6233ba06117939c403e67f1c3216" alt="${blog.titreBlog}" class="blog-image">
                    <h3>${blog.titreBlog}</h3>
                    <p>${blog.description}</p>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
