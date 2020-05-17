<%-- 
    Document   : remove
    Created on : 11/05/2020, 21:00:16
    Author     : wagne
--%>

<%@page import="br.gov.sp.fatec.register.Db"%>
<%@page import="br.gov.sp.fatec.register.Provider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Provider provider = null;
    int index = -1;
    try {
        index = Integer.parseInt(request.getParameter("index"));
        provider = Db.getProviders().get(index);
        if (request.getParameter("remove") != null) {
            Db.getProviders().remove(index);
            response.sendRedirect("list_provider.jsp");
        }
    } catch (Exception e) {
        response.sendRedirect("list_provider.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Fornecedor</title>

        <!--Style Sheet-->
        <link rel="stylesheet" type="text/css" href="../stylesheet/reset.css"/>
        <link rel="stylesheet" type="text/css" href="../stylesheet/style.css"/>

    </head>
    <body>
        <%@include file="../WEB-INF/header.jspf"%>

        <main>
            <section class="section-form">

                <form action="" method="post">
                    <h2>Remover Fornecedore</h2>

                    <div class="container-input">
                        <input class="input-padrao" type="text" name="name" id="name" value="<%= provider.getName()%>" disabled="">
                        <label for="name">
                            <span>Nome:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="text" name="companyName" id="companyName" value="<%= provider.getCompanyName()%>" disabled="">
                        <label for="companyName">
                            <span>Razão Social:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="number" name="cnpj" id="cnpj" value="<%= provider.getCnpj()%>" disabled="">
                        <label for="cnpj">
                            <span>CNPJ:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="email" name="email" id="email" value="<%= provider.getEmail()%>" disabled="">
                        <label for="email">
                            <span>E-mail:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="tel" name="tel" id="tel" value="<%= provider.getTelephone()%>" disabled="">
                        <label for="tel">
                            <span>Telefone:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="text" name="address" id="address" value="<%= provider.getAddress()%>" disabled="">
                        <label for="address">
                            <span>Endereço:</span>
                        </label>
                    </div>
                    <input class="btn-padrao" type="submit" name="remove" value="Remover">
                </form>
            </section>
        </main>

        <%@include file="../WEB-INF/footer.jspf"%>
    </body>
</html>
