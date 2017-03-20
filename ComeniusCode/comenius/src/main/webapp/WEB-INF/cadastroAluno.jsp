i<%@page import="br.com.csge.model.Usuario" %>
<%@ page language="java" 
	contentType="text/html; charset=UTF-8"  
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPEhtml>
<html lang="pt-br">
	<head>
	<sql:setDataSource var="ds"
                           driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/comenius"
                           user="root"
                           password="1234"
                           scope="session"/>
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
				<center><h1>Cadastro de Aluno</h1></center>
			</div>
			<form role="form">
<!--Step 1--> 
			<div class="row setup-content" id="step-1">
				<div class="col-xs-12">		
<!--Dados Pessoais-->				
					<div class="col-md-12">
						<h3>Dados Pessoais</h3> <br><br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="nome_completo">Nome Completo:</label>  
							<div class="col-md-6">
								<input id="nome_completo" name="nome_completo" type="text" placeholder="Digite o nome do aluno" class="form-control input-md">
							</div>
						</div>
						<br><br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="sexo">Sexo: </label>
							<div class="col-md-3">
								<select id="sexo" name="sexo" class="form-control">
									<option value="1">Masculino</option>
									<option value="2">Feminino</option>
								</select>
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="dat_nasc">Data de Nascimento: </label>
							<div class="col-md-3">
								<input id="data_nasc" name="data_nasc" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
						</div>
						<br><br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="cgm">C.G.M: </label>
							<div class="col-md-3">
								<input id="cgm" name="cgm" type="text" placeholder="Digite o CGM do aluno" class="form-control input-md">
							</div>
						
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="nacionalidade">Nacionalidade: </label>
							<div class="col-md-3">
								<input id="nacionalidade" name="nacionalidade" type="text" placeholder="Digite a nacionalidade" class="form-control input-md">
							</div>
						</div>
						<br><br>
						<div class="form-group">
							<h3>Naturalidade:</h3>	
						</div>
						<br><br>
						<div class="form-group">																		
							<label class="col-md-2 control-label" for="uf">Estado: </label>						
							<div class="col-md-3">							
								<select name="uf" id="uf" onchange="changeUf(0)" class="form-control" >
    								<option></option>
    							</select>
							</div>							
							<div class="col-md-2"></div>										
							<label class="col-md-2 control-label" for="cidade">Cidade: </label>
							<div class="col-md-3">							
								<select id="cidade" name="cidade" class="form-control">
									<option></option>								
								</select>
							</div>							
						</div>						
						<br><br>				
						<div class="form-group">
							<label class="col-md-2 control-label" for="escola_anterior">Escola Anterior:</label>  
							<div class="col-md-6">
								<input id="escola_anterior" name="escola_anterior" type="text" placeholder="Digite o nome da escola anterior caso houver" class="form-control input-md">
							</div>
						</div>						
						<br><br>
						<div class="separador"></div>
					</div>
