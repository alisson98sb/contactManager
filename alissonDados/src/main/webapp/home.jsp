<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- <link rel="stylesheet" href="/includes/estilo.css" >
 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta charset="UTF-8">
<title>DigiCon</title>
</head>
<body class="vh-100 bg-dark">
	<jsp:include page="templates/nav.jsp"></jsp:include>
<div class="main d-flex justify-content-center h-50 align-items-center flex-column">
	<h1 class="text-light" style="margin: 3rem 0">Portal de clientes</h1>

	<div class="main" id="main">
		<form action="/alissonDados/servlet?action=ActionList" method="post">
			<button type="submit" class="btn btn-dark m-2 border border-secondary">Exibir lista de clientes</button>
		</form>

		<form action="/alissonDados/cadastro.jsp">
			<button type="submit" class="btn btn-dark m-2 border border-secondary">Adicionar novo cliente</button>
		</form>
	</div>
</div>
</body>
</html>