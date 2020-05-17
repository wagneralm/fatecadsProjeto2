<%-- 
    Document   : set
    Created on : 11/05/2020, 21:00:25
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
        if (request.getParameter("edit") != null) {
            String name = request.getParameter("name");
            String companyName = request.getParameter("companyName");
            String cnpj = request.getParameter("cnpj");
            String telephone = request.getParameter("tel");
            String email = request.getParameter("email");
            String address = request.getParameter("address");

            Provider editProvider = new Provider();
            editProvider.setProviderAttributes(name, companyName, cnpj, email, telephone, address);
            Db.getProviders().set(index, editProvider);
            response.sendRedirect("list_provider.jsp");
        }

    } catch (Exception e) {
        response.sendRedirect("list_provider.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Fornecedor</title>

        <!--Style Sheet-->

        <link rel="stylesheet" type="text/css" href="../stylesheet/reset.css"/>
        <link rel="stylesheet" type="text/css" href="../stylesheet/style.css"/>

    </head>
    <body>
        <%@include file="../WEB-INF/header.jspf"%>

        <main>
            <section class="section-form">

                <form action="" method="post">
                    <h2>Alterar Fornecedor</h2>

                    <div class="container-input">
                        <input class="input-padrao" type="text" name="name" id="name" value="<%= provider.getName()%>" required/>
                        <label for="name">
                            <span>Nome:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="text" name="companyName" id="companyName" value="<%= provider.getCompanyName()%>" required>
                        <label for="companyName">
                            <span>Razão Social:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="number" name="cnpj" id="cnpj" value="<%= provider.getCnpj()%>" required>
                        <label for="cnpj">
                            <span>CNPJ:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="email" name="email" id="email" value="<%= provider.getEmail()%>" required>
                        <label for="email">
                            <span>E-mail:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="tel" name="tel" id="tel" value="<%= provider.getTelephone()%>" required>
                        <label for="tel">
                            <span>Telefone:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="text" name="address" id="address" value="<%= provider.getAddress()%>" required>
                        <label for="address">
                            <span>Endereço:</span>
                        </label>
                    </div>
                    <input class="btn-padrao" type="submit" name="edit" value="Alterar">
                </form>
            </section>

        </main>

        <%@include file="../WEB-INF/footer.jspf"%>
    </body>
</html>