<!--Documentação-->
					<div class="col-md-12">
						<h3>Documentação</h3><br><br>						
						<h5>Certidão de Nascimento</h5><br><br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="n_cert">Número:</label>  
							<div class="col-md-4">
								<input id="n_cert" name="n_cert" type="text" placeholder="Digite o numero da certidão" class="form-control input-md">
							</div>
							<label class="col-md-1 control-label" for="folha">Folha:</label>  
							<div class="col-md-2">
								<input id="folha" name="folha" type="text" placeholder="Digite a folha" class="form-control input-md">
							</div>
							<label class="col-md-1 control-label" for="livro">Livro:</label>  
							<div class="col-md-2">
								<input id="livro" name="livro" type="text" placeholder="Digite o livro" class="form-control input-md">
							</div>
						</div>
						<br><br>						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cartorio">Cartório: </label>
							<div class="col-md-5">
								<input id="cartorio" name="cartorio" type="text" placeholder="Digite o nome do cartorio" class="form-control input-md">
							</div>							
							<label class="col-md-2 control-label" for="ems_cert">Data de Emissão: </label>
							<div class="col-md-3">
								<input id="ems_cert" name="ems_cert" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
						</div>
						<br><br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="uf_cert">UF: </label>
							<div class="col-md-3">
								<select id="uf_cert" name="uf_cert" onchange="changeUf(1)" class="form-control">
									<option></option>									
								</select>
							</div>					
							<div class="col-md-2"></div>							
							<label class="col-md-2 control-label" for="cidade_cert">Cidade: </label>
							<div class="col-md-3">
								<select id="cidade_cert" name="cidade_cert" class="form-control">
									<option></option>
								</select>
							</div>
						</div>
						<br>
						<br>
						
						<h5>RG</h5>
						<br>
						<br>

						<div class="form-group">
							<label class="col-md-2 control-label" for="n_rg_aluno">Número:</label>  
							<div class="col-md-3">
								<input id="n_rg_aluno" name="n_rg_aluno" type="text" placeholder="Digite o numero do rg" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="ems_rg_aluno">Data de Emissão: </label>
							<div class="col-md-3">
								<input id="ems_rg_aluno" name="ems_rg_aluno" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="org_ems_aluno">Orgão Emissor: </label>
							<div class="col-md-3">
								<select id="org_ems_aluno" name="org_ems_aluno" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="uf_rg_aluno">UF: </label>
							<div class="col-md-3">
								<select id="uf_rg_aluno" name="uf_rg_aluno" class="form-control">
									<option></option>
								</select>
							</div>
						</div>
						<br>
						<br>
						
						<h5>CPF</h5>
						<br>
						<br>

						<div class="form-group">
							<label class="col-md-2 control-label" for="n_cpf_aluno">Número:</label>  
							<div class="col-md-3">
								<input id="n_cpf_aluno" name="n_cpf_aluno" type="text" placeholder="Digite o numero do rg" class="form-control input-md">
							</div>
						</div>	
						<br>
						<br>
						
						<div class="separador"></div>
					</div>	
