<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ana Sayfa</title>
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
        p {
            font-size: 18px;
        }
        a {
            background-color: #007bff; 
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: 600;
            margin-top: 20px;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Hoş geldiniz!</h1>
    <p>Bu sizin ana sayfanız.</p>
    <a href="/empform">Yeni Çalışan Ekle</a>
    <a href="/viewemp">Çalışanları Görüntüle</a>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
