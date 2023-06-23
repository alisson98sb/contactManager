<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Portal de clientes</h1>

	<div>
		<form action="/alissonDados/listagem" method="get">
			<input type="submit" value="Exibir lista de clientes">
		</form>
		<form action="/alissonDados/cadastro.jsp">
			<input type="submit" value="Adicionar novo cliente">
		</form>
		<form action="/alissonDados/" method="get">
			<input type="submit" value="Exibir lista de clientes">
		</form>
		<form action="/alissonDados/listagem" method="get">
			<input type="submit" value="Exibir lista de clientes">
		</form>
	</div>
</body>
</html>