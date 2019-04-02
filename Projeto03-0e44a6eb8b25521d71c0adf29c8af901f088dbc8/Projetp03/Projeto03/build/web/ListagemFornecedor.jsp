<%-- 
    Document   : ListagemFornecedor
    Created on : 2 de abr de 2019, 19:55:09
    Author     : VM
--%>
<%@page import="br.com.fatecpg.cadastros.BancoDados"%>
<%@page import="br.com.fatecpg.cadastros.Fornecedor"%>

<%
    if(request.getParameter("AdicionarFornecedor")!=null){
    if(request.getParameter("AdicionarFornecedor").equals("Sim")){
      Fornecedor c = new Fornecedor();
      c.setNome(request.getParameter("nome"));
      c.setCnpj(request.getParameter("cnpj"));
      c.setRazaosocial(request.getParameter("razaosocial"));
      c.setTelefone(request.getParameter("telefone"));
      c.setEmail(request.getParameter("email"));
      c.setEndereco(request.getParameter("endereco"));
      BancoDados.getDados2().add(c);
    }
    response.sendRedirect(request.getRequestURI());
  }
  if(request.getParameter("AlterarFornecedor")!=null){
    if(request.getParameter("AlterarFornecedor").equals("Sim")){
      int index = Integer.parseInt(request.getParameter("index"));
      Fornecedor c = new Fornecedor();
      c.setNome(request.getParameter("nome"));
      c.setCnpj(request.getParameter("cnpj"));
      c.setRazaosocial(request.getParameter("razaosocial"));
      c.setTelefone(request.getParameter("telefone"));
      c.setEmail(request.getParameter("email"));
      c.setEndereco(request.getParameter("endereco"));
      BancoDados.getDados2().set(index, c);
    }
    response.sendRedirect(request.getRequestURI());
  }
  if(request.getParameter("ExcluirFornecedor")!=null){
    if(request.getParameter("ExcluirFornecedor").equals("Sim")){
      int index = Integer.parseInt(request.getParameter("index"));
      BancoDados.getDados2().remove(index);
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
        
        <h2><a href="ListagemClientes.jsp" >Ver Clientes</a></h2>
        
        <h2>Lista</h2>
        <h2><a href="AdicionarFornecedor.jsp" >Adicionar Fornecedor</a></h2>
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
            <%for(Fornecedor c: BancoDados.getDados2()){%>
                <%int index = BancoDados.getDados2().indexOf(c);%>
                <tr>
                    <td><%=index%></td>
                    <td><%=c.getNome()%></td>
                    <td><%=c.getCnpj()%></td>
                    <td><%=c.getRazaosocial()%></td>
                    <td><%=c.getTelefone()%></td>
                    <td><%=c.getEmail()%></td>
                    <td><%=c.getEndereco()%></td>
                    <td>
                        <a href="Alterarfornecedor.jsp?index=<%=index%>">Alterar</a>
                        <a href="ExcluirFornecedor.jsp?index=<%=index%>">Excluir</a>
                    </td>
                </tr>
            <%}%>
        </table>
        
        <h2><a href="index.jsp" >Home</a></h2>
    </body>
</html>
