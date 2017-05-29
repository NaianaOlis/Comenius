package br.com.csge.model;

import java.util.Date;

public class Certidao extends Documentos{
	
	private Integer numero;
	private String fls;
	private String livro;
	private String cartorio; 
	private Date dataEmissao;
	private char tipo;
	
	public Certidao() {
		super();
	}

	public Integer getNumero() {
		return numero;
	}

	public void setNumero(Integer numero) {
		this.numero = numero;
	}

	public String getFls() {
		return fls;
	}

	public void setFls(String fls) {
		this.fls = fls;
	}

	public String getLivro() {
		return livro;
	}

	public void setLivro(String livro) {
		this.livro = livro;
	}

	public String getCartorio() {
		return cartorio;
	}

	public void setCartorio(String cartorio) {
		this.cartorio = cartorio;
	}

	public Date getDataEmissao() {
		return dataEmissao;
	}

	public void setDataEmissao(Date dataEmissao) {
		this.dataEmissao = dataEmissao;
	}

	public char getTipo() {
		return tipo;
	}

	public void setTipo(char tipo) {
		this.tipo = tipo;
	}

}