<!--Endereço-->
					<div class="col-md-12">
						<h3>Endereço</h3>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cep_aluno">CEP:</label>  
							<div class="col-md-3">
								<input id="cep_aluno" name="cep_aluno" type="text" placeholder="Digite o cep" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="rua_aluno">Rua: </label>
							<div class="col-md-5">
								<input id="rua_aluno" name="rua_aluno" type="text" placeholder="Digite a rua" class="form-control input-md">
							</div>
							
							<label class="col-md-2 control-label" for="n_res_aluno">Numero: </label>
							<div class="col-md-3">
								<input id="n_res_aluno" name="n_res_aluno" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="comp_res_aluno">Complemento: </label>
							<div class="col-md-3">
								<input id="comp_res_aluno" name="comp_res_aluno" type="text" placeholder="" class="form-control input-md">
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="bairro_res_aluno">Bairro: </label>
							<div class="col-md-3">
								<input id="bairro_res_aluno" name="bairro_res_aluno" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="uf_res_aluno">UF: </label>
							<div class="col-md-3">
								<select id="uf_res_aluno" name="uf_res_aluno" onchange="changeUf(2)" class="form-control">    								
    								<option ></option>    								
    							</select>
								
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="cidade_res_aluno">Cidade: </label>
							<div class="col-md-3">
								<select id="cidade_res_aluno" name="cidade_res_aluno" class="form-control">
									<option></option>
								</select>
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
<!--Dados Mãe-->				
					<div class="col-md-12">
						<h3>Dados da Mãe</h3>
						<br>
						<br>

						<div class="form-group">
							<label class="col-md-2 control-label" for="nome_mae">Nome Completo:</label>  
							<div class="col-md-6">
								<input id="nome_mae" name="nome_mae" type="text" placeholder="Digite o nome da mâe" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
				
						<div class="form-group">
							<label class="col-md-2 control-label" for="data_nasc_mae">Data de Nascimento: </label>
							<div class="col-md-3">
								<input id="data_nasc_mae" name="data_nasc_mae" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="nac_mae">Nacionalidade:</label>  
							<div class="col-md-3">
								<input id="nac_mae" name="nac_mae" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
				
						<div class="form-group">
							<label class="col-md-2 control-label" for="n_rg_mae">RG:</label>  
							<div class="col-md-3">
								<input id="n_rg_mae" name="n_rg_mae" type="text" placeholder="Digite o numero do rg" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="ems_rg_mae">Data de Emissão: </label>
							<div class="col-md-3">
								<input id="ems_rg_mae" name="ems_rg_mae" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="org_ems_mae">Orgão Emissor: </label>
							<div class="col-md-3">
								<select id="org_ems_mae" name="org_ems_mae" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="uf_rg_mae">UF: </label>
							<div class="col-md-3">
								<select id="uf_rg_mae" name="uf_rg_mae" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="n_cpf_mae">CPF:</label>  
							<div class="col-md-3">
								<input id="n_cpf_mae" name="n_cpf_mae" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>	
						<br>
						<br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="escol_mae">Escolaridade: </label>
							<div class="col-md-6">
								<select id="escol_mae" name="escol_mae" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="prof_mae">Profissão: </label>
							<div class="col-md-3">
								<input id="prof_mae" name="prof_mae" type="text" placeholder="" class="form-control input-md">
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="empresa_mae">Empresa: </label>
							<div class="col-md-3">
								<input id="empresa_mae" name="empresa_mae" type="text" placeholder="Empresa em que trabalha" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<br>
						<h5>TELEFONES</h5>
						<br>
												
						<div class="form-group">
							<label class="col-md-2 control-label" for="tel_com_mae">Comercial: </label>
							<div class="col-md-3">
								<input id="tel_com_mae" name="tel_com_mae" type="text" placeholder="" class="form-control input-md">
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="ramal_com_mae">Ramal: </label>
							<div class="col-md-3">
								<input id="ramal_com_mae" name="ramal_com_mae" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="tel_res_mae">Residencial: </label>
							<div class="col-md-3">
								<input id="tel_res_mae" name="tel_res_mae" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cel1_mae">Celular 1: </label>
							<div class="col-md-3">
								<input id="cel1'_mae" name="cel1_mae" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cel2_mae">Celular 2: </label>
							<div class="col-md-3">
								<input id="cel2'_mae" name="cel2_mae" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="rec1_mae">Recado 1: </label>
							<div class="col-md-3">
								<input id="rec1'_mae" name="rec1_mae" type="text" placeholder="" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="cont_rec1_mae">Falar com: </label>
							<div class="col-md-3">
								<input id="cont_rec1_mae" name="cont_rec1_mae" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="rec2_mae">Recado 2: </label>
							<div class="col-md-3">
								<input id="rec2'_mae" name="rec2_mae" type="text" placeholder="" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="cont_rec2_mae">Falar com: </label>
							<div class="col-md-3">
								<input id="cont_rec2_mae" name="cont_rec2_mae" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="separador"></div>
					</div>
