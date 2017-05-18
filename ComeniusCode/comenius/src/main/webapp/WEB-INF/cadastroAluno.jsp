<%@page import="br.com.csge.model.Usuario" %>
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
			<form role="form" action="AlunoCtrl?acao=add" method="post">
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
							<label class="col-md-2 control-label" for="uf">Naturalidade - UF: </label>						
							<div class="col-md-3">							
								<select name="uf" id="uf" onchange="changeUf(0)" class="form-control" >
    								<option></option>
    							</select>
							</div>							
							<div class="col-md-2"></div>										
							<label class="col-md-2 control-label" for="cidade">Naturalidade - Cidade: </label>
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
						<br><br>						
						<h5>RG</h5>
						<br><br>
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
						<br><br>						
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
						<br><br>						
						<h5>CPF</h5>
						<br><br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="n_cpf_aluno">Número:</label>  
							<div class="col-md-3">
								<input id="n_cpf_aluno" name="n_cpf_aluno" type="text" placeholder="Digite o numero do rg" class="form-control input-md">
							</div>
						</div>	
						<br><br>						
						<div class="separador"></div>
					</div>	
<!--Endereço-->
					<div class="col-md-12">
						<h3>Endereço</h3>
						<br><br>						
						<div class="form-group">
							<label class="col-md-2 control-label" for="cep_aluno">CEP:</label>  
							<div class="col-md-3">
								<input id="cep_aluno" name="cep_aluno" type="text" placeholder="Digite o cep" class="form-control input-md">
							</div>
						</div>
						<br><br>						
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
						<br><br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="nome_mae">Nome Completo:</label>  
							<div class="col-md-6">
								<input id="nome_mae" name="nome_mae" type="text" placeholder="Digite o nome da mâe" class="form-control input-md">
							</div>
						</div>
						<br><br>
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
						<br><br>				
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
						<br><br>						
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
						<br><br>						
						<div class="form-group">
							<label class="col-md-2 control-label" for="n_cpf_mae">CPF:</label>  
							<div class="col-md-3">
								<input id="n_cpf_mae" name="n_cpf_mae" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>	
						<br><br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="escol_mae">Escolaridade: </label>
							<div class="col-md-6">
								<select id="escol_mae" name="escol_mae" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br><br>						
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
						<br><br><br>
						<h5>TELEFONES: &nbsp &nbsp
							<img  src="img/add.png" height="42" width="42" style="cursor: pointer;" onclick="duplicarCamposMae();"/>
						</h5>
						<br>												
						<div class="form-group" id="div_fone_mae">								
							<div id="origem_mae" align="center" name="origem_mae">							
								<div class="col-md-2">								
									<select id="tipo_fone_mae" name="tipo_fone_mae[]" class="form-control">
										<option value="Celular">Celular</option>
										<option value="Residencial">Residencial</option>
										<option value="Comercial">Comercial</option>
									</select>							
								</div>
								<div class="col-md-3">
									<input id="fone_mae" name="fone_mae[]" type="number" placeholder="" class="form-control input-md"/>
								</div>								
								<label class="col-md-1 control-label" for="obs_mae">Obs: </label>
								<div class="col-md-3">
									<input id="obs_mae" name="obs_mae[]" type="text" placeholder="" class="form-control input-md"/>
								</div> 								
								<div class="col-md-1"></div></br></br></br>
							</div>							
							<div id="destino_mae"></div>
						</div><br>
						<h5 id="add_resp">ADICIONAR RESPONSÁVEL: &nbsp &nbsp
							<img  src="img/add.png" height="42" width="42" style="cursor: pointer;" onclick="exibirCampoResponsavel('block');"/>
						</h5>
						<br>											
						<div class="separador"></div>
					</div>
