<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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
            #calcular:hover{
                background-color: firebrick;
                color: black;
            }
            hr{
                border-color: firebrick;
            }
        </style>
    </head>
    <body>
        <h1>Calcular Nota Media</h1>
        <hr>
        <p>Puedes poner decimales poniendo un punto (4.9 por ejemplo).</p>
        <form action="CalcularNotaMedia.jsp">
            <input type="text" name="nombre" placeholder="Nombre"><br>
            <input type="text" name="apellidos" placeholder="Apellidos"><br>
            <input type="number" step="0.01" name="nota1" placeholder="1ª nota"><br>
            <input type="number" step="0.01" name="nota2" placeholder="2ª nota"><br>
            <input type="number" step="0.01" name="nota3" placeholder="3ª nota">
            <hr>
            <input id="calcular" type="submit" value="Calcular">
        </form>
    </body>
</html>
