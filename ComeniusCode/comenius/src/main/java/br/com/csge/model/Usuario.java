package br.com.csge.model;  
  
import java.io.Serializable;
import java.util.Date;

public class Usuario implements Serializable{  
	
	private Integer id; 
	private Endereco endereco;
	private Documentos doc; 
	private String nome;  
	private String email; 
	private Date dataNasc;
	private String senha;
	private Integer cpf;
	private Integer genero;
	private String estadoCivil;
	private String nacionalidade;
	private String naturalidade;
	private Integer tipo;

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

	public Date getDataNasc() {
		return dataNasc;
	}

	public void setDataNasc(Date dataNasc) {
		this.dataNasc = dataNasc;
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

	
	public String getNacionalidade() {
		return nacionalidade;
	}

	
	public void setNacionalidade(String nacionalidade) {
		this.nacionalidade = nacionalidade;
	}

	
	public String getNaturalidade() {
		return naturalidade;
	}

	
	public void setNaturalidade(String naturalidade) {
		this.naturalidade = naturalidade;
	}

		
	public Integer getTipo() {
		return tipo;
	}

	
	public void setTipo(Integer tipo) {
		this.tipo = tipo;
	}

}  