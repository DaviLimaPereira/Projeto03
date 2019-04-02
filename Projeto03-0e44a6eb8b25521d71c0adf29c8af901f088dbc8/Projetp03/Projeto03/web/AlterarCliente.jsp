<%-- 
    Document   : AlterarCliente
    Created on : 02/04/2019, 19:10:28
    Author     : Fatec
--%>

<%@page import="br.com.fatecpg.cadastros.BancoDados" %>
<%@page import="br.com.fatecpg.cadastros.Cliente" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração - Contatos</title>
    </head>
    <body>
        <h1>Cliente</h1>
        <h2>Alterar</h2>
        <%int index = Integer.parseInt(request.getParameter("index")); %>
        <%Cliente c = BancoDados.getDados().get(index);%>
        <form action="ListagemClientes.jsp">
            <b>Índice:<u><%=index%></u></b></br>
            NOME:</br><input type="text" name="nome" value="<%=c.getNome()%>" /></br>
            CPF:</br><input type="text" name="cpf" value="<%=c.getCpf()%>" /></br>
            RG:</br><input type="text" name="rg" value="<%=c.getRg()%>" /></br>
            TELEFONE:</br><input type="text" name="telefone" value="<%=c.getTelefone()%>" /></br>
            EMAIL:</br><input type="text" name="email" value="<%=c.getEmail()%>" /></br>
            ENDEREÇO:</br><input type="text" name="endereco" value="<%=c.getEndereco()%>" /></br>
            <hr/>
            <h2>Deseja alterar o cliente?</h2>
            <input type="submit" name="AlterarCliente" value="Sim" />
            <input type="submit" name="AlterarCliente" value="Não" />
            <input type="hidden" name="index" value="<%=index%>" />
        </form>
    </body>
</html>

