<%-- 
    Document   : list
    Created on : 11/05/2020, 20:59:52
    Author     : wagne
--%>

<%@page import="br.gov.sp.fatec.register.Provider"%>
<%@page import="br.gov.sp.fatec.register.Db"%>
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
                <h2>Fornecedores</h2>
                <table>
                    <thead>
                    <th>Nome</th>
                    <th>Razão Social</th>
                    <th>CNPJ</th>
                    <th>E-Mail</th>
                    <th>Telefone</th>
                    <th>Endereço</th>
                    <th><div><a href="add_provider.jsp">Adicionar Fornecedor</a></div></th>
                    </thead>
                    <tbody>
                        <%for (Provider provider : Db.getProviders()) {%>
                            <tr>
                            <td><%= provider.getName()%></td>
                            <td><%= provider.getCompanyName()%></td>
                            <td><%= provider.getCnpj()%></td>
                            <td><%= provider.getEmail()%></td>
                            <td><%= provider.getTelephone()%></td>
                            <td><%= provider.getAddress()%></td>
                            <td>
                                <% int index = Db.getProviders().indexOf(provider);%>
                                <div><a href="set_provider.jsp?index=<%=index%>">Alterar</a></div>
                                <div><a href="remove_provider.jsp?index=<%=index%>">Remover</a></div>
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
