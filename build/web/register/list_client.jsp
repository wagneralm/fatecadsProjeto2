<%-- 
    Document   : list
    Created on : 11/05/2020, 20:59:52
    Author     : wagne
--%>

<%@page import="br.gov.sp.fatec.register.Client"%>
<%@page import="br.gov.sp.fatec.register.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Cliente</title>


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
                    <th><div><a href="add_client.jsp">Adicionar Cliente</a></div></th>
                    </thead>
                    <tbody>

                        <%for (Client client : Db.getClients()) {%>
                        <tr>
                            <td><%= client.getName()%></td>
                            <td><%= client.getCpf()%></td>
                            <td><%= client.getRg()%></td>
                            <td><%= client.getEmail()%></td>
                            <td><%= client.getTelephone()%></td>
                            <td><%= client.getAddress()%></td>
                            <td>
                                <%int index = Db.getClients().indexOf(client);%>
                                <div><a href="set_client.jsp?index=<%=index%>">Alterar</a></div>
                                <div><a href="remove_client.jsp?index=<%=index%>">Remover</a></div>
                            </td>
                        </tr>
                        <%}%>

                    </tbody>
                </table>
            </section>
        </main>


        <%@include file="../WEB-INF/footer.jspf"%>
    </body>
</html>
