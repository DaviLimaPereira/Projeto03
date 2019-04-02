/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.cadastros;
import java.util.ArrayList;
/**
 *
 * @author davil
 */
public class BancoDados {

    private static ArrayList<Cliente> dados;
    public static ArrayList<Cliente> getDados(){
        if(dados==null){
            dados = new ArrayList<>();
            Cliente c1 = new Cliente();
            c1.setNome("Ana");
            c1.setCpf("123459987/50");
            c1.setRg("49.245.642-9");
            c1.setEmail("ana@santana.com");
            c1.setTelefone("+55 11 98755-9234");
            c1.setEndereco("Rua Tanana, 236");
            dados.add(c1);
            Cliente c2 = new Cliente();
            c2.setNome("João");
            c2.setCpf("138576987/60");
            c2.setRg("94.235.643-7");
            c2.setEmail("joao.62@terra.com.br");
            c2.setTelefone("+55 13 98765-1298");
            c2.setEndereco("Rua Pinaco, 026");
            dados.add(c2);
        }
        return dados;
    }
    private static ArrayList<Fornecedor> dados2;
    public static ArrayList<Fornecedor> getDados2(){
        if(dados2==null){
            dados2 = new ArrayList<>();
            Fornecedor f1 = new Fornecedor();
            f1.setNome("Joana");
            f1.setRazaosocial("Fulano De Tal & CIA LTDA");
            f1.setCnpj("00.000.000/0001-12");
            f1.setEmail("joana@Fulano.com");
            f1.setTelefone("+55 11 98333-1194");
            f1.setEndereco("Rua da pamonha, 557");
            dados2.add(f1);
            Fornecedor f2 = new Fornecedor();
            f2.setNome("Paulo");
            f2.setRazaosocial("Rei Da Pipoca");
            f2.setCnpj("99.999.878/3321-12");
            f2.setEmail("paulo@pipoca.com");
            f2.setTelefone("+55 13 90986-4683");
            f2.setEndereco("Rua Tijolo, 306");
            dados2.add(f2);
        }
        return dados2;
    }
}
