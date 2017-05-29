package br.com.csge.model;

public class Disciplina {
	private Integer idDisciplina;
	private Curriculo curriculoId;
	private Integer ch;
	private String ementa;
	public Disciplina() {
		super();
	}
	public Integer getIdDisciplina() {
		return idDisciplina;
	}
	public void setIdDisciplina(Integer idDisciplina) {
		this.idDisciplina = idDisciplina;
	}
	public Curriculo getCurriculoId() {
		return curriculoId;
	}
	public void setCurriculoId(Curriculo curriculoId) {
		this.curriculoId = curriculoId;
	}
	public Integer getCh() {
		return ch;
	}
	public void setCh(Integer ch) {
		this.ch = ch;
	}
	public String getEmenta() {
		return ementa;
	}
	public void setEmenta(String ementa) {
		this.ementa = ementa;
	}
	

}
