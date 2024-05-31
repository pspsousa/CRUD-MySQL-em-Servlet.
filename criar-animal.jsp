<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Animal</title>

</head>
<body>
    <h1>Cadastrar Animal</h1>
    <form action="criar-animal" method="post">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" required>
        <br>
        <label for="especie">Espécie:</label>
        <input type="text" id="especie" name="especie" required>
        <br>
        <input type="submit" value="Cadastrar">
    </form>

</body>
</html>
