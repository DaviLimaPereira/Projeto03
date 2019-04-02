<%-- 
    Document   : AdicionarFornecedor
    Created on : 02/04/2019, 19:10:00
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar - Contato</title>
    </head>
    <body>
        <h1>Fornecedor</h1>
        <h2>Adicionar</h2>
        <form action="ListagemFornecedor.jsp">
            NOME:</br><input type="text" name="nome" /></br>
            CNPJ:</br><input type="text" name="cnpj" /></br>
            RAZÃO SOCIAL:</br><input type="text" name="razaosocial" /></br>
            TELEFONE:</br><input type="text" name="telefone" /></br>
            EMAIL:</br><input type="text" name="email" /></br>
            ENDEREÇO:</br><input type="text" name="endereco" /></br>
            <hr/>
            <h2>Deseja incluir o novo fornecedor?</h2>
            <input type="submit" name="AdicionarFornecedor" value="Sim" />
            <input type="submit" name="AdicionarFornecedor" value="Não" />
        </form>
    </body>
</html>
