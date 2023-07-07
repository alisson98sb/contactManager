<nav class="navbar navbar-expand-lg bg-body-tertiary"
	data-bs-theme="dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="/alissonDados">DigiCon</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-between" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/alissonDados">Home</a></li>
				<li class="nav-item">
					<form action="/alissonDados/listagem" method="get">
						<a class="nav-link" href="/alissonDados/servlet?action=ActionList">Listagem</a>
					</form>
				</li>
				<li class="nav-item">
					<form>
						<a class="nav-link" href="/alissonDados/servlet?action=ActionCadastroForm">Adicionar</a>
					</form>
				</li>
			</ul>
			<%
				HttpSession sessao = request.getSession();	
				boolean usuarioLogado = sessao.getAttribute("usuarioLogado") != null;
				
				if(usuarioLogado){
			%>
			
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="/alissonDados/servlet?action=Logout">Sair</a>
				</li>
			</ul>
			<%} %>
		</div>
	</div>
</nav>