<!--Responsaveis-->
					<div class="col-md-12" id= "responsaveis">
						<h3>Responsável</h3>
						<br><br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="grau_paren">Grau de Parentesco:</label>  
							<div class="col-md-6">
								<input id="grau_paren" name="grau_paren" type="text" placeholder="Digite o grau de parentesco" class="form-control input-md">
							</div>
						</div>
						<br><br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="nome">Nome Completo:</label>  
							<div class="col-md-6">
								<input id="nome" name="nome[]" type="text" placeholder="Digite o nome completo do responsável" class="form-control input-md">
							</div>
						</div>
						<br><br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="data_nasc">Data de Nascimento: </label>
							<div class="col-md-3">
								<input id="data_nasc" name="data_nasc[]" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="nac">Nacionalidade:</label>  
							<div class="col-md-3">
								<input id="nac" name="nac[]" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>
						<br><br>				
						<div class="form-group">
							<label class="col-md-2 control-label" for="n_rg">RG:</label>  
							<div class="col-md-3">
								<input id="n_rg" name="n_rg[]" type="text" placeholder="Digite o numero do rg" class="form-control input-md">
							</div>
							
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="ems_rg">Data de Emissão: </label>
							<div class="col-md-3">
								<input id="ems_rg" name="ems_rg[]" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
						</div>
						<br><br>						
						<div class="form-group">
							<label class="col-md-2 control-label" for="org_ems">Orgão Emissor: </label>
							<div class="col-md-3">
								<select id="org_ems" name="org_ems[]" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
					
							<div class="col-md-2"></div>
							
							<label class="col-md-2 control-label" for="uf_rg">UF: </label>
							<div class="col-md-3">
								<select id="uf_rg" name="uf_rg[]" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br><br>						
						<div class="form-group">
							<label class="col-md-2 control-label" for="n_cpf">CPF:</label>  
							<div class="col-md-3">
								<input id="n_cpf" name="n_cpf[]" type="text" placeholder="" class="form-control input-md">
							</div>
						</div>	
						<br><br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="escol">Escolaridade: </label>
							<div class="col-md-6">
								<select id="escol" name="escol[]" class="form-control">
									<option value="1"></option>
									<option value="2"></option>
								</select>
							</div>
						</div>
						<br><br>						
						<div class="form-group">
							<label class="col-md-2 control-label" for="prof">Profissão: </label>
							<div class="col-md-3">
								<input id="prof" name="prof[]" type="text" placeholder="" class="form-control input-md">
							</div>					
							<div class="col-md-2"></div>							
							<label class="col-md-2 control-label" for="empresa">Empresa: </label>
							<div class="col-md-3">
								<input id="empresa" name="empresa[]" type="text" placeholder="Empresa em que trabalha" class="form-control input-md">
							</div>
						</div>
						<br><br><br>
<!-----------------------------------------------------------------------------------------------> 							
						<h5>TELEFONES: &nbsp &nbsp
							<img  src="img/add.png" height="42" width="42" style="cursor: pointer;" onclick="duplicarCamposResp();"/>
						</h5>						
						<br>												
						<div class="form-group" id="div_fone_resp">								
							<div id="origem_resp" align="center" name="origem_resp">														
								<div class="col-md-2">								
									<select id="tipo_fone" name="tipo_fone[]" class="form-control">
										<option value="Celular">Celular</option>
										<option value="Residencial">Residencial</option>
										<option value="Comercial">Comercial</option>
									</select>							
								</div>
								<div class="col-md-3">
									<input id="fone" name="fone[]" type="number" placeholder="" class="form-control input-md"/>
								</div>								
								<label class="col-md-1 control-label" for="obs">Obs: </label>
								<div class="col-md-3">
									<input id="obs" name="obs[]" type="text" placeholder="" class="form-control input-md"/>
								</div> 								
								<div class="col-md-1"></div></br></br></br>
							</div>							
							<div id="destino_resp"></div>
						</div><br>
						<h5 id="add_resp_2">ADICIONAR RESPONSÁVEL: &nbsp &nbsp
							<img  src="img/add.png" height="42" width="42" style="cursor: pointer;" onclick="exibirCampoResponsavel('novo');"/>
						</h5>
<!--------------------------------------------------------------------------------------->													
						<br>
						<div class="separador"></div><br><br>	
						<div id="novoR"></div>					
					</div>
					<button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Próximo</button>
				</div>
			</div>	
