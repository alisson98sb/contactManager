<%@page import="utils.mascara.Mascaras"%>
<%@page import="br.com.base.constructor.Cliente"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
			 	 System.out.println("teste");
				
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
		<form action="/alissonDados/servlet?action=ActionSaveImportDb"  method="post">
			  <button type="submit" class="btn btn-dark m-2 border border-secondary">Importar</button>
			  <div>
				  <input type="text" height="8" width="50" id="preview" name="contatos" value="<%=preview %>" hidden>
			  </div>
		</form>
	</div>
</body>
</html>