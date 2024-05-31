<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Atualizar Animal</title>

</head>
<body>
    <h1>Atualizar Animal</h1>
    <form action="atualizar-animal" method="post">
        <input type="hidden" name="id" value="${animal.id}">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="${animal.nome}" required>
        <br>
        <label for="especie">Espécie:</label>
        <input type="text" id="especie" name="especie" value="${animal.especie}" required>
        <br>
        <input type="submit" value="Atualizar">
    </form>

</body>
</html>
