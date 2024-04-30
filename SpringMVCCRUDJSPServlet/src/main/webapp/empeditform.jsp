<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Çalışan Düzenle</title>
    <link href="https://stackpath.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #001f3f; 
            font-family: 'Poppins', sans-serif;
            color: #fff; 
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh;
            margin: 0;
            padding: 0;
        }
        h1 {
            font-size: 36px;
            font-weight: 600;
            margin-bottom: 20px;
        }
        form {
            width: 50%;
            margin-top: 20px;
        }
        input[type="text"], input[type="submit"] {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1>Çalışan Düzenle</h1>
    <form action="/editsave" method="post">
        <input type="hidden" name="id" value="<%= request.getAttribute("id") %>">
        <label for="name">İsim:</label>
        <input type="text" id="name" name="name" value="<%= request.getAttribute("name") %>" required><br>
        <label for="salary">Maaş:</label>
        <input type="text" id="salary" name="salary" value="<%= request.getAttribute("salary") %>" required><br>
        <label for="designation">Ünvan:</label>
        <input type="text" id="designation" name="designation" value="<%= request.getAttribute("designation") %>" required><br>
        <input type="submit" value="Kaydet">
    </form>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
