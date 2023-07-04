<%@page import="utils.mascara.Mascaras"%>
<%@page import="br.com.base.constructor.Cliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body  class="vh-100 bg-dark">
	<%
		Cliente cliente = (Cliente)request.getAttribute("cliente");
	%>
	<jsp:include page="templates/nav.jsp"></jsp:include>
	<div
		class="d-flex justify-content-center align-items-center flex-column h-50">
	<h1 class="text-light ">Informações do cliente: <%= cliente.getName() %></h1>


<div class="table w-75 mt-5">
			<table class="table table-dark table-striped">
				<thead>
					<tr>
						<th scope="col">Nome</th>
						<th scope="col">Cidade</th>
						<th scope="col">Numero</th>
						<th scope="col">Instagram</th>
					</tr>
				</thead>
				<tbody>

					<tr>
						<td><%= cliente.getName() %></td>
 						<td><%= cliente.getCity() %></td>
						<td><%=Mascaras.mascPhone("(##) #####-####", cliente.getPhone())%></td>
						<td><%= cliente.getInstagram() %></td> 
					</tr>
				</tbody>
			</table>
		</div>
		<div class="buttons d-flex">
			<form action="/alissonDados">
				<button type="submit"
					class="btn btn-dark m-2 border border-secondary">Início</button>
			</form>
			<form action="/alissonDados/cadastro.jsp">
				<button type="submit"
					class="btn btn-dark m-2 border border-secondary">Adicionar
					novo cliente</button>
			</form>
			<form action="/alissonDados/servlet?action=list" method="post">
				<button type="submit"
					class="btn btn-dark m-2 border border-secondary">Exibir clientes</button>
			</form>
		</div>

	</div>
</body>
</html>