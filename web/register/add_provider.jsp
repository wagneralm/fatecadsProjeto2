<%-- 
    Document   : add
    Created on : 11/05/2020, 21:00:04
    Author     : wagne
--%>

<%@page import="br.gov.sp.fatec.register.Db"%>
<%@page import="br.gov.sp.fatec.register.Provider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("add") != null) {
        String name = request.getParameter("name");
        String companyName = request.getParameter("companyName");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String telephone = request.getParameter("tel");
        String address = request.getParameter("address");
        Provider provider = new Provider();
        provider.setProviderAttributes(name, companyName, cnpj, email, telephone, address);
        Db.getProviders().add(provider);
        response.sendRedirect("list_provider.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Fornecedor</title>


        <!--Style Sheet-->

        <link rel="stylesheet" type="text/css" href="../stylesheet/reset.css"/>
        <link rel="stylesheet" type="text/css" href="../stylesheet/style.css"/>

    </head>
    <body>
        <%@include file="../WEB-INF/header.jspf"%>

        <main>
            <section class="section-form">

                <form action="" method="post">
                    <h2>Cadastrar Fornecedor</h2>

                    <div class="container-input">
                        <input class="input-padrao" type="text" name="name" id="name" required/>
                        <label for="name">
                            <span>Nome:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="text" name="companyName" id="companyName" required>
                        <label for="companyName">
                            <span>Razão Social:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="number" name="cnpj" id="cnpj" required>
                        <label for="cnpj">
                            <span>CNPJ:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="email" name="email" id="email" required>
                        <label for="email">
                            <span>E-mail:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="tel" name="tel" id="tel" required>
                        <label for="tel">
                            <span>Telefone:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="text" name="address" id="address" required>
                        <label for="address">
                            <span>Endereço:</span>
                        </label>
                    </div>
                    <input class="btn-padrao" type="submit" name="add" value="Cadastrar">
                </form>
            </section>
        </main>

        <%@include file="../WEB-INF/footer.jspf"%>
    </body>
</html>
