<%@page import="br.com.base.constructor.Cliente"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/listagem.css"
	title="style">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="vh-100 bg-dark">
	<jsp:include page="templates/nav.jsp"></jsp:include>
	<div
		class="d-flex justify-content-center align-items-center flex-column h-75">
		<h1 class="text-light ">Listagem de clientes</h1>

		<div class="table w-75 mt-10">
			<table class="table table-dark table-striped">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Nome</th>
						<th scope="col">Cidade</th>
						<th scope="col">Numero</th>
						<th scope="col">Editar</th>
						<th scope="col">Excluir</th>
					</tr>
				</thead>
				<tbody>
					<%
					List<Cliente> clientesList = (List<Cliente>) request.getAttribute("clientes");
					for (Cliente cliente : clientesList) {
					%>
					<tr>
						<th scope="row"><%=cliente.getId()%></th>
						<td><%=cliente.getName()%></td>
						<td><%=cliente.getCity()%></td>
						<td><%=cliente.getPhone()%></td>
						<td>
							<div style="margin-left: 16px;">
								<a href="/alissonDados/cliente?id=<%=cliente.getId()%>&update=1">
									<svg style="color: cyan; " xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
	  								<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
	  								<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/></svg>
								</a>
							</div>
						</td>
						<td>
							<div style="margin-left: 16px;">
								<a href="/alissonDados/delete?id=<%=cliente.getId()%>">
									<svg style="color: red; "  xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
		  							<path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
									</svg>
								</a>
							</div>
						</td>
					</tr>
					<%
					}
					%>
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
		</div>

	</div>
</body>
</html>