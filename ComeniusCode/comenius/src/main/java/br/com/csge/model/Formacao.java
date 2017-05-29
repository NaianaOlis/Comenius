package br.com.csge.model;

public class Formacao {
	private Integer idFormacao;
	private Usuario funcionarioId;
	private String curso;
	private String instituicao;
	private Integer anoInicio;
	private Integer anoConclusao;
	private Integer tipoGraduacao;
	public Formacao() {
		super();
	}
	public Integer getIdFormacao() {
		return idFormacao;
	}
	public void setIdFormacao(Integer idFormacao) {
		this.idFormacao = idFormacao;
	}
	public Usuario getFuncionarioId() {
		return funcionarioId;
	}
	public void setFuncionarioId(Usuario funcionarioId) {
		this.funcionarioId = funcionarioId;
	}
	public String getCurso() {
		return curso;
	}
	public void setCurso(String curso) {
		this.curso = curso;
	}
	public String getInstituicao() {
		return instituicao;
	}
	public void setInstituicao(String instituicao) {
		this.instituicao = instituicao;
	}
	public Integer getAnoInicio() {
		return anoInicio;
	}
	public void setAnoInicio(Integer anoInicio) {
		this.anoInicio = anoInicio;
	}
	public Integer getAnoConclusao() {
		return anoConclusao;
	}
	public void setAnoConclusao(Integer anoConclusao) {
		this.anoConclusao = anoConclusao;
	}
	public Integer getTipoGraduacao() {
		return tipoGraduacao;
	}
	public void setTipoGraduacao(Integer tipoGraduacao) {
		this.tipoGraduacao = tipoGraduacao;
	}

}
