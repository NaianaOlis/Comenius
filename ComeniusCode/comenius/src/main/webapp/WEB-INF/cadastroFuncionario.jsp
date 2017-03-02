<%@page import="br.com.csge.model.Usuario" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPEhtml>
<html lang="pt-br">
	<head>
		<title>Escola Podium</title>
		<metaname="viewport"content="width=device-width, initial-scale=1">
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
		<header class="topo">
			<div class="container">
				<%@include file="menuTecAdm.jsp"%>
			</div>
		</header>
		<div class="container">
			<div class="page-header">
				<center><h1>Cadastro de Funcionário</h1></center>
			</div>

			<form role="form">
<!--Step 1--> 
			<div class="row setup-content" id="step-1">
				<div class="col-xs-12">		

<!--Dados Pessoais-->				
					<div class="col-md-12">
						<h3>Dados Pessoais</h3>
						<br>
						<br>

						<div class="form-group">
							<label class="col-md-2 control-label" for="nome_func">Nome Completo:</label>  
							<div class="col-md-6">
								<input id="nome_func" name="nome_func" type="text" placeholder="Digite o nome do funcionário" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
				
						<div class="form-group">
							<label class="col-md-2 control-label" for="sexo_func">Sexo: </label>
							<div class="col-md-3">
								<select id="sexo_func" name="sexo_func" class="form-control">
									<option value="1">Masculino</option>
									<option value="2">Feminino</option>
								</select>
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="dat_nasc_func">Data de Nascimento: </label>
							<div class="col-md-3">
								<input id="data_nasc_func" name="data_nasc_func" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
				
						<div class="form-group">
							<label class="col-md-2 control-label" for="nacionalidade_func">Nacionalidade: </label>
							<div class="col-md-3">
								<input id="nacionalidade_func" name="nacionalidade_func" type="text" placeholder="Digite a nacionalidade" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
				
						<div class="form-group">
							<label class="col-md-2 control-label" for="uf">Estado: </label>
							<div class="col-md-3">
								<select id="uf_func" name="uf_func" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="cidade_func">Cidade: </label>
							<div class="col-md-3">
								<select id="cidade_func" name="cidade_func" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br>
						<br>
				
						<div class="separador"></div>
					</div>
	<!--Documentação-->
					<div class="col-md-12">
						<h3>Documentação</h3>
						<br>
						<br>
						
						<h5>Certidão de Casamento</h5>
						<br>
						<br>

						<div class="form-group">
							<label class="col-md-2 control-label" for="n_cert_func">Número:</label>  
							<div class="col-md-4">
								<input id="n_cert_func" name="n_cert_func" type="text" placeholder="Digite o numero da certidão" class="form-control input-md">
							</div>
							<label class="col-md-1 control-label" for="folha_func">Folha:</label>  
							<div class="col-md-2">
								<input id="folha_func" name="folha_func" type="text" placeholder="Digite a folha" class="form-control input-md">
							</div>
							<label class="col-md-1 control-label" for="livro_func">Livro:</label>  
							<div class="col-md-2">
								<input id="livro_func" name="livro_func" type="text" placeholder="Digite o livro" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cartorio_func">Cartório: </label>
							<div class="col-md-5">
								<input id="cartorio_func" name="cartorio_func" type="text" placeholder="Digite o nome do cartorio" class="form-control input-md">
							</div>
							
							<label class="col-md-2 control-label" for="ems_cert_func">Data de Emissão: </label>
							<div class="col-md-3">
								<input id="ems_cert_func" name="ems_cert_func" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="uf_cert_func">UF: </label>
							<div class="col-md-3">
								<select id="uf_cert_func" name="uf_cert_func" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="cidade_cert_func">Cidade: </label>
							<div class="col-md-3">
								<select id="cidade_cert_func" name="cidade_cert_func" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br>
						<br>
						
						<h5>RG</h5>
						<br>
						<br>

						<div class="form-group">
							<label class="col-md-2 control-label" for="n_rg_func">Número:</label>  
							<div class="col-md-3">
								<input id="n_rg_func" name="n_rg_func" type="text" placeholder="Digite o numero do rg" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="ems_rg_func">Data de Emissão: </label>
							<div class="col-md-3">
								<input id="ems_rg_func" name="ems_rg_func" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="org_ems_func">Orgão Emissor: </label>
							<div class="col-md-3">
								<select id="org_ems_func" name="org_ems_func" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="uf_rg_func">UF: </label>
							<div class="col-md-3">
								<select id="uf_rg_func" name="uf_rg_func" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br>
						<br>
						
						<h5>CPF</h5>
						<br>
						<br>

						<div class="form-group">
							<label class="col-md-2 control-label" for="n_cpf_func">Número:</label>  
							<div class="col-md-3">
								<input id="n_cpf_func" name="n_cpf_func" type="text" placeholder="Digite o numero do cpf" class="form-control input-md">
							</div>
						</div>	
						<br>
						<br>
						
						<h5>Carteira de Trabalho</h5>
						<br>
						<br>

						<div class="form-group">
							<label class="col-md-2 control-label" for="n_carteira">Número:</label>  
							<div class="col-md-3">
								<input id="n_carteira" name="n_carteira" type="text" placeholder="Digite o numero da cateira" class="form-control input-md">
							</div>
							<label class="col-md-1 control-label" for="serie_carteira">Série:</label>  
							<div class="col-md-2">
								<input id="serie_carteira" name="serie_carteira" type="text" placeholder="Digite a serie" class="form-control input-md">
							</div>
							<label class="col-md-1 control-label" for="uf_carteira">UF: </label>
							<div class="col-md-3">
								<select id="uf_carteira" name="uf_carteira" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="pis">PIS/Pasep: </label>
							<div class="col-md-3">
								<input id="pis" name="pis" type="text" placeholder="Digite o numero do PIS" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
					</div>	
					
					<button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Próximo</button>
			
				</div>		
			</div>

