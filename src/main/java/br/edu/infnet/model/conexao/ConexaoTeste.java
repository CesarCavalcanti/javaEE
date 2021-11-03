package br.edu.infnet.model.conexao;

public class ConexaoTeste {
	public static void main (String[] args) {
		
		
		if(Conexao.obterConexao() != null) {
			System.out.println("Conectou!!");
		}else {
			System.out.println("Deu ruim!!");
		}
	}
}
