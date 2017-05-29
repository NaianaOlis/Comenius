package br.com.csge.model;

public class Aluno extends Usuario {
	
	private int cgm;
	private String escolaAnterior;
	private Turma turma;
	
	public Aluno() {
		super();	
	}

	public int getCgm() {
		return cgm;
	}

	public void setCgm(int cgm) {
		this.cgm = cgm;
	}

	public String getEscolaAnterior() {
		return escolaAnterior;
	}

	public void setEscolaAnterior(String escolaAnterior) {
		this.escolaAnterior = escolaAnterior;
	}

	public Turma getTurma() {
		return turma;
	}

	public void setTurma(Turma turma) {
		this.turma = turma;
	}
	
}
