<%-- 
    Document   : AlterarFornecedor
    Created on : 02/04/2019, 19:16:13
    Author     : Fatec
--%>

<%@page import="br.com.fatecpg.cadastros.BancoDados" %>
<%@page import="br.com.fatecpg.cadastros.Fornecedor" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração - Contatos</title>
    </head>
    <body>
        <h1>Fornecedor</h1>
        <h2>Alterar</h2>
        <%int index = Integer.parseInt(request.getParameter("index")); %>
        <%Fornecedor c = BancoDados.getDados2().get(index);%>
        <form action="ListagemFornecedor.jsp">
            <b>Índice:<u><%=index%></u></b></br>
            NOME:</br><input type="text" name="nome" value="<%=c.getNome()%>" /></br>
            CNPJ:</br><input type="text" name="cnpj" value="<%=c.getCnpj()%>" /></br>
            RAZÃO SOCIAL:</br><input type="text" name="razaosocial" value="<%=c.getRazaosocial()%>" /></br>
            TELEFONE:</br><input type="text" name="telefone" value="<%=c.getTelefone()%>" /></br>
            EMAIL:</br><input type="text" name="email" value="<%=c.getEmail()%>" /></br>
            ENDEREÇO:</br><input type="text" name="endereco" value="<%=c.getEndereco()%>" /></br>
            <hr/>
            <h2>Deseja alterar o fornecedor?</h2>
            <input type="submit" name="AlterarFornecedor" value="Sim" />
            <input type="submit" name="AlterarFornecedor" value="Não" />
            <input type="hidden" name="index" value="<%=index%>" />
        </form>
    </body>
</html>
