<%-- 
    Document   : GraficasAdmin.jsp
    Created on : 18 abr. 2024, 18:52:57
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Clases.Conexion"%>
<%@page import="Clases.Persona"%>
<%@page import="Clases.Usuario"%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <%
            Conexion con = new Conexion();
            con.setCon();
            Connection c = con.getCon();
            Statement stmt = c.createStatement();

            ResultSet rndu = stmt.executeQuery("SELECT COUNT(usu_id) FROM usuario");
            int numeroDeUsuarios = 0;
            if (rndu.next()) {
                numeroDeUsuarios = rndu.getInt(1);
            }
            
            ResultSet rndua = stmt.executeQuery("SELECT COUNT(usu_id) FROM usuario where usu_activo=true");
            int numeroDeUsuariosA = 0;
            if (rndua.next()) {
                numeroDeUsuariosA = rndua.getInt(1);
            }
            
            ResultSet rndui = stmt.executeQuery("SELECT COUNT(usu_id) FROM usuario where usu_activo=false");
            int numeroDeUsuariosI = 0;
            if (rndui.next()) {
                numeroDeUsuariosI = rndui.getInt(1);
            }
            
            ResultSet rnduc = stmt.executeQuery("SELECT COUNT(usu_id) FROM usuario where tip_id=1");
            int numeroDeUsuariosC = 0;
            if (rnduc.next()) {
                numeroDeUsuariosC = rnduc.getInt(1);
            }
            
            ResultSet rnduv = stmt.executeQuery("SELECT COUNT(usu_id) FROM usuario where tip_id=2");
            int numeroDeUsuariosV = 0;
            if (rnduv.next()) {
                numeroDeUsuariosV = rnduv.getInt(1);
            }
            
            ResultSet rnduad = stmt.executeQuery("SELECT COUNT(usu_id) FROM usuario where tip_id=3");
            int numeroDeUsuariosAd = 0;
            if (rnduad.next()) {
                numeroDeUsuariosAd = rnduad.getInt(1);
            }
            
        %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <select id="Opcion">
                <option value="tipo">Estado</option>
                <option value="estado">Tipo</option>
            </select>
            <canvas id="myChart"></canvas>
        </div>
        
        <input type="hidden" id="numeroDeUsuarios" value="<%= numeroDeUsuarios %>">
        <input type="hidden" id="numeroDeUsuariosA" value="<%= numeroDeUsuariosA %>">
        <input type="hidden" id="numeroDeUsuariosI" value="<%= numeroDeUsuariosI %>">
        <input type="hidden" id="numeroDeUsuariosC" value="<%= numeroDeUsuariosC %>">
        <input type="hidden" id="numeroDeUsuariosV" value="<%= numeroDeUsuariosV %>">
        <input type="hidden" id="numeroDeUsuariosAd" value="<%= numeroDeUsuariosAd %>">
        
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script src="js/GraAd.js"></script>
        
    </body>
</html>
