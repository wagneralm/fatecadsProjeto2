<%-- 
    Document   : remove
    Created on : 11/05/2020, 21:00:16
    Author     : wagne
--%>

<%@page import="br.gov.sp.fatec.register.Client"%>
<%@page import="br.gov.sp.fatec.register.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Client client = null;
    int index = -1;
    try {
        index = Integer.parseInt(request.getParameter("index"));
        client = Db.getClients().get(index);
        if (request.getParameter("remove") != null) {
            Db.getClients().remove(index);
            response.sendRedirect("list_client.jsp");
        }
    } catch (Exception ex){
        response.sendRedirect("list_client.jsp");
    }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Cliente</title>


        <!--Style Sheet-->

        <link rel="stylesheet" type="text/css" href="../stylesheet/reset.css"/>
        <link rel="stylesheet" type="text/css" href="../stylesheet/style.css"/>

    </head>
    <body>
        <%@include file="../WEB-INF/header.jspf"%>

        <main>
            <section class="section-form">
                <form action="" method="post">
                    <h2>Remover Cliente</h2>

                    <div class="container-input">
                        <input class="input-padrao" type="text" name="name" id="name" value="<%= client.getName()%>" disabled=""/>
                        <label for="name">
                            <span>Nome:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="number" name="cpf" id="cpf" value="<%= client.getCpf()%>" disabled="">
                        <label for="cpf">
                            <span>CPF:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="number" name="rg" id="rg" value="<%= client.getRg()%>" disabled="">
                        <label for="rg">
                            <span>RG:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="email" name="email" id="email" value="<%= client.getEmail()%>" disabled="">
                        <label for="email">
                            <span>E-mail:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="tel" name="tel" id="tel" value="<%= client.getTelephone()%>" disabled="">
                        <label for="tel">
                            <span>Telefone:</span>
                        </label>
                    </div>

                    <div class="container-input">
                        <input class="input-padrao" type="text" name="address" id="address" value="<%= client.getAddress()%>" disabled="">
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
