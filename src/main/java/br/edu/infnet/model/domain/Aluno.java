package br.edu.infnet.model.domain;

public class Aluno {
	
	private Integer id;
	private String senha;
	private String nome;
	private String email;
	private String escolaridade;
	private String[] disciplinas;
	private String regiao;
	private Integer idade;
	private Double mensalidade;
	
	
	
	@Override
	public String toString() {
		
		return String.format("[%s] O aluno %s (%s) Idade %s da região %s está inscrito em %d disciplinas, pagando %.2f de mensalidade!", 
				escolaridade,
				nome,
				email,
				idade,
				regiao,
				disciplinas.length,
				mensalidade
			);
	}
	
	public void impressao() {
		System.out.println(this);

		System.out.println("Disciplinas:");
		
		for(String disciplina : disciplinas) {
			System.out.println("- " + disciplina);
		}
	}
	public Aluno(String nome, String email) {
		this.nome = nome;
		this.email = email;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEscolaridade() {
		return escolaridade;
	}
	public void setEscolaridade(String escolaridade) {
		this.escolaridade = escolaridade;
	}
	public String[] getDisciplinas() {
		return disciplinas;
	}
	public void setDisciplinas(String[] disciplinas) {
		this.disciplinas = disciplinas;
	}
	public String getRegiao() {
		return regiao;
	}
	public void setRegiao(String regiao) {
		this.regiao = regiao;
	}

	public Integer getIdade() {
		return idade;
	}

	public void setIdade(Integer idade) {
		this.idade = idade;
	}

	public Double getMensalidade() {
		return mensalidade;
	}

	public void setMensalidade(Double mensalidade) {
		this.mensalidade = mensalidade;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	

}
