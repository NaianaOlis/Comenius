package br.com.csge.model;

public class Telefone {
	
	private Integer idTelefone;
	private Usuario usuarioId;
	private Integer tipo;
	private Integer numero;
	private Integer ramal;
	
	public Telefone() {
		super();
	}
	
	public Integer getIdTelefone() {
		return idTelefone;
	}
	public void setIdTelefone(Integer idTelefone) {
		this.idTelefone = idTelefone;
	}
	public Usuario getUsuarioId() {
		return usuarioId;
	}
	public void setUsuarioId(Usuario usuarioId) {
		this.usuarioId = usuarioId;
	}
	public Integer getTipo() {
		return tipo;
	}
	public void setTipo(Integer tipo) {
		this.tipo = tipo;
	}
	public Integer getNumero() {
		return numero;
	}
	public void setNumero(Integer numero) {
		this.numero = numero;
	}
	public Integer getRamal() {
		return ramal;
	}
	public void setRamal(Integer ramal) {
		this.ramal = ramal;
	}
	
}
