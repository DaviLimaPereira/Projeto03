<%-- 
    Document   : AdicionarCliente
    Created on : 02/04/2019, 17:08:18
    Author     : davil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar - Contato</title>
    </head>
    <body>
        <h1>Clientes</h1>
        <h2>Adicionar</h2>
        <form action="index.jsp">
            NOME:</br><input type="text" name="nome" /></br>
            CPF:</br><input type="text" name="cpf" /></br>
            RG:</br><input type="text" name="rg" /></br>
            TELEFONE:</br><input type="text" name="telefone" /></br>
            EMAIL:</br><input type="text" name="email" /></br>
            ENDEREÇO:</br><input type="text" name="endereco" /></br>
            <hr/>
            <h2>Deseja incluir o novo cliente?</h2>
            <input type="submit" name="AdicionarCliente" value="Sim" />
            <input type="submit" name="AdicionarCliente" value="Não" />
        </form>
    </body>
</html>

