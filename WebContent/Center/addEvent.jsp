<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Event</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">

    <jsp:include page="../ressources/navbar.jsp" />

    <div class="container mx-auto mt-8 p-8 bg-white shadow-lg max-w-md">
        <h2 class="text-3xl font-semibold mb-4">Add Event</h2>
        <form action="postEvent.ev" method="post" class="space-y-4">
            <div>
                <label for="titre" class="block text-sm font-medium text-gray-600">Event Title:</label>
                <input type="text" id="titre" name="titre" required
                       class="mt-1 p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div>
                <label for="description" class="block text-sm font-medium text-gray-600">Description:</label>
                <textarea id="description" name="description" rows="4" required
                          class="mt-1 p-2 border border-gray-300 rounded-md w-full"></textarea>
            </div>

            <div>
                <label for="date" class="block text-sm font-medium text-gray-600">Date:</label>
                <input type="date" id="date" name="date" required
                       class="mt-1 p-2 border border-gray-300 rounded-md w-full">
            </div>

            <div>
                <label for="adresse" class="block text-sm font-medium text-gray-600">Location:</label>
                <input type="text" id="adresse" name="adresse" required
                       class="mt-1 p-2 border border-gray-300 rounded-md w-full">
            </div>

            <button type="submit"
                    class="bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600 focus:outline-none focus:ring focus:border-blue-300">
                Add Event
            </button>
        </form>
    </div>

</body>
</html>