<!--Dados Pai-->
					<div class="col-md-12">
						<h3>Dados do Pai</h3>
						<br>
						<br>

						<div class="form-group">
							<label class="col-md-2 control-label" for="nome_pai">Nome Completo:</label>  
							<div class="col-md-6">
								<input id="nome_pai" name="nome_pai" type="text" placeholder="Digite o nome do pai" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
				
						<div class="form-group">
							<label class="col-md-2 control-label" for="data_nasc_pai">Data de Nascimento: </label>
							<div class="col-md-3">
								<input id="data_nasc_pai" name="data_nasc_pai" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="nac_pai">Nacionalidade:</label>  
							<div class="col-md-3">
								<input id="nac_pai" name="nac_pai" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
				
						<div class="form-group">
							<label class="col-md-2 control-label" for="n_rg_pai">RG:</label>  
							<div class="col-md-3">
								<input id="n_rg_pai" name="n_rg_pai" type="text" placeholder="Digite o numero do rg" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="ems_rg_pai">Data de Emissão: </label>
							<div class="col-md-3">
								<input id="ems_rg_pai" name="ems_rg_pai" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="org_ems_pai">Orgão Emissor: </label>
							<div class="col-md-3">
								<select id="org_ems_pai" name="org_ems_pai" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="uf_rg_pai">UF: </label>
							<div class="col-md-3">
								<select id="uf_rg_pai" name="uf_rg_pai" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="n_cpf_pai">CPF:</label>  
							<div class="col-md-3">
								<input id="n_cpf_pai" name="n_cpf_pai" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>	
						<br>
						<br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="escol_pai">Escolaridade: </label>
							<div class="col-md-6">
								<select id="escol_pai" name="escol_pai" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="prof_pai">Profissão: </label>
							<div class="col-md-3">
								<input id="prof_pai" name="prof_pai" type="text" placeholder="" class="form-control input-md">
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="empresa_pai">Empresa: </label>
							<div class="col-md-3">
								<input id="empresa_pai" name="empresa_pai" type="text" placeholder="Empresa em que trabalha" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<br>
						<h5>TELEFONES</h5>
						<br>
												
						<div class="form-group">
							<label class="col-md-2 control-label" for="tel_com_pai">Comercial: </label>
							<div class="col-md-3">
								<input id="tel_com_pai" name="tel_com_pai" type="text" placeholder="" class="form-control input-md">
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="ramal_com_pai">Ramal: </label>
							<div class="col-md-3">
								<input id="ramal_com_pai" name="ramal_com_pai" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="tel_res_pai">Residencial: </label>
							<div class="col-md-3">
								<input id="tel_res_pai" name="tel_res_pai" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cel1_pai">Celular 1: </label>
							<div class="col-md-3">
								<input id="cel1_pai" name="cel1_pai" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cel2_pai">Celular 2: </label>
							<div class="col-md-3">
								<input id="cel2_pai" name="cel2_pai" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="rec1_pai">Recado 1: </label>
							<div class="col-md-3">
								<input id="rec1_pai" name="rec1_pai" type="text" placeholder="" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="cont_rec1_pai">Falar com: </label>
							<div class="col-md-3">
								<input id="cont_rec1_pai" name="cont_rec1_pai" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="rec2_pai">Recado 2: </label>
							<div class="col-md-3">
								<input id="rec2_pai" name="rec2_pai" type="text" placeholder="" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="cont_rec2_pai">Falar com: </label>
							<div class="col-md-3">
								<input id="cont_rec2_pai" name="cont_rec2_pai" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="separador"></div>
					</div>
	
