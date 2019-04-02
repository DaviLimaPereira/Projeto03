<%-- 
    Document   : ExcluirFornecedor
    Created on : 02/04/2019, 19:16:45
    Author     : Fatec
--%>

<%@page import="br.com.fatecpg.cadastros.BancoDados" %>
<%@page import="br.com.fatecpg.cadastros.Fornecedor" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exclusão - Contatos</title>
    </head>
    <body>
        <h1>Fornecedor</h1>
        <h2>Excluir</h2>
        <%int index = Integer.parseInt(request.getParameter("index")); %>
        <%Fornecedor c = BancoDados.getDados2().get(index);%>
        <form action="ListagemFornecedor.jsp">
            <b>Índice:<u><%=index%></u></b></br>
            NOME:<b><%=c.getNome()%></b></br>
            CNPJ:<b><%=c.getCnpj()%></b></br>
            RAZÃO SOCIAL:<b><%=c.getRazaosocial()%></b></br>
            TELEFONE:<b><%=c.getTelefone()%></b></br>
            EMAIL:<b><%=c.getEmail()%></b></br>
            ENDEREÇO:<b><%=c.getEndereco()%></b></br>
            <hr/>
            <h2>Deseja excluir o contato?</h2>
            <input type="submit" name="ExcluirFornecedor" value="Sim" />
            <input type="submit" name="ExcluirFornecedor" value="Não" />
            <input type="hidden" name="index" value="<%=index%>" />
        </form>
    </body>
</html>
