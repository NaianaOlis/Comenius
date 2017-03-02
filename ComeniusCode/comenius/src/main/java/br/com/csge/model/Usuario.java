package br.com.csge.model;  
  
import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class Usuario implements Serializable{  
  
   private Integer id; 
   private Endereco endereco;
   private String nome;  
   private String email; 
   private Date dataNac;
   private String rg;
   private String rgEmissor;
   private Uf ufrg;
   private String senha;
   private Integer cpf;
   private Integer genero;
   private String estadoCivil;
   
   
   

    public Usuario() {
    
    }




	public Integer getId() {
		return id;
	}




	public void setId(Integer id) {
		this.id = id;
	}




	public Endereco getEndereco() {
		return endereco;
	}




	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}




	public String getNome() {
		return nome;
	}




	public void setNome(String nome) {
		this.nome = nome;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public Date getDataNac() {
		return dataNac;
	}




	public void setDataNac(Date dataNac) {
		this.dataNac = dataNac;
	}




	public String getRg() {
		return rg;
	}




	public void setRg(String rg) {
		this.rg = rg;
	}




	public String getRgEmissor() {
		return rgEmissor;
	}




	public void setRgEmissor(String rgEmissor) {
		this.rgEmissor = rgEmissor;
	}




	public Uf getUfrg() {
		return ufrg;
	}




	public void setUfrg(Uf ufrg) {
		this.ufrg = ufrg;
	}




	public String getSenha() {
		return senha;
	}




	public void setSenha(String senha) {
		this.senha = senha;
	}




	public Integer getCpf() {
		return cpf;
	}




	public void setCpf(Integer cpf) {
		this.cpf = cpf;
	}




	public Integer getGenero() {
		return genero;
	}




	public void setGenero(Integer genero) {
		this.genero = genero;
	}




	public String getEstadoCivil() {
		return estadoCivil;
	}




	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}




	@Override
	public String toString() {
		return "Usuario [id=" + id + ", endereco=" + endereco + ", nome=" + nome + ", email=" + email + ", dataNac="
				+ dataNac + ", rg=" + rg + ", rgEmissor=" + rgEmissor + ", ufrg=" + ufrg + ", senha=" + senha + ", cpf="
				+ cpf + ", genero=" + genero + ", estadoCivil=" + estadoCivil + "]";
	}



	
  
  
   
}  