<!--Outro Responsável-->
					<div class="col-md-12">
						<h3>Outro Responsável</h3>
						<br>
						<br>

						<div class="form-group">
							<label class="col-md-2 control-label" for="grau_paren">Grau de Parentesco:</label>  
							<div class="col-md-6">
								<input id="grau_paren" name="grau_paren" type="text" placeholder="Digite o grau de parentesco" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="nome_resp">Nome Completo:</label>  
							<div class="col-md-6">
								<input id="nome_resp" name="nome_resp" type="text" placeholder="Digite o nome do responsavel" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
				
						<div class="form-group">
							<label class="col-md-2 control-label" for="data_nasc_resp">Data de Nascimento: </label>
							<div class="col-md-3">
								<input id="data_nasc_resp" name="data_nasc_resp" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="nac_resp">Nacionalidade:</label>  
							<div class="col-md-3">
								<input id="nac_resp" name="nac_resp" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
				
						<div class="form-group">
							<label class="col-md-2 control-label" for="n_rg_resp">RG:</label>  
							<div class="col-md-3">
								<input id="n_rg_resp" name="n_rg_resp" type="text" placeholder="Digite o numero do rg" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="ems_rg_">Data de Emissão: </label>
							<div class="col-md-3">
								<input id="ems_rg_resp" name="ems_rg_resp" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="org_ems_resp">Orgão Emissor: </label>
							<div class="col-md-3">
								<select id="org_ems_resp" name="org_ems_resp" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="uf_rg_resp">UF: </label>
							<div class="col-md-3">
								<select id="uf_rg_resp" name="uf_rg_resp" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="n_cpf_resp">CPF:</label>  
							<div class="col-md-3">
								<input id="n_cpf_resp" name="n_cpf_resp" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>	
						<br>
						<br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="escol_resp">Escolaridade: </label>
							<div class="col-md-6">
								<select id="escol_resp" name="escol_resp" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="prof_resp">Profissão: </label>
							<div class="col-md-3">
								<input id="prof_resp" name="prof_resp" type="text" placeholder="" class="form-control input-md">
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="empresa_resp">Empresa: </label>
							<div class="col-md-3">
								<input id="empresa_resp" name="empresa_resp" type="text" placeholder="Empresa em que trabalha" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<br>
						<h5>TELEFONES</h5>
						<br>
												
						<div class="form-group">
							<label class="col-md-2 control-label" for="tel_com_resp">Comercial: </label>
							<div class="col-md-3">
								<input id="tel_com_resp" name="tel_com_resp" type="text" placeholder="" class="form-control input-md">
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="ramal_com_resp">Ramal: </label>
							<div class="col-md-3">
								<input id="ramal_com_resp" name="ramal_com_resp" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="tel_res_resp">Residencial: </label>
							<div class="col-md-3">
								<input id="tel_res_resp" name="tel_res_resp" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cel1_resp">Celular 1: </label>
							<div class="col-md-3">
								<input id="cel1_resp" name="cel1_resp" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cel2_resp">Celular 2: </label>
							<div class="col-md-3">
								<input id="cel2_resp" name="cel2_resp" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="rec1_resp">Recado 1: </label>
							<div class="col-md-3">
								<input id="rec1_resp" name="rec1_resp" type="text" placeholder="" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="cont_rec1_resp">Falar com: </label>
							<div class="col-md-3">
								<input id="cont_rec1_resp" name="cont_rec1_resp" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="rec2_resp">Recado 2: </label>
							<div class="col-md-3">
								<input id="rec2_resp" name="rec2_resp" type="text" placeholder="" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="cont_rec2_resp">Falar com: </label>
							<div class="col-md-3">
								<input id="cont_rec2_resp" name="cont_rec2_resp" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
					</div>	

																									
						<button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Próximo</button>
			
				</div>
			</div>