<!--Step 2--> 		
			<div class="row setup-content" id="step-2">
				<div class="col-xs-12">

<!--Contatos Funcionário -->				
					<div class="col-md-12">
					<h3>Endereço</h3>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cep_func">CEP:</label>  
							<div class="col-md-3">
								<input id="cep_func" name="cep_func" type="text" placeholder="Digite o cep" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="rua_func">Rua: </label>
							<div class="col-md-5">
								<input id="rua_func" name="rua_func" type="text" placeholder="Digite a rua" class="form-control input-md">
							</div>
							
							<label class="col-md-2 control-label" for="n_res_func">Numero: </label>
							<div class="col-md-3">
								<input id="n_res_func" name="n_res_func" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="comp_res_func">Complemento: </label>
							<div class="col-md-3">
								<input id="comp_res_func" name="comp_res_func" type="text" placeholder="" class="form-control input-md">
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="bairro_res_func">Bairro: </label>
							<div class="col-md-3">
								<input id="bairro_res_func" name="bairro_res_func" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="uf_res_func">UF: </label>
							<div class="col-md-3">
								<select id="uf_res_func" name="uf_res_func" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="cidade_res_func">Cidade: </label>
							<div class="col-md-3">
								<select id="cidade_res_func" name="cidade_res_func" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br>
						<br>
						
						<div class="separador"></div>
						
						<h3>Telefones</h3>
						<br>
												
						<div class="form-group">
							<label class="col-md-2 control-label" for="tel_res_func">Residencial: </label>
							<div class="col-md-3">
								<input id="tel_res_func" name="tel_res_func" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cel1_func">Celular 1: </label>
							<div class="col-md-3">
								<input id="cel1_func" name="cel1_func" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cel2_func">Celular 2: </label>
							<div class="col-md-3">
								<input id="cel2_func" name="cel2_func" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="rec_func">Recado: </label>
							<div class="col-md-3">
								<input id="rec_func" name="rec_func" type="text" placeholder="" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="cont_rec_func">Falar com: </label>
							<div class="col-md-3">
								<input id="cont_rec_func" name="cont_rec_func" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="separador"></div>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="emer_func">Contato para urgência: </label>
							<div class="col-md-3">
								<input id="emer_func" name="emer_func" type="text" placeholder="" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="par_emer_func">Grau de parentesco: </label>
							<div class="col-md-3">
								<input id="par_emer_func" name="par_emer_func" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cel_emer">Celular: </label>
							<div class="col-md-3">
								<input id="cel_emer" name="cel_emer" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="tel_com_emer">Comercial: </label>
							<div class="col-md-3">
								<input id="tel_com_emer" name="tel_com_emer" type="text" placeholder="" class="form-control input-md">
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="ramal_com_emer">Ramal: </label>
							<div class="col-md-3">
								<input id="ramal_com_emer" name="ramal_com_emer" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="separador"></div>
						
						<h3>Filhos na Escola</h3>
						<br>
						<br>

						<div class="form-group">
							<label class="col-md-2 control-label" for="nome_filho_func1">Nome:</label>  
							<div class="col-md-6">
								<input id="nome_filho_func1" name="nome_filho_func1" type="text" placeholder="Digite o nome do filho" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="nome_filho_func2">Nome:</label>  
							<div class="col-md-6">
								<input id="nome_filho_func2" name="nome_filho_func2" type="text" placeholder="Digite o nome do filho" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="nome_filho_func3">Nome:</label>  
							<div class="col-md-6">
								<input id="nome_filho_func3" name="nome_filho_func3" type="text" placeholder="Digite o nome do filho" class="form-control input-md">
							</div>
						</div>
						
						<br>
						<br>
						
					</div>
					
						<button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Próximo</button>
			
				</div>
			</div>

