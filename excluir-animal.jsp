<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Excluir Animal</title>

</head>
<body>
    <h1>Excluir Animal</h1>
    <form action="excluir-animal" method="post">
        <input type="hidden" name="id" value="${animal.id}">
        <p>Você tem certeza que deseja excluir o animal "${animal.nome}"?</p>
        <input type="submit" value="Excluir">
    </form>

</body>
</html>
