<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.css" rel="stylesheet" />
</head>
<body>

    <%@ include file="../ressources/navbar.jsp" %>

    <div class="py-16 bg-gray-50 overflow-hidden">
        <div class="container m-auto px-6 space-y-8 text-gray-500 md:px-12">
            <div>
                <%--  <span class="text-gray-600 text-lg font-semibold">Welcome ${sessionScope.user.nom}</span> --%>
                <h3 style="color: red">${error}</h3>
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
                            <form class="space-y-4" action="demande-hopital-comfirmer.in?id=${answer.getIdDemande()}" method="post">
                                <button type="submit" class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Envoyer</button>
                            </form>
                            <button data-modal-target="authentication-modal" data-modal-toggle="authentication-modal" class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" type="button">Demande</button>

                            <!-- Modal -->
                            <div id="authentication-modal" tabindex="-1" aria-hidden="true" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100% - 1rem)] max-h-full">
                                <div class="relative p-4 w-full max-w-md max-h-full">
                                    <div class="relative bg-white rounded-lg shadow">
                                        <div class="flex items-center justify-between p-4 md:p-5 border-b rounded-t">
                                            <h3 class="text-xl font-semibold text-gray-900">Form</h3>
                                            <button type="button" class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center" data-modal-hide="authentication-modal">
                                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                                                </svg>
                                                <span class="sr-only">Close</span>
                                            </button>
                                        </div>
                                        <!-- Modal body -->
                                        <div class="p-4 md:p-5">
                                            <form class="space-y-4" action="demande-hopital-repondu.in?id=${answer.getIdDemande()}" method="post">
                                                <div>
                                                    <label for="nbrConfirmee" class="block mb-2 text-sm font-medium text-gray-900">Nombre de pochette</label>
                                                    <input type="number" name="nbrConfirmee" id="nbrConfirmee" placeholder="Entrer le nombre" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" min="0" required>
                                                </div>
                                                <button type="submit" class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Envoyer</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>

    <!-- External Scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
</body>
</html>
