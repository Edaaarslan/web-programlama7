<%@ page import="model.Employee" %>
<%@ page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Çalışanları Görüntüle</title>
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
        table {
            width: 80%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #fff;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #007bff;
        }
        .employee {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1>Çalışanları Görüntüle</h1>
    <% 
        List<Employee> employees = (List<Employee>) request.getAttribute("employees");
        if (employees != null && !employees.isEmpty()) {
    %>
            <table>
                <tr>
                    <th>Ad</th>
                    <th>Soyad</th>
                    <th>Maaş</th>
                    <th>Ünvan</th>
                    <th>İşlemler</th>
                </tr>
    <%
            for (Employee emp : employees) {
    %>
                <tr>
                    <td><%= emp.getName() %></td>
                    <td><%= emp.getSalary() %></td>
                    <td><%= emp.getDesignation() %></td>
                    <td><a href="/edit?id=<%= emp.getId() %>">Düzenle</a> | <a href="/delete?id=<%= emp.getId() %>">Sil</a></td>
                </tr>
    <%
            }
    %>
            </table>
    <%
        } else {
    %>
            <p>Hiç çalışan bulunamadı.</p>
    <%
        }
    %>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
