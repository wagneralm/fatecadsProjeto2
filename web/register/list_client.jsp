<%-- 
    Document   : list
    Created on : 11/05/2020, 20:59:52
    Author     : wagne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <!--Style Sheet-->

        <link rel="stylesheet" type="text/css" href="../stylesheet/reset.css"/>
        <link rel="stylesheet" type="text/css" href="../stylesheet/style.css"/>

    </head>
    <body>
        <%@include file="../WEB-INF/header.jspf"%>


        <main>
            <section class="container-table">
                <h2>Clientes</h2>
                <table>
                    <thead>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>RG</th>
                    <th>E-Mail</th>
                    <th>Telefone</th>
                    <th>Endereço</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Wagner de Almeida</td>
                            <td>12345678910</td>
                            <td>12345678</td>
                            <td>wagneer.alm@gmail.com</td>
                            <td>13988448997</td>
                            <td>rua doideira - praia grande - sp</td>
                            <td>
                                <div><a href="set_client.jsp">Alterar</a></div>
                                <div><a href="list_provider.jsp">Remover</a></div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </section>
        </main>


        <%@include file="../WEB-INF/footer.jspf"%>
    </body>
</html>
