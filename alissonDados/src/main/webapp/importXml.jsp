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

	function ReadFile(inputt){
		const preview = document.getElementById('preview');
		const input = document.getElementById('arquivo');
		
		let file = input.files[0]; 
        let fileReader = new FileReader(); 
	        
	        fileReader.readAsText(file); 
	        fileReader.onload = function() {
	          console.log(fileReader.result);
	          preview.value = fileReader.result
	        }; 
	        fileReader.onerror = function() {
	          alert(fileReader.error);
	        }; 
	}
	
</script>

<body class="vh-100 bg-dark">

	<jsp:include page="templates/nav.jsp"></jsp:include>
	<div class="d-flex justify-content-center align-items-center flex-column h-75 ">
		
		<form action="/alissonDados/servlet?action=ImportXml"  method="post">
		  <input type="file" id="arquivo" name="arquivo" onchange="ReadFile(this)" style="background: transparent;color: white;">
		  <button type="submit" class="btn btn-dark m-2 border border-secondary">Importar</button>
		  <div>
			  <input type="text" height="8" width="50" id="preview" name="contatos" hidden>
		  </div>
		</form>
		
	</div>
</body>
</html>