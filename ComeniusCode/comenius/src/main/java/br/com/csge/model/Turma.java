package br.com.csge.model;

public class Turma {
	private Integer idTurma;
	private Curriculo curriculoId;
	private String sala;
	private Integer turno;
	public Turma() {
		super();
	}
	public Integer getIdTurma() {
		return idTurma;
	}
	public void setIdTurma(Integer idTurma) {
		this.idTurma = idTurma;
	}
	public Curriculo getCurriculoId() {
		return curriculoId;
	}
	public void setCurriculoId(Curriculo curriculoId) {
		this.curriculoId = curriculoId;
	}
	public String getSala() {
		return sala;
	}
	public void setSala(String sala) {
		this.sala = sala;
	}
	public Integer getTurno() {
		return turno;
	}
	public void setTurno(Integer turno) {
		this.turno = turno;
	}
	

}
