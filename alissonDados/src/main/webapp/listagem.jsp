<%@page import="br.com.base.constructor.Cliente"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Listagem de clientes</h1>
	<div>
		<form action="/alissonDados">
			<input type="submit" value="Inicio" />
		</form>
		<form action="/alissonDados/cadastro.jsp">
			<input type="submit" value="Cadastrar novo cliente" />
		</form>
	</div>
	<ul>
		<%
		List<Cliente> clientesList = (List<Cliente>) request.getAttribute("clientes");
		for (Cliente cliente : clientesList) {
		%>
		<li>Nome: <%=cliente.getName()%>, Cidade: <%=cliente.getCity()%>,
			Numero: <%=cliente.getPhone()%> <a
			href="/alissonDados/cliente?id=<%=cliente.getId()%>&update=1">Editar</a> <a
			href="/alissonDados/delete?id=<%=cliente.getId()%>">Excluir</a>
		</li>
		<%
		}
		%>
	</ul>
</body>
</html>