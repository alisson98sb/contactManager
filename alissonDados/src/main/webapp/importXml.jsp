<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="templates/templateHeader.jsp"></jsp:include>
</head>
<script>

	function ReadFile(inputt){
		const preview = document.getElementById('preview');
		const input = document.getElementById('arquivo');
		
		let file = input.files[0]; 
        let fileReader = new FileReader(); 
	        
	        fileReader.readAsText(file); 
	        fileReader.onload = function() {
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
	
		<form action="/alissonDados/servlet?action=ShowImportXml"  method="post">
		  <input type="file" id="arquivo" name="arquivo" onchange="ReadFile(this)" style="background: transparent;color: white;" required>
		  <button type="submit" class="btn btn-dark m-2 border border-secondary">Analisar importação</button>
		  <div>
			  <input type="text" height="8" width="50" id="preview" name="contatos" hidden>
		  </div>
		</form>
	
	</div>
</body>
</html>