<%-- 
    Document   : ExcluirCliente
    Created on : 02/04/2019, 19:16:33
    Author     : Fatec
--%>

<%@page import="br.com.fatecpg.cadastros.BancoDados" %>
<%@page import="br.com.fatecpg.cadastros.Cliente" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exclusão - Contatos</title>
    </head>
    <body>
        <h1>Cliente</h1>
        <h2>Excluir</h2>
        <%int index = Integer.parseInt(request.getParameter("index")); %>
        <%Cliente c = BancoDados.getDados().get(index);%>
        <form action="ListagemClientes.jsp">
            <b>Índice:<u><%=index%></u></b></br>
            NOME:<b><%=c.getNome()%></b></br>
            CPF:<b><%=c.getCpf()%></b></br>
            RG:<b><%=c.getRg()%></b></br>
            TELEFONE:<b><%=c.getTelefone()%></b></br>
            EMAIL:<b><%=c.getEmail()%></b></br>
            ENDEREÇO:<b><%=c.getEndereco()%></b></br>
            <hr/>
            <h2>Deseja excluir o contato?</h2>
            <input type="submit" name="ExcluirCliente" value="Sim" />
            <input type="submit" name="ExcluirCliente" value="Não" />
            <input type="hidden" name="index" value="<%=index%>" />
        </form>
    </body>
</html>

