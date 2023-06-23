<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Atualizar informações do cliente: ${ name }</h1>

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
			<li><input type="hidden" name="id" value="${id}" /></li>
			<li>Nome: <input type="text" name="name" value="${ name }" /></li>
			<li>Cidade: <input type="text" name="city" value="${ city }" /></li>
			<li>Contato: <input type="text" name="phone" value="${ phone }" /></li>
		</ul>
		<input type="submit" value="Salvar alterações">
	</form>
</body>
</html>