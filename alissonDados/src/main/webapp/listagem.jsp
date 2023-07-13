<%@page import="utils.mascara.Mascaras"%>
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
		<h1 class="text-light " style="margin: 3rem 0;">Listagem de
			clientes</h1>

		<div class="table w-75" style="max-height: 70vh; overflow: auto;">
			<% 
				List<Cliente> clientesList = (List<Cliente>) request.getAttribute("clientes");
				if(clientesList.isEmpty()) {		
			%>
				<h1 class="fs-3 text-light text-center"> Simplifique sua vida digital e aproveite ao máximo suas redes sociais com nosso sistema de gerenciamento de contatos com links diretos para as principais plataformas!</h1>			
			<%
				} else {
			%>
			<table class="table table-dark table-striped">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Nome</th>
						<th scope="col">Cidade</th>
						<th scope="col">Numero</th>
						<th scope="col">WhatsApp</th>
						<th scope="col">Instagram</th>
						<th scope="col">Editar</th>
						<th scope="col">Excluir</th>
					</tr>
				</thead>

				<tbody>
					<%
					for (Cliente cliente : clientesList) {
					%>
					<tr>
						<th scope="row"><%=cliente.getId()%></th>
						<td><%=cliente.getName()%></td>
						<td><%=cliente.getCity()%></td>
						<td><%=Mascaras.mascPhone("(##) #####-####", cliente.getPhone())%></td>
						<td>
							<div style="margin-left: 20px;">
								<a href="https://wa.me/55<%=cliente.getPhone()%>"
									target="_blank"> <!-- <a href="https://www.example.com" target="_blank">Link</a> -->
									<svg style="color: #62f162;" xmlns="http://www.w3.org/2000/svg"
										width="16" height="16" fill="currentColor"
										class="bi bi-whatsapp" viewBox="0 0 16 16">
											  <path
											d="M13.601 2.326A7.854 7.854 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.933 7.933 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.898 7.898 0 0 0 13.6 2.326zM7.994 14.521a6.573 6.573 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.557 6.557 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592zm3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.729.729 0 0 0-.529.247c-.182.198-.691.677-.691 1.654 0 .977.71 1.916.81 2.049.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232z" />
											</svg>
								</a>
							</div>
						</td>
						<td>
							<%
							if (cliente.getInstagram() != null) {
							%>
							<div style="margin-left: 20px;">
								<a
									href="https://www.instagram.com/<%=cliente.getInstagram()%>"
									target="_blank"> <!-- <a href="https://www.example.com" target="_blank">Link</a> -->
									<svg style="color: #b7177c;"
										http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-instagram"
										viewBox="0 0 16 16">
											  <path
											d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
											</svg>
								</a>
							</div> <%
 } else {
 %>

							<div style="margin-left: 18px;">
								<a href="/alissonDados/cliente?id=<%=cliente.getId()%>&update=1">
									<svg style="color: white;"
										http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
										  <path fill-rule="evenodd"
											d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z" />
										</svg>
								</a>
							</div> <%
 }
 %>
						</td>
						<td>
							<div style="margin-left: 18px;">
								<a
									href="/alissonDados/servlet?action=ActionUpdateClienteForm&id=<%=cliente.getId()%>">
									<svg style="color: cyan;" xmlns="http://www.w3.org/2000/svg"
										width="16" height="16" fill="currentColor"
										class="bi bi-pencil-square" viewBox="0 0 16 16">
			  								<path
											d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
			  								<path fill-rule="evenodd"
											d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" /></svg>
								</a>
							</div>
						</td>
						<td>
							<div style="margin-left: 18px;">
								<a
									href="/alissonDados/servlet?action=ActionDelete&id=<%=cliente.getId()%>">
									<svg style="color: red;" xmlns="http://www.w3.org/2000/svg"
										width="16" height="16" fill="currentColor"
										class="bi bi-trash3" viewBox="0 0 16 16">
				  							<path
											d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z" />
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
		
			<% } %>
		</div>
		<div class="buttons d-flex">
			<form action="/alissonDados">
				<button type="submit"
					class="btn btn-dark m-2 border border-secondary">Início</button>
			</form>
			<form action="/alissonDados/servlet?action=ActionCadastroForm"
				method="post">
				<button type="submit"
					class="btn btn-dark m-2 border border-secondary">Adicionar
					novo cliente</button>
			</form>
			<form action="/alissonDados/servlet?action=ActionImport"
				method="post">
				<button type="submit"
					class="btn btn-dark m-2 border border-secondary">Importar TXT</button>
			</form>
		</div>

	</div>
</body>
</html>