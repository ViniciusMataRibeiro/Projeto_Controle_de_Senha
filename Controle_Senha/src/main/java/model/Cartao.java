package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import Enum.Bandeira;
import Enum.MesVencimento;

@Entity
public class Cartao {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String nome;
	private String titular;
	private int numero;
	
	@Enumerated(EnumType.STRING)
	private Bandeira bandeira;
	
	@Enumerated(EnumType.STRING)
	private MesVencimento mesVencimento;
	
	@Column(length = 4)
	private int anoVencimento;
	
	@ManyToOne
	@JoinColumn(name = "pasta_id", nullable = false)
	private Pasta pasta;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTitular() {
		return titular;
	}

	public void setTitular(String titular) {
		this.titular = titular;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(Integer numero) {
		this.numero = numero;
	}

	public Bandeira getBandeira() {
		return bandeira;
	}

	public void setBandeira(Bandeira bandeira) {
		this.bandeira = bandeira;
	}

	public MesVencimento getMesVencimento() {
		return mesVencimento;
	}

	public void setMesVencimento(MesVencimento mesVencimento) {
		this.mesVencimento = mesVencimento;
	}

	public Pasta getPasta() {
		return pasta;
	}

	public void setPasta(Pasta pasta) {
		this.pasta = pasta;
	}

	public int getAnoVencimento() {
		return anoVencimento;
	}

	public void setAnoVencimento(int anoVencimento) {
		this.anoVencimento = anoVencimento;
	}
}