<!-- Contrato -->				
			<div class="row setup-content" id="step-3">
				<div class="col-xs-12">
					<div class="col-md-12">
						<h3>Mensalidade e Contrato</h3>
						<br><br>
						<h5>Mensalidade</h5>
						<br><br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="dat_venc">Data de Vencimento: </label>
							<div class="col-md-3">
								<input id="data_venc" name="data_venc" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
							</div>
						</div>
						<br><br>						
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
						<br><br>						
						<div class="form-group">
							<label class="col-md-2 control-label" for="desc">Desconto/Bolsa: </label>
							<div class="col-md-4">
								<input id="desc" name="desc" type="text" placeholder="Digite o valor do desconto em R$" class="form-control input-md">
							</div>
						</div>
						<br><br>				
						<div class="form-group">
							<label class="col-md-2 control-label" for="desc">Valor da Mensalidade: </label>
							<div class="col-md-4">
								<input id="desc" name="desc" type="text" placeholder="Digite o valor da mensalidade em R$" class="form-control input-md">
							</div>
						</div>
						<br><br>				
						<div class="form-group">
							<label class="col-md-2 control-label" for="obs_al">Observações:</label>  
							<div class="col-md-6">
								<textarea class="form-control" id="obs_al" name="obs_al"></textarea>
							</div>
							<br><br>
						</div>
						<br><br>
						<div class="form-group">
							<label class="col-md-2 control-label" for="contrato">Contrato:</label>  
							<div class="col-md-6">
								<textarea class="form-control" id="contrato" name="contrato"></textarea>
							</div>
							<br><br>
						</div>
						<br><br>						
						<div class="form-group">
							<div class="col-md-6">
								<button class="btn btn-info btn-sm pull-right" type="submit">Imprimir Cadastro</button>
							</div>
							<div class="col-md-6">
								<button class="btn btn-info btn-sm" type="submit">Imprimir Contrato</button>
							</div>
						</div>
						<br><br><br><br>
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
							function novoResponsavel(){
								var clone = document.getElementById('responsaveis').cloneNode(true);
								var destino = document.getElementById('novoR');
								
								destino.appendChild (clone);
								var camposClonados = clone.getElementsByTagName('input');		
								var camposClonadosSelect = clone.getElementsByTagName('select');
	
								for(i=0; i<camposClonados.length;i++){
									camposClonados[i].value = '';									
								} 	 
								for(i=0; i<camposClonadosSelect.length;i++){
									camposClonadosSelect[i].value = '';									
								} 	
							}
							
							function duplicarCamposResp(){	
								
								var clone = document.getElementById('origem_resp').cloneNode(true);
								var destino = document.getElementById('destino_resp');			
								destino.appendChild (clone);
								var camposClonados = clone.getElementsByTagName('input');									
	
								for(i=0; i<camposClonados.length;i++){
									camposClonados[i].value = '';									
								} 	 

								 
								 /* //testes
								 //y = quantos select existem dentro da div_fone_resp
								 var x = document.getElementById("div_fone_resp").getElementsByTagName('select');								 
								 var y = x.length;
								 
								 //w = qual o name do segundo select
								 var w = x[1].name;	
								 
								 //exibe y e w
								 console.log("xxxxxx yyyyyy "+ y);
								 console.log("xxxxxx yyyyyy "+ w);
								
								 //exibe - a = quantos elementos com o nome de 'origem_resp' existem
								 var z = document.getElementsByName('origem_resp');
								 var a = z.length;
								 console.log("zzzzzz aaaaaa "+ a); */
								
							}
							function duplicarCamposMae(){	
								
								var clone = document.getElementById('origem_mae').cloneNode(true);
								var destino = document.getElementById('destino_mae');			
								destino.appendChild (clone);
								var camposClonados = clone.getElementsByTagName('input');									
	
								for(i=0; i<camposClonados.length;i++){
									camposClonados[i].value = '';									
								} 	 
							}
							
							//Ao abrir janela chama função comboUf
								window.addEventListener("pageshow", comboUf);		
							
								window.addEventListener("pageshow", exibirCampoResponsavel("none"));
							
								function exibirCampoResponsavel(acao){
									document.getElementById('responsaveis').style.display = acao;
									
									if(acao == "none"){										
										document.getElementById('add_resp').style.display = "block";
									}else if(acao == "novo"){
										document.getElementById('add_resp_2').style.display = "none";
										novoResponsavel();										
									}else{
										document.getElementById('add_resp').style.display = "none";
									}
								}
							
								//campos 0=uf 1=uf_cert 2=uf_res_aluno 
								function changeUf(campo) {
									$.getJSON('http://localhost:8080/comenius/js/ufcidades/brasil.json', function(data) {			        	
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
										var sigla = data.geonames[indice].sigla;
										comboCidade(sigla, campoSelecao);										
									});	 
								}					
								//popula o select de acordo com o json								
								function comboUf(){
									$.getJSON('http://localhost:8080/comenius/js/ufcidades/brasil.json', function(data) {						        						        		
										//cada select recebe uma nomeação 
										var output="<select>";
										var outputCert="<select>";
										var outputRg="<select>";
										var outputEnd="<select>";	
										var outputRgMae="<select>";
										var outputUfRg="<select>";
						        		for (var i in data.geonames) {
						        			//pega dados do json do primeiro (i) até o último item
						        		    output+="<option>" + data.geonames[i].nameUf;		
						        		    outputCert+="<option>" + data.geonames[i].nameUf;
						        		    outputRg+="<option>" + data.geonames[i].nameUf;
						        		    outputEnd+="<option>" + data.geonames[i].nameUf;
						        		    outputRgMae+="<option>" + data.geonames[i].nameUf;
						        		    outputUfRg+="<option>" + data.geonames[i].nameUf;
						        		}
						        		output+="</select>";
						        		outputCert+="</select>";
						        		outputRg+="</select>";
						        		outputEnd+="</select>";
						        		outputRgMae+="</select>";
						        		outputUfRg+="</select>";
						        		//escreve no option
						        		document.getElementById("uf").innerHTML=output;	
						        		document.getElementById("uf_cert").innerHTML=output;	
						        		document.getElementById("uf_rg_aluno").innerHTML=output;	
						        		document.getElementById("uf_res_aluno").innerHTML=output;	
						        		document.getElementById("uf_rg_mae").innerHTML=output;
						        		document.getElementById("uf_rg").innerHTML=output;
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
								function comboCidade(sigla, campo){								
									$.getJSON('http://localhost:8080/comenius/js/ufcidades/'+sigla+'.json', function(data) {
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