package br.com.csge.model;

import java.util.Date;

public class Funcionario extends Usuario{
	 private String funcao;
	 private Integer numCtps;
	 private Integer pis;
	 private Integer turno;
	 private Date dataIniContr;
	 private Date dataFimContr;
	 private Integer chSemanal;
	
	 public Funcionario() {
		super();
	}

	public String getFuncao() {
		return funcao;
	}

	public void setFuncao(String funcao) {
		this.funcao = funcao;
	}

	public Integer getNumCtps() {
		return numCtps;
	}

	public void setNumCtps(Integer numCtps) {
		this.numCtps = numCtps;
	}

	public Integer getPis() {
		return pis;
	}

	public void setPis(Integer pis) {
		this.pis = pis;
	}

	public Integer getTurno() {
		return turno;
	}

	public void setTurno(Integer turno) {
		this.turno = turno;
	}

	public Date getDataIniContr() {
		return dataIniContr;
	}

	public void setDataIniContr(Date dataIniContr) {
		this.dataIniContr = dataIniContr;
	}

	public Date getDataFimContr() {
		return dataFimContr;
	}

	public void setDataFimContr(Date dataFimContr) {
		this.dataFimContr = dataFimContr;
	}

	public Integer getChSemanal() {
		return chSemanal;
	}

	public void setChSemanal(Integer chSemanal) {
		this.chSemanal = chSemanal;
	} 
	 
}
