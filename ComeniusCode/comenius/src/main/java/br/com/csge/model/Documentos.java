package br.com.csge.model;

import java.io.Serializable;
import java.util.Date;

public class Documentos implements Serializable {

	private Integer usuarioId;
	private String numRg;
	private String emissorRg;
	private String ufRg;
	private Date dataEmissaoRg;
	private Integer cpf;
	
	public Documentos() {
		super();
	}

	public String getNumRg() {
		return numRg;
	}

	public void setNumRg(String numRg) {
		this.numRg = numRg;
	}

	public String getUfrg() {
		return ufRg;
	}

	public void setUfrg(String ufrg) {
		this.ufRg = ufrg;
	}
	
	public Date getDataEmissaoRg() {
		return dataEmissaoRg;
	}

	public void setDataEmissaoRg(Date dataEmissaoRg) {
		this.dataEmissaoRg = dataEmissaoRg;
	}

	public Integer getUsuarioId() {
		return usuarioId;
	}

	public void setUsuarioId(Integer usuarioId) {
		this.usuarioId = usuarioId;
	}

	public String getEmissorRg() {
		return emissorRg;
	}

	public void setEmissorRg(String emissorRg) {
		this.emissorRg = emissorRg;
	}

	public String getUfRg() {
		return ufRg;
	}

	public void setUfRg(String ufRg) {
		this.ufRg = ufRg;
	}

	public Integer getCpf() {
		return cpf;
	}

	public void setCpf(Integer cpf) {
		this.cpf = cpf;
	}
}