<!-- Dados Funcionais -->
				
			<div class="row setup-content" id="step-3">
				<div class="col-xs-12">
					<div class="col-md-12">
						<h3>Dados Funcionais</h3>
						<br>
						<br>

						<div class="form-group">
							<label class="col-md-2 control-label" for="dat_ini">Data de inicio: </label>
							<div class="col-md-3">
								<input id="data_ini" name="data_ini" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<h5>Pagamento</h5>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="salario">Salário Base:</label>  
							<div class="col-md-6">
								<input id="salario" name="salario" type="text" placeholder="Digite o salario" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cargo">Cargo:</label>  
							<div class="col-md-6">
								<input id="cargo" name="cargo" type="text" placeholder="Digite o cargo" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="hora_sem">Carga horária semanal:</label>  
							<div class="col-md-6">
								<input id="hora_sem" name="hora_sem" type="text" placeholder="Digite o salario" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="separador"></div>
						
						<h5>Dados Bancários</h5>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="banco">Banco: </label>
							<div class="col-md-3">
								<select id="banco" name="banco" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="agencia">Agência: </label>
							<div class="col-md-3">
								<input id="agencia" name="agencia" type="text" placeholder="" class="form-control input-md">
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="conta">Conta Corrente: </label>
							<div class="col-md-3">
								<input id="conta" name="conta" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="dat_dep">Data de depósito: </label>
							<div class="col-md-3">
								<input id="data_dep" name="data_dep" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Próximo</button>
					</div>
					
				</div>
			</div>
				
				
<!--Finalizar-->
				<div class="row setup-content" id="step-4">
					<div class="col-xs-12">
						<div class="col-md-12">
							<h3>Conferir e Enviar</h3>
							<button class="btn btn-success btn-lg pull-right" type="submit">Enviar</button>
						</div>
					</div>
				</div>
			</form>
			<div class="stepwizard">
				<div class="stepwizard-row setup-panel">
					<div class="stepwizard-step">
						<a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
						<p>Dados Pessoais</p>
					</div>
					<div class="stepwizard-step">
						<a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
						<p>Contato</p>
					</div>
					<div class="stepwizard-step">
						<a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
						<p>Dados Funcionais</p>
					</div>
					<div class="stepwizard-step">
						<a href="#step-4" type="button" class="btn btn-default btn-circle" disabled="disabled">4</a>
						<p>Conferir e enviar</p>
					</div>
				</div>
			</div>
	
		</div>
	</div>
</div>	
</div>
	
	<!--Javascript-->
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/validator.min.js"></script>
	<script src="js/wizzard.js"></script>
	</body>
</html>