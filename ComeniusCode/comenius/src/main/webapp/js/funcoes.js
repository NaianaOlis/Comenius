 $("#cep_aluno").blur(function(){
	 var cep_aluno = this.value.replace(/[^0-9]/, "");
	 if(cep_aluno.length!=8){
		 return false;
	}
	 var url = "http://maps.google.com/maps/api/geocode/json?address="+cep_aluno+"&sensor=false";
	 $.getJSON(url, function(dadosRetorno){
		 try{
			 var parametros = dadosRetorno.results[0].formatted_address;
			 var quebra = parametros.split(",");
			 var i = quebra.length;
			 
			 if (i == 3){
				 var cidade = quebra[0];
				 var campos = cidade.split(" - ");
			}
			 else  if (i == 4){	
				 var endereco = quebra[0];
				 var campos = endereco.split(" - ");
				 var x = campos.length;
				 if (x < 2){
					 $("#bairro_res_aluno").val(campos[0]);
				 }else{
					 $("#rua_aluno").val(campos[0]);	 
					 $("#bairro_res_aluno").val(campos[1]);
				 }				 				 
				 var cidade = quebra[1];
				 var campos = cidade.split(" - ");
			}
			 $("#cidade_res_aluno").val(campos[0]);
			 var uf = document.getElementById("uf_res_aluno");				
				for (var i = 0; i < uf.options.length; i++){
					if (uf.options[i].value == campos[1]){
						uf.options[i].selected = "true";
						break;
					}
				}
			
		}catch(ex){}
	});
});