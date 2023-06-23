<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Informações do cliente: ${ name }</h1>

	<div>
		<form action="/alissonDados">
			<input type="submit" value="Inicio" />
		</form>
		<form action="/alissonDados/listagem">
			<input type="submit" value="Exibir clientes" />
		</form>
		<form action="/alissonDados/cadastro.jsp">
			<input type="submit" value="Cadastrar novo cliente" />
		</form>
	</div>

	<form action="/alissonDados/update" method="post">
		<ul> 
			<li>${ name }</li>
			<li>${ city }</li>
			<li>${ phone }</li>
		</ul>
		<input type="submit" value="Salvar alterações">
	</form>
</body>
</html>