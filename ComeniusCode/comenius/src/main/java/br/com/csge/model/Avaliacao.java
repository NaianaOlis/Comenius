package br.com.csge.model;

import java.util.Date;

public class Avaliacao {
	private Integer idAvaliacao;
	private Aluno alunoId;
	private Disciplina disciplinaId;
	private double nota;
	private String conceito;
	private Date data;
	public Avaliacao() {
		super();
	}
	public Integer getIdAvaliacao() {
		return idAvaliacao;
	}
	public void setIdAvaliacao(Integer idAvaliacao) {
		this.idAvaliacao = idAvaliacao;
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
	public double getNota() {
		return nota;
	}
	public void setNota(double nota) {
		this.nota = nota;
	}
	public String getConceito() {
		return conceito;
	}
	public void setConceito(String conceito) {
		this.conceito = conceito;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	

	
}
