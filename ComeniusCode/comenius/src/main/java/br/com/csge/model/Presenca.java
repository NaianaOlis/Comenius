package br.com.csge.model;

import java.util.Date;

public class Presenca {
	private Integer idPresenca;
	private Aluno alunoId;
	private Disciplina disciplinaId;
	private Integer presenca;
	private Date data;
	public Presenca() {
		super();
	}
	public Integer getIdPresenca() {
		return idPresenca;
	}
	public void setIdPresenca(Integer idPresenca) {
		this.idPresenca = idPresenca;
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
	public Integer getPresenca() {
		return presenca;
	}
	public void setPresenca(Integer presenca) {
		this.presenca = presenca;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	

}
