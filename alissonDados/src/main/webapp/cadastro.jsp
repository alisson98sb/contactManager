<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Cadastrar novo cliente</h1>
	<form action="/alissonDados/adicionar" method="post">
		<input type="hidden" name="id" />
		Nome: <input type="text" name="name"/>
		Cidade: <input type="text" name="city" />
		Contato: <input type="text" name="phone" />
		
		<input type="submit" />
	</form>
</body>
</html>