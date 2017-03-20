<%@page import="br.com.csge.model.Usuario" %>
<!DOCTYPEhtml>
<html lang="pt-br">
	<head>
		<title>Escola Podium</title>
		<metaname="viewport" content="width=device-width, initial-scale=1">
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--Bootstrap-->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/style.css">
	<!--[ifltIE9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
				<div class="container">
				<div class="row navbar">
					<div class="col-md-1">
						<div class="area_logo pull-left">
							<a href="#" title="Escola Podium">
								<img src="img/logo_80px.png" class="logo" alt="Escola Podium">
							</a>
						</div>
					</div>
					<div class="col-md-10">
						<ul class="nav navbar-nav">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Funcionamento <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="#">Vizualizar Calend�rio Escolar</a></li>
										<li><a href="#">Vizualizar Matriz Curricular</a></li>
										<li><a href="#">Fechar Trimestre</a></li>
										<li><a href="#">Abrir Per�odo Letivo</a></li>
										<li><a href="#">Fechar Per�odo Letivo</a></li>
										<li><a href="#">Abrir Turma</a></li>
									</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Aluno <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="AlunoCtrl?acao=cadastrar">Cadastrar</a></li>
										<li><a href="#">Alterar/Excluir</a></li>
										<li><a href="#">Pesquisar</a></li>
										<li><a href="#">Ficha de Sa�de</a></li>
										<li><a href="#">Recado</a></li>
									</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Matricula <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="#">Incluir</a></li>
										<li><a href="#">Alterar/Exluir</a></li>
										<li><a href="#">Sem Freuqencia</a></li>
										<li><a href="#">Movimenta��o</a></li>
									</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Mensalidade <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="#">Boleto</a></li>
										<li><a href="#">Lan�ar Pagamento</a></li>
										<li><a href="#">Ver Pend�ncias</a></li>
									</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Registro de Classe <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="#">Vizualizar Frequ�ncia</a></li>
										<li><a href="#">Avalia��o</a></li>
									</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Funcion�rio <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="#">Vizualizar Cadastro</a></li>
										<li><a href="#">Gerar Contracheque</a></li>
									</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Relat�rio <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="#">Mapa de Avalia��o</a></li>
										<li><a href="#">Percentual de Frequencia</a></li>
										<li><a href="#">Imprimir Registro de Classe</a></li>
										<li><a href="#">Relat�rio de Pagamentos</a></li>
									</ul>
								
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Documentos <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="#">Ficha de Matr�cula</a></li>
										<li><a href="#">Ficha de Sa�de</a></li>
										<li><a href="#">Declara��o de Matricular</a></li>
										<li><a href="#">Declara��o de Transferencia</a></li>
										<li><a href="#">Ficha Individual</a></li>
										<li><a href="#">Boletim</a></li>
										<li><a href="#">Historico Escolar</a></li>
									</ul>
							</li>
						</ul>
					</div>
					
					<div class="col-md-1">
						<div class="user">
								<ul class="nav navbar-nav">
									<li class="user dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span style="font-size: 17px" class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
											<ul class="dropdown-menu dropdown-menu-left">
												<li><a>
												<% 
												Usuario u = (Usuario)request.getSession().getAttribute("uAutenticado");
												out.print(u.getNome());
												%>								
												</a></li>
												<li role="separator" class="divider"></li>
												<li><a href="login">Sair</a></li>
											</ul>
									</li>
								</ul>	
						</div>
					</div>
				</div>
			</div>
				<!--Javascript-->
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	</body>
</html>