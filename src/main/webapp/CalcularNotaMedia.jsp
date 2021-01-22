<%-- 
    Document   : CalcularNotaMedia
    Created on : 22-ene-2021, 10:41:46
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{
                background-color: black;
                color: firebrick;
                text-align: center;
            }
            hr{
                border-color: firebrick;
            }
        </style>
    </head>
    <body>
        <jsp:useBean id="alumno" class="Clases.Alumno"/>
        <%
            String nombre = request.getParameter("nombre");
            String apellidos = request.getParameter("apellidos");
            double nota1 = Double.parseDouble(request.getParameter("nota1"));
            double nota2 = Double.parseDouble(request.getParameter("nota2"));
            double nota3 = Double.parseDouble(request.getParameter("nota3"));
        %>
        <jsp:setProperty name="alumno" property="nombre" value="<%= nombre %>"/>
        <jsp:setProperty name="alumno" property="apellidos" value="<%= apellidos %>"/>
        <jsp:setProperty name="alumno" property="nota1" value="<%= nota1 %>"/>
        <jsp:setProperty name="alumno" property="nota2" value="<%= nota2 %>"/>
        <jsp:setProperty name="alumno" property="nota3" value="<%= nota3 %>"/>
        <% double notaMedia = alumno.getNotaMedia(); %>
        
        <h1>Nota media de <jsp:getProperty name="alumno" property="nombre"/> <jsp:getProperty name="alumno" property="apellidos"/></h1>
        <hr>
        <p>La 1ª nota es: <jsp:getProperty name="alumno" property="nota1"/>.</p>
        <p>La 2ª nota es: <jsp:getProperty name="alumno" property="nota2"/>.</p>
        <p>La 3ª nota es: <jsp:getProperty name="alumno" property="nota3"/>.</p>
        <p <% if(notaMedia >= 5){%>style="color: green;"<%}else{%>style="color: red"<%}%>>La nota media es: <jsp:getProperty name="alumno" property="notaMedia"/>.</p>
        
    </body>
</html>
