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

	<jsp:include page="../ressources/navbar.jsp" />
<div class="py-16 bg-gray-50 overflow-hidden">
    <div class="container m-auto px-6 space-y-8 text-gray-500 md:px-12">
        <div>
           <%--  <span class="text-gray-600 text-lg font-semibold">Welcome ${sessionScope.user.nom}</span> --%>
            <h2 class="mt-4 text-2xl text-gray-900 font-bold md:text-4xl">PUT A TITLE <br class="lg:block" hidden> HERE</h2>
        </div>
        <div class="mt-16 grid border divide-x divide-y rounded-xl overflow-hidden sm:grid-cols-2 lg:divide-y-0 lg:grid-cols-3 xl:grid-cols-4">
        <c:forEach items="${answers}" var="answer">
            <div class="relative group bg-white transition hover:z-[1] hover:shadow-2xl">
                <div class="relative p-8 space-y-8">
                    <img src="https://cdn.discordapp.com/attachments/1199392158193561610/1199392488268501143/735a97d8-531f-43fb-8b08-b20593143dd2.jpg?ex=65c2604c&is=65afeb4c&hm=a63c6c1d42da962327ece89153efdb1713a33e847acad86a15c32e0fa2dd76e3&" class="w-10" width="512" height="512" alt="burger illustration">
                    
                    <div class="space-y-2">
                        <h5 class="text-xl text-gray-800 font-medium transition group-hover:text-yellow-600">Demander: ${answer.getNbrPochettesDemandes()}</h5>
                        <p class="text-sm text-gray-600">Confirmer: ${answer.getNbrPochettesConfirmes()}</p>
                        <p class="text-sm text-gray-600">Repondu: ${answer.getAnswered()}</p>
                    </div>
                </div>
            </div>
            </c:forEach>
            
        </div>
    </div>
</div>
</body>
</html>