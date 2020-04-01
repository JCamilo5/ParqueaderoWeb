<%-- 
    Document   : index
    Created on : 20/03/2020, 12:24:16 PM
    Author     : JuanCamilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 
        <h1>Parqueadero</h1>
        <a href ="<%= request.getContextPath()%>/BahiasServlet?accion=listar">cargarOcupados</a>
    </body>
</html>
