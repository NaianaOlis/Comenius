package br.com.csge.model;

public class Responsavel extends Usuario{

	private String empresa;
	private String profissao;
	private Integer grauInstrucao;
	public String getEmpresa() {
		return empresa;
	}
	public void setEmpresa(String empresa) {
		this.empresa = empresa;
	}
	public String getProfissao() {
		return profissao;
	}
	public void setProfissao(String profissao) {
		this.profissao = profissao;
	}
	public Integer getGrauInstrucao() {
		return grauInstrucao;
	}
	public void setGrauInstrucao(Integer grauInstrucao) {
		this.grauInstrucao = grauInstrucao;
	}	

}
