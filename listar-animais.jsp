<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Animais</title>
</head>
<body>
    <h1>Lista de Animais</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Espécie</th>
        </tr>
        <c:forEach items="${animais}" var="animal">
            <tr>
                <td>${animal.id}</td>
                <td>${animal.nome}</td>
                <td>${animal.especie}</td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
