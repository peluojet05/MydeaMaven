<%-- 
    Document   : Editar_Producto
    Created on : 29 nov 2023, 8:17:03
    Author     : altro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession session1 = request.getSession(false);
    if (session1.getAttribute("usuario") != null) {
    
    Conexion con;
    Connection c;
    Statement stmt;
    ResultSet rs, rs2 = null, rs3;
    con = new Conexion();
    con.setCon();
    c = con.getCon();
    stmt = c.createStatement();
    String id = request.getParameter("idn"), nombre="", desc="", img="";
    int precio = 0, disponibilidad = 0;
    String sql = "Select * from Producto where pro_id="+id+";";
    
    rs=stmt.executeQuery(sql);
    
    while(rs.next()){
        nombre=rs.getString("pro_nombre");
        desc = rs.getString("pro_descripcion");
        img=rs.getString("pro_imagen");
        precio=rs.getInt("pro_precio");
        disponibilidad=rs.getInt("dis_id");
    }

%>

<%@page session="true"%>
<%@page import="Clases.Usuario" %>
<%@page import="Clases.Persona" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Clases.Conexion"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="templates/Referencias/Todas_Ref.jsp"/>
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="templates/Navegadores/Navegador_CV.jsp"/>
        <div class="Prod_most_espe_edit" id="producto_epecifico">
            <section class="color_ep1 deslizard"></section>
            <section class="color_ep2 deslizard"></section>
            <form action="EditarProducto" class="producto_epecifico_contenedor_edit" id="forme" method="post">
                <section class="btns_pro_most_esp_res">
                    <section class="btn btns_pro_most bpmer_active" id="IDP">Clickea el dato que deseas editar</section>
                </section>
                <div class="Prod_most_espe_cont_edit justify-content-around">
                    <div class="w-100 h-100 sep_dis_pro">
                        <div class="Prod_most_espe_cont1 w-100 h-100" id="Prod_most_espe_cont1">
                            <section class="d-flex flex-column secc_pro_most_espe cont_inpts_edit">
                                <span id="txt_np_edit">Nombre:</span>
                                <input type="text" name="nombre" class="inp_np_edit" placeholder="<%=nombre%>">
                                <span>Descripción:</span>
                                <textarea class="inp_dp_edit" name="desc" placeholder="<%=desc%>"></textarea>
                                <span>Precio:</span>
                                <span id="pre_pro_esp">$ <input class="inp_pp_edit" type="number" name="precio" placeholder="<%=precio%>"></span>
                                <span>Disponibilidad:</span>
                                <select id="dis_pro_esp" name="disponibilidad">
                                   
                                    <option disabled hidden>Disponibilidad del Producto</option>
                                    <option value="Disponible en todo momento"${valorDisponibilidad == 'Disponible en todo momento' ? 'selected' : ''} <%if(disponibilidad==1){%>selected<%}%>>Disponible en todo momento</option>
                                    <option value="Por Pedido"${valorDisponibilidad == 'Por Pedido' ? 'selected' : ''} <%if(disponibilidad==2){%>selected<%}%>>Por Pedido</option>
                                    <option value="Mayoreo"${valorDisponibilidad == 'Mayoreo' ? 'selected' : ''} <%if(disponibilidad==3){%>selected<%}%>>Mayoreo</option>
                                    <option value="Solo por Unidad"${valorDisponibilidad == 'Solo por Unidad' ? 'selected' : ''} <%if(disponibilidad==4){%>selected<%}%>>Solo por Unidad</option>
                                    <option value="Disponible por un Tiempo"${valorDisponibilidad == 'Disponible por un Tiempo' ? 'selected' : ''} <%if(disponibilidad==5){%>selected<%}%>>Disponible por un Tiempo</option>
                                    <option value="Próximamente"${valorDisponibilidad == 'Proximamente' ? 'selected' : ''} <%if(disponibilidad==6){%>selected<%}%>>Proximamente</option>
                                </select>
                                <button type="submit" id="btnsubmit" class="btn_pro_edit">Actualizar Datos <i class="bi bi-arrow-bar-up"></i></button>
                            </section>
                        </div>
                    </div>
                    <section class="img_pro_mosr_espe_edit Logo_Prev_edit">
                        <span class="txt_img_edit">Imagen del producto:</span>
                        <img class="pre_pro_edit" src="<%=img%>" alt="" id="img_pro_mosr_espe">
                        <input type="file" class="d-none" name="Prod_cnf" id="Prod_cnf" accept="image/png, image/jpeg" />
                        <i class="bi bi-image Plus_L" id="Plus_Prod"></i>
                    </section>
                </div>
                        <input type="hidden" name="anombre" value="<%=nombre%>"/>
                        <input type="hidden" name="adesc" value="<%=desc%>"/>
                        <input type="hidden" name="aprecio" value="<%=precio%>"/>
                        <input type="hidden" name="aimg" value="<%=img%>"/>
                        <input type="hidden" name="adisponibilidad" value="<%=disponibilidad%>"/>
                        <input type="hidden" id="foto" name="img" value=""/>
                        <input type="hidden" name="idp" value="<%=id%>"/>
            </form>
        </div>
        <%  } else {
                System.out.println("Error: Sesión no existe");
                response.sendRedirect("index.jsp");
            }
        %>
        <script>
            // Activar todos los tooltips
            var tooltips = new bootstrap.Tooltip(document.body, {
                selector: '[data-bs-toggle="tooltip"]',
            });
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.min.js"></script>
        <script src="js/edipro.js"></script>
    </body>
</html>
