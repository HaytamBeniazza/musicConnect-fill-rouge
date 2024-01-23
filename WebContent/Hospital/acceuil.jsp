<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
	<h1>Hospital ! welcome ${sessionScope.user.nom}</h1>


	

<c:forEach items="${institutions}" var="institution">
<div class="max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow">
    <a href="#">
        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-black">${institution.nom}</h5>
    </a>
    <p class="mb-3 font-normal text-gray-700 dark:text-black">Telephone: ${institution.tel}</p>
    <p class="mb-3 font-normal text-gray-700 dark:text-black">Adresse: ${institution.adresse}</p>
    <p class="mb-3 font-normal text-gray-700 dark:text-black">Email: ${institution.email}</p>
    <a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-black bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
        Read more
        <svg class="rtl:rotate-180 w-3.5 h-3.5 ms-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
        </svg>
    </a>
</div>
</c:forEach>



</body>
</html>