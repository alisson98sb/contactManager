<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="templates/templateHeader.jsp"></jsp:include>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://digitalbush.com/wp-content/uploads/2014/10/jquery.maskedinput.js"></script>

</head>

<script >
	function TestaSenha() {
		 console.log("OK")
		let value = event.target.value;
		 if (!value) return ""
		  value = value.replace(/\D/g,'')
		  value = value.replace(/(\d{2})(\d)/,"($1) $2")
		  value = value.replace(/(\d)(\d{4})$/,"$1-$2")
		  event.target.value = value;	
	}
</script>


<body class="vh-100 bg-dark">

	<jsp:include page="templates/nav.jsp"></jsp:include>
	<div class="d-flex justify-content-center align-items-center flex-column h-75 ">

		<h1 class="text-light">Cadastrar novo cliente</h1>
		
		<div class="forms d-flex justify-content-center mt-5">
			<form action="/alissonDados/servlet?action=ActionShowCreatedInfo" method="post"
				style="text-align: end;">
				<div class="row">
					<div class="col">
						<div class="input-group m-3">
							<span class="input-group-text " id="inputGroup-sizing-default">Nome Completo:</span>
							<input type="text" class="form-control" name="name"
								aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" pattern=".{7,50}" title="nome + sobrenome (de 7 a 50 caracteres)" required>
						</div>
					</div>
					<div class="col">
						<div class="input-group m-3">
							<span class="input-group-text" id="inputGroup-sizing-default">Cidade:</span>
							<input type="text" class="form-control" name="city"
								aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" pattern=".{4,30}" required>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="input-group m-3">
							<span class="input-group-text" id="inputGroup-sizing-default">Contato:</span>
							<input type="text" class="form-control  phone" pattern=".{15,15}" maxlength="15" title="(99) 9 9999-9999"  name="phone"
								aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" onkeyup="TestaSenha(this)" required>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
	
						<div class="input-group m-3">
							<span class="input-group-text" id="inputGroup-sizing-default">Instagram:</span>
							<input type="text" class="form-control" name="insta"
								aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" maxlength="15">
						</div>
					</div>
				</div>
	
	
	
				<button type="submit" class="btn btn-outline-secondary m-2">Salvar</button>
	
			</form>
		</div>
	</div>
</body>
</html>