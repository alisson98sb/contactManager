<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
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
<title>Insert title here</title>
</head>
<body class="vh-100 bg-dark">
	<jsp:include page="templates/nav.jsp"></jsp:include>
	<div class="d-flex justify-content-center align-items-center flex-column h-50 ">
		<h1 class="text-light">Atualizar informações</h1>

		<div class="forms d-flex justify-content-center mt-5">
			<form action="/alissonDados/update" method="post"
				style="text-align: end;">
				<div class="row">
					<div class="col">
						<div class="input-group m-3">
							<span class="input-group-text " id="inputGroup-sizing-default">Nome:</span>
							<input type="text" class="form-control" name="name"
								value="${ name }" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default">
						</div>
					</div>
					<div class="col">
						<div class="input-group m-3">
							<span class="input-group-text" id="inputGroup-sizing-default">Cidade:</span>
							<input type="text" class="form-control" name="city"
								value="${ city }" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">

						<div class="input-group m-3">
							<span class="input-group-text" id="inputGroup-sizing-default">Contato:</span>
							<input type="text" class="form-control" name="phone"
								value="${ phone }" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default">
						</div>
					</div>
				</div>
				<input type="hidden" name="id" value="${id}" />



				<button type="submit" class="btn btn-outline-secondary m-2">Salvar</button>

			</form>
		</div>
	</div>

</body>
</html>
