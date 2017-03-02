package br.com.csge.model;

import java.io.Serializable;

public class Uf implements Serializable{  
	  
	   private String sigla; 
	   private String nome;
	   
	   public Uf(){}

	public String getSigla() {
		return sigla;
	}

	public void setSigla(String sigla) {
		this.sigla = sigla;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@Override
	public String toString() {
		return "Uf [sigla=" + sigla + ", nome=" + nome + "]";
	}
	   
	   

}
