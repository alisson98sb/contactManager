<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="templates/templateHeader.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://digitalbush.com/wp-content/uploads/2014/10/jquery.maskedinput.js"></script>

</head>

<body class="vh-100 bg-dark">
	<!-- LOGIN -->
	<jsp:include page="templates/nav.jsp"></jsp:include>
	<div class="d-flex justify-content-center align-items-center flex-column h-75 ">

		<h1 class="text-light">Login</h1>
		
		<div class="forms d-flex justify-content-center mt-5">
			<form action="/alissonDados/servlet?action=Login" method="post"
				style="text-align: end;">
				<div class="row">
					<div class="col">
						<div class="input-group m-3">
							<span class="input-group-text" id="inputGroup-sizing-default">Usuário:</span>
							<input type="text" class="form-control  user" pattern=".{5,15}" maxlength="15" title="Nome de usuário inválido"  name="user"
								aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" required>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
	
						<div class="input-group m-3">
							<span class="input-group-text" id="inputGroup-sizing-default">Senha:</span>
							<input type="password" class="form-control" name="password"
								aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" maxlength="15">
						</div>
					</div>
				</div>
	
				<a href="/alissonDados/servlet?action=CadastroUserForm" style="text-decoration: none; color: currentcolor;">
					<button type="button" class="btn btn-outline-secondary m-2" >
						Cadastre-se
					</button>					
				</a>
				<button type="submit" class="btn btn-outline-secondary m-2">Entrar</button>
			</form>
		</div>
	</div>
</body>
</html>