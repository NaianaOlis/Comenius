package br.com.csge.model;

import java.util.Date;

public class Mensalidade {
	private Integer idMensalidade;
	private Aluno alunoId;
	private double valor;
	private Date vencimento;
	private Integer situacao;
	public Mensalidade() {
		super();
	}
	public Integer getIdMensalidade() {
		return idMensalidade;
	}
	public void setIdMensalidade(Integer idMensalidade) {
		this.idMensalidade = idMensalidade;
	}
	public Aluno getAlunoId() {
		return alunoId;
	}
	public void setAlunoId(Aluno alunoId) {
		this.alunoId = alunoId;
	}
	public double getValor() {
		return valor;
	}
	public void setValor(double valor) {
		this.valor = valor;
	}
	public Date getVencimento() {
		return vencimento;
	}
	public void setVencimento(Date vencimento) {
		this.vencimento = vencimento;
	}
	public Integer getSituacao() {
		return situacao;
	}
	public void setSituacao(Integer situacao) {
		this.situacao = situacao;
	}
	

}
