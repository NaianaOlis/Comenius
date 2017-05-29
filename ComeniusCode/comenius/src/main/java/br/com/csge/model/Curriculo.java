package br.com.csge.model;

public class Curriculo {
	private Integer idCurriculo;
	private Integer serie;
	private String ensino;
	private Integer chTotal;
	public Curriculo() {
		super();
	}
	public Integer getIdCurriculo() {
		return idCurriculo;
	}
	public void setIdCurriculo(Integer idCurriculo) {
		this.idCurriculo = idCurriculo;
	}
	public Integer getSerie() {
		return serie;
	}
	public void setSerie(Integer serie) {
		this.serie = serie;
	}
	public String getEnsino() {
		return ensino;
	}
	public void setEnsino(String ensino) {
		this.ensino = ensino;
	}
	public Integer getChTotal() {
		return chTotal;
	}
	public void setChTotal(Integer chTotal) {
		this.chTotal = chTotal;
	}
	

}
