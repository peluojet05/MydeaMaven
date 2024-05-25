<%-- 
    Document   : Editar_Producto
    Created on : 29 nov 2023, 9:13:27
    Author     : altro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession session1 = request.getSession(false);
    if (session1.getAttribute("usuario") != null) {
        String id = request.getParameter("neid");
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
            <form action="CrearProducto" id="forme" class="producto_epecifico_contenedor_edit" method="post">
                <section class="btns_pro_most_esp_res">
                    <section class="btn btns_pro_most bpmer_active" id="IDP">Ingresa el Nombre de tu nuevo Producto</section>
                </section>
                <div class="Prod_most_espe_cont_edit justify-content-around">
                    <div class="w-100 h-100 sep_dis_pro">
                        <div class="Prod_most_espe_cont1 w-100 h-100" id="Prod_most_espe_cont1">
                            <section class="d-flex flex-column secc_pro_most_espe cont_inpts_edit">
                                <span id="txt_np_edit">Nombre:</span>
                                <input type="text" class="inp_np_edit" name="Nom_Pro_inp" placeholder="Ingrese el nombre del nuevo Producto">
                                <span>Descripción:</span>
                                <textarea class="inp_dp_edit" name="Desc_Pro_inp" placeholder="Ingrese la Descripción de su nuevo Producto"></textarea>
                                <span>Precio:</span>
                                <span id="pre_pro_esp">$ <input class="inp_pp_edit" name="Pre_Prod_inp" type="number" placeholder="000000.00"></span>
                                <span>Disponibilidad:</span>
                                <select id="dis_pro_esp" name="Tip_Pro_inp">
                                    <option selected disabled hidden>Ingrese la disponibilidad del Producto</option>
                                    <option value="Disponible en todo momento"${valorDisponibilidad == 'Disponible en todo momento' ? 'selected' : ''}>Disponible en todo momento</option>
                                    <option value="Por Pedido"${valorDisponibilidad == 'Por Pedido' ? 'selected' : ''}>Por Pedido</option>
                                    <option value="Mayoreo"${valorDisponibilidad == 'Mayoreo' ? 'selected' : ''}>Mayoreo</option>
                                    <option value="Solo por Unidad"${valorDisponibilidad == 'Solo por Unidad' ? 'selected' : ''}>Solo por Unidad</option>
                                    <option value="Disponible por un Tiempo"${valorDisponibilidad == 'Disponible por un Tiempo' ? 'selected' : ''}>Disponible por un Tiempo</option>
                                    <option value="Proximamente"${valorDisponibilidad == 'Proximamente' ? 'selected' : ''}>Proximamente</option>
                                </select>
                                <button type="submit" id="btnsubmit" class="btn_pro_edit">Subir Producto <i class="bi bi-arrow-bar-up"></i></button>
                            </section>
                        </div>
                    </div>
                    <section class="img_pro_mosr_espe_edit Logo_Prev_edit">
                        <span class="txt_img_edit">Ingrese una Imagen del Producto:</span>
                        <img class="pre_pro_edit" src="assets/mydea_com.png" alt="" id="img_pro_mosr_espe">
                        <input type="file" class="d-none" name="Prod_cnf" id="Prod_cnf" accept="image/png, image/jpeg" />
                        <i class="bi bi-image Plus_L" id="Plus_Prod"></i>
                    </section>
                </div>
                                <input type="hidden" id="foto" name="imgp" value=""/>
                                                                <%
        if (request.getAttribute("neid") != null) {
    %>
                                <input type="hidden" name="neid" value="<%=request.getAttribute("neid")%>"/>
                                
                                <%
                                    }else{
                                %>
                                
                                <input type="hidden" name="neid" value="<%=id%>"/>
                                
                                <%
                                    }
                                %>
            </form>
        </div>
                                <%
        if (request.getAttribute("mensaje") != null) {
    %>          
    <script>
        window.onload = function () {
            Swal.fire({
                icon: "success",
                title: "<%=request.getAttribute("mensaje")%>",
                showConfirmButton: false,
                timer: 5000
            });
        };
    </script>      
    <%
        }
    %>
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
