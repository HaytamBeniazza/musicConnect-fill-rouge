<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog Detail</title>
    <link rel="stylesheet" href="css/blogDetail.css">
    <link rel="stylesheet" href="css/navbar.css">
</head>
<body>

    <jsp:include page="../ressources/navbar.jsp" />
	<h1>Detail du Blog numero : ${param.id}</h1>
    <div class="blog-detail-container">
        <h2>${blog.titreBlog}</h2>
		<h3>Centre : ${blog.institution.nom}</h3>
        <img src="https://img.freepik.com/free-photo/toy-bricks-table_144627-48267.jpg?w=740&t=st=1706025210~exp=1706025810~hmac=5bab7bcd188721ddbde3a95176083b7f955d6233ba06117939c403e67f1c3216" alt="${blog.titreBlog}" class="blog-detail-image">
        <p>${blog.description}</p>
    </div>

</body>
</html>
