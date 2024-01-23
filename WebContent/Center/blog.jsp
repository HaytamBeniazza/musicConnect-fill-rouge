<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation - Blog</title>
    <link rel="stylesheet" href="css/blog.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>
    <jsp:include page="navbar.jsp"></jsp:include>

    <div class="blog-container">
        <h2>Blood Donation Blog</h2>
        <div class="blog-cards">
            <c:forEach var="blog" items="${blogs}">
                <div class="blog-card">
                    <img src="${blog.imageBlog}" alt="${blog.titreBlog}" class="blog-image">
                    <h3>${blog.titreBlog}</h3>
                    <p>${blog.description}</p>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