<!-- Contrato -->				
			<div class="row setup-content" id="step-3">
				<div class="col-xs-12">
					<div class="col-md-12">
						<h3>Mensalidade e Contrato</h3>
						<br>
						<br>

						<h5>Mensalidade</h5>
						<br>
						<br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="dat_venc">Data de Vencimento: </label>
							<div class="col-md-3">
								<input id="data_venc" name="data_venc" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="periodo">Período: </label>
							<div class="col-md-4">
								<select id="periodo" name="periodo" class="form-control">
								  <option hidden>Selecione o periodo</option>
								  <option value="1">Manhã</option>
								  <option value="2">Tarde</option>
								  <option value="3">Integral</option>
								</select>
							 </div>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="desc">Desconto/Bolsa: </label>
							<div class="col-md-4">
								<input id="desc" name="desc" type="text" placeholder="Digite o valor do desconto em R$" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
				
						<div class="form-group">
							<label class="col-md-2 control-label" for="desc">Valor da Mensalidade: </label>
							<div class="col-md-4">
								<input id="desc" name="desc" type="text" placeholder="Digite o valor da mensalidade em R$" class="form-control input-md">
							</div>
						</div>
						<br>
						<br>
				
						<div class="form-group">
							<label class="col-md-2 control-label" for="obs_al">Observações:</label>  
							<div class="col-md-6">
								<textarea class="form-control" id="obs_al" name="obs_al"></textarea>
							</div>
							<br>
							<br>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<label class="col-md-2 control-label" for="contrato">Contrato:</label>  
							<div class="col-md-6">
								<textarea class="form-control" id="contrato" name="contrato"></textarea>
							</div>
							<br>
							<br>
						</div>
						<br>
						<br>
						
						<div class="form-group">
							<div class="col-md-6">
								<button class="btn btn-info btn-sm pull-right" type="submit">Imprimir Cadastro</button>
							</div>
							<div class="col-md-6">
								<button class="btn btn-info btn-sm" type="submit">Imprimir Contrato</button>
							</div>
						</div>
						<br>
						<br>
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
						<p>Dados dos Pais e/ ou Responsáveis</p>
					</div>
					<div class="stepwizard-step">
						<a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
						<p>Mensalidade e Contrato</p>
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
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/funcoes.js"></script>
<!-- ************************************************************************************************************************ -->																
							<script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
							<script>
							//Ao abrir janela chama função comboUf
								window.onload = function () {
						        	comboUf();
						    	}					
								//campos 0=uf 1=uf_cert 2=uf_res_aluno 
								function changeUf(campo) {
									$.getJSON('http://www.geonames.org/childrenJSON?geonameId=3469034', function(data) {			        	
										var indice, campoSelecao;	
										//de acordo com o campo 0, 1 ou 2
										//guarda a opção que está selecionada
										//campo a ser modificado ao chamar a função comboCidade
										if (campo == 0){
											indice = uf.selectedIndex;
											var campoSelecao = "cidade";											
										}else if(campo == 1){
											indice = uf_cert.selectedIndex;
											var campoSelecao = "cidade_cert";
										}else{
											indice = uf_res_aluno.selectedIndex;
											var campoSelecao = "cidade_res_aluno";
										}										
										//codigo da uf selecionada de acordo com o json
										var cod = data.geonames[indice].geonameId;
										comboCidade(cod, campoSelecao);										
									});	 
								}					
								//popula o select de acordo com o json								
								function comboUf(){
									$.getJSON('http://www.geonames.org/childrenJSON?geonameId=3469034', function(data) {						        						        		
										//cada select recebe uma nomeação 
										var output="<select>";
										var outputCert="<select>";
										var outputRg="<select>";
										var outputEnd="<select>";										
						        		for (var i in data.geonames) {
						        			//pega dados do json do primeiro (i) até o último item
						        		    output+="<option>" + data.geonames[i].name;		
						        		    outputCert+="<option>" + data.geonames[i].name;
						        		    outputRg+="<option>" + data.geonames[i].name;
						        		    outputEnd+="<option>" + data.geonames[i].name;
						        		}
						        		output+="</select>";
						        		outputCert+="</select>";
						        		outputRg+="</select>";
						        		outputEnd+="</select>";
						        		//escreve no option
						        		document.getElementById("uf").innerHTML=output;	
						        		document.getElementById("uf_cert").innerHTML=output;	
						        		document.getElementById("uf_rg_aluno").innerHTML=output;	
						        		document.getElementById("uf_res_aluno").innerHTML=output;						        				
						        		//todos menos o campo da uf do rg passam um número para a função
						        		//changeUf() que vê qual dos select foi modificado e chama a função para 
						        		//popular o select de cidade do select correspondente de acordo
						        		//com a atual seleção. campos 0=uf 1=uf_cert 2=uf_res_aluno 
						        		for(var i=0; i<3; i++){
						        			changeUf(i);
						        		}						        							        		
						        	});	
								}
								//coloca o codigo da uf selecionada na url json para listar cidades daquela uf					
								function comboCidade(cod, campo){								
									$.getJSON('http://www.geonames.org/childrenJSON?geonameId='+cod, function(data) {
							  			var output="<select>";
							        	for (var i in data.geonames) {
							        		//pega o nome de todas as cidades 
							        	    output+="<option>" + data.geonames[i].name;						        	    
							        	}
							        	output+="</select>";			
							        	//popula o select de acordo com a referência passada: campo
							        	document.getElementById(campo).innerHTML=output;	
							        	//campo: nome do campo - select. relacionado ao campos uf que foi
										//modificado o valor
							 	 	});		
								}								
							</script>							
<!-- ************************************************************************************************************************ -->
	</body>
</html>