<%@page import="utils.mascara.Mascaras"%>
<%@page import="br.com.base.constructor.Cliente"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	/* personalizar a barra em geral, aqui estou definindo 10px de largura para a barra vertical
e 10px de altura para a barra horizontal */
	::-webkit-scrollbar {
	width:10px;
	height: 10px;
	}
	 
	/* aqui é para personalizar o fundo da barra, neste caso estou colocando um fundo cinza escuro*/
	::-webkit-scrollbar-track {
	background:#333;
	}

	 
	/* aqui é a alça da barra, que demonstra a altura que você está na página
	estou colocando uma cor azul clara nela*/
	::-webkit-scrollbar-thumb {
	background: #2e9dd8;
	background: -moz-linear-gradient(top, #333333 0%, #3f69b1 25%, #2e9dd8 50%, #3f69b1 76%, #333333 100%);
	background: -webkit-linear-gradient(top, #333333 0%,#3f69b1 25%,#2e9dd8 50%,#3f69b1 76%,#333333 100%);
	background: linear-gradient(to bottom, #333333 0%,#3f69b1 25%,#2e9dd8 50%,#3f69b1 76%,#333333 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#333333', endColorstr='#333333',GradientType=0 );

	}
		/* Fixar o titulo da tabela no momento do scroll */
	table {
		position: relative;
	}
	
	thead > tr > th {
		position: sticky;
		top: -5px;
	}
	
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta charset="UTF-8">
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://digitalbush.com/wp-content/uploads/2014/10/jquery.maskedinput.js"></script>
 -->
<title>Insert title here</title>
</head>
<script>


</script>

<body class="vh-100 bg-dark">

	<jsp:include page="templates/nav.jsp"></jsp:include>
	<div class="d-flex justify-content-center align-items-center flex-column h-75 ">
		
		<h1>Show imported</h1>
		
		<div class="table w-75" style="max-height: 70vh; overflow: auto;">
		
			<% 
				Object preview = request.getAttribute("preview");				
				List<Cliente> clientesList = (List<Cliente>) request.getAttribute("clientes");
			%>
			<table class="table table-dark table-striped">
				<thead>
					<tr>
						<th scope="col">Nome</th>
						<th scope="col">Cidade</th>
						<th scope="col">Numero</th>
					</tr>
				</thead>

				<tbody>
					<%
					for (Cliente cliente : clientesList) {
					%>
					<tr>
						<td><%=cliente.getName()%></td>
						<td><%=cliente.getCity()%></td>
						<td><%=Mascaras.mascPhone("(##) #####-####", cliente.getPhone())%></td>
					</tr>
					<%
					}
					%>
				</tbody>

			</table>
		</div>
		
		<div class="d-flex">
			<form action="/alissonDados/servlet?action=ActionImport"  method="post">
				  <button type="submit" class="btn btn-dark m-2 border border-secondary">Voltar</button>
			</form>
			
			<form action="/alissonDados/servlet?action=ActionSaveImportDb"  method="post">
				  <button type="submit" class="btn btn-dark m-2 border border-secondary">Importar</button>
				  <div>
					  <input type="text" height="8" width="50" id="preview" name="contatos" value="<%=preview %>" hidden>
				  </div>
			</form>
		</div>
		
	</div>
</body>
</html>