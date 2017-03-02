<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=deveice-width, inicial=scale=1.0" >
	<!--Bootstrap-->
	<link rel="stylesheet" href="css/bootstrap.min.css" media="screen">
	<link rel="stylesheet" href="css/style.css">
	
	<title>Comenius - Sistema de Gestão Escolar</title>
	
</head>
<body>
	<div class="fluid-container">
		<div class="login-container login">
			<div>
				<jsp:include page = "cabecalho.jsp" />
			</div>
            <div class="row">
            	<form class="form-login" action="login" method="POST">
            		<div class="col-md-4"></div>
  					<div class="col-md-4">  
                		<span id="email" class="email"></span>
               			<input type="email" id="inputEmail" name="inputEmail" class="form-control" placeholder="Email" required autofocus>
                		<br>
                		<input type="password" id="inputPassword" name="inputPassword"class="form-control" placeholder="Senha" required>
                		<br>
                		<div id="remember" class="checkbox">
                    		<label>
                        		<input type="checkbox" value="remember-me"> Mantenha-me conectado.
                    		</label>
                		</div>
                		<br>                	
                		<div class="row">
                			<div class="col-md-4"></div>
                			<div class="col-md-4">
                				<button class="btn-lg btn-primary btn-block" type="submit">Entrar</button>
                			</div>
                			<div class="col-md-4"></div>
                		</div> 
                		<br>
            			<a href="#" class="forgot-password">Esqueci minha senha.</a>  
                	</div>               	
            	</form>
            	<!-- /form -->            	
            </div>
            <div class="col-md-4"></div>
		</div>
	</div>	
	<!--javaScript-->
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>