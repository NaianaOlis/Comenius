package br.com.csge.model;

public class Boletim {
	private Integer idBoletim;
	private Aluno alunoId;
	private Disciplina disciplinaId;
	private Curriculo curriculoId;
	private double nota;
	private Integer faltas;
	private Integer periodo;
	private String conceito;
	public Boletim() {
		super();
	}
	public Integer getIdBoletim() {
		return idBoletim;
	}
	public void setIdBoletim(Integer idBoletim) {
		this.idBoletim = idBoletim;
	}
	public Aluno getAlunoId() {
		return alunoId;
	}
	public void setAlunoId(Aluno alunoId) {
		this.alunoId = alunoId;
	}
	public Disciplina getDisciplinaId() {
		return disciplinaId;
	}
	public void setDisciplinaId(Disciplina disciplinaId) {
		this.disciplinaId = disciplinaId;
	}
	public Curriculo getCurriculoId() {
		return curriculoId;
	}
	public void setCurriculoId(Curriculo curriculoId) {
		this.curriculoId = curriculoId;
	}
	public double getNota() {
		return nota;
	}
	public void setNota(double nota) {
		this.nota = nota;
	}
	public Integer getFaltas() {
		return faltas;
	}
	public void setFaltas(Integer faltas) {
		this.faltas = faltas;
	}
	public Integer getPeriodo() {
		return periodo;
	}
	public void setPeriodo(Integer periodo) {
		this.periodo = periodo;
	}
	public String getConceito() {
		return conceito;
	}
	public void setConceito(String conceito) {
		this.conceito = conceito;
	}
	

}
