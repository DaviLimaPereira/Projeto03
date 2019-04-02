<%-- 
    Document   : listagem
    Created on : 31/03/2019, 17:52:25
    Author     : Leticia Cury
--%>
<%@page import="br.com.fatecpg.cadastros.BancoDados"%>
<%@page import="br.com.fatecpg.cadastros.Cliente"%>
<%@page import="br.com.fatecpg.cadastros.Fornecedor"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  if(request.getParameter("AdicionarCliente")!=null){
    if(request.getParameter("AdicionarCliente").equals("Sim")){
      Cliente c = new Cliente();
      c.setNome(request.getParameter("nome"));
      c.setCpf(request.getParameter("cpf"));
      c.setRg(request.getParameter("rg"));
      c.setTelefone(request.getParameter("telefone"));
      c.setEmail(request.getParameter("email"));
      c.setEndereco(request.getParameter("endereco"));
      BancoDados.getDados().add(c);
    }
    response.sendRedirect(request.getRequestURI());
  }
  if(request.getParameter("AlterarCliente")!=null){
    if(request.getParameter("AlterarCliente").equals("Sim")){
      int index = Integer.parseInt(request.getParameter("index"));
      Cliente c = new Cliente();
      c.setNome(request.getParameter("nome"));
      c.setCpf(request.getParameter("cpf"));
      c.setRg(request.getParameter("rg"));
      c.setTelefone(request.getParameter("telefone"));
      c.setEmail(request.getParameter("email"));
      c.setEndereco(request.getParameter("endereco"));
      BancoDados.getDados().set(index, c);
    }
    response.sendRedirect(request.getRequestURI());
  }
  if(request.getParameter("ExcluirCliente")!=null){
    if(request.getParameter("ExcluirCliente").equals("Sim")){
      int index = Integer.parseInt(request.getParameter("index"));
      BancoDados.getDados().remove(index);
    }
    response.sendRedirect(request.getRequestURI());
  }
  if(request.getParameter("AdicionarFornecedor")!=null){
    if(request.getParameter("AdicionarFornecedor").equals("Sim")){
      Cliente c = new Cliente();
      c.setNome(request.getParameter("nome"));
      c.setCnpj(request.getParameter("cnpj"));
      c.setRazaosocial(request.getParameter("razaosocial"));
      c.setTelefone(request.getParameter("telefone"));
      c.setEmail(request.getParameter("email"));
      c.setEndereco(request.getParameter("endereco"));
      BancoDados.getDados().add(c);
    }
    response.sendRedirect(request.getRequestURI());
  }
  if(request.getParameter("AlterarFornecedor")!=null){
    if(request.getParameter("AlterarFornecedor").equals("Sim")){
      int index = Integer.parseInt(request.getParameter("index"));
      Cliente c = new Cliente();
      c.setNome(request.getParameter("nome"));
      c.setCnpj(request.getParameter("cnpj"));
      c.setRazaosocial(request.getParameter("razaosocial"));
      c.setTelefone(request.getParameter("telefone"));
      c.setEmail(request.getParameter("email"));
      c.setEndereco(request.getParameter("endereco"));
      BancoDados.getDados().set(index, c);
    }
    response.sendRedirect(request.getRequestURI());
  }
  if(request.getParameter("ExcluirFornecedor")!=null){
    if(request.getParameter("ExcluirFornecedor").equals("Sim")){
      int index = Integer.parseInt(request.getParameter("index"));
      BancoDados.getDados().remove(index);
    }
    response.sendRedirect(request.getRequestURI());
  }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listas de Clientes e Fornecedores</title>
    </head>
    <body>
        <h1>Contatos</h1>
        <h2><a href="AdicionarCliente.jsp">Adicionar Cliente</a></h2>
        <h2><a href="AdicionarFornecedor.jsp">Adicionar Fornecedor</a></h2>
        <h2>Lista</h2>
        <table borde="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>RG</th>
                <th>Telefone</th>
                <th>E-mail</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
            <%for(Cliente c: BancoDados.getDados()){%>
                <%int index = BancoDados.getDados().indexOf(c);%>
                <tr>
                    <td><%=index%></td>
                    <td><%=c.getNome()%></td>
                    <td><%=c.getCpf()%></td>
                    <td><%=c.getRg()%></td>
                    <td><%=c.getTelefone()%></td>
                    <td><%=c.getEmail()%></td>
                    <td><%=c.getEndereco()%></td>
                    <td>
                        <a href="AlterarCliente.jsp?index=<%=index%>">Alterar</a>
                        <a href="ExcluirCliente.jsp?index=<%=index%>">Excluir</a>
                    </td>
                </tr>
            <%}%>
        </table>
    </body>
</html>