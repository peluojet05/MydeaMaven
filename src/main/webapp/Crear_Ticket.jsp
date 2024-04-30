<%-- 
    Document   : Crear_Ticket
    Created on : 30 abr 2024, 04:35:12
    Author     : altro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Clases.Conexion"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="templates/Referencias/Todas_Ref.jsp"/>
        <link rel="stylesheet" href="css/Administrador/Tickets.css" />
        <title>Gestionar Tickets</title>
    </head>
    <body>
        <%
            HttpSession session1 = request.getSession(false);
            if (session1.getAttribute("usuario") != null) {

        %>
        <div class="gestion_tickets_container">
            <div class="controlls_gest_tick" id="controlls_gest_tick">
                <div class="nav_user_tick bg-body-tertiary container-fluid nav_ticket">
                    <a href="indexCC.jsp" target="_blank">
                        <div class=" d-flex regr_mydea">
                            <i class="bi bi-caret-left-fill flecha_tick"></i>
                            <section href="Acciones_Admin.jsp" class="myde_img_tick" target="_blank"><img src="assets/logo_mydea_comida.png" alt="logotipo" class="img-fluid logo"></section>
                        </div>
                    </a>
                    <span class="tt_tick_pag">Crear un Ticket</span>
                    <section class="crear_ntck" id="gest_ntck">
                        <span>Gestionar Tickets Creados</span>
                        <i class="bi bi-caret-right-fill"></i>
                    </section>
                </div>
            </div>
            <form class="tickets_container ct_form" id="tickets_container_form" action="" method="post">
                <section class="ticket_conviz">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="36.5 35 183 182" preserveAspectRatio="none">
                    <path
                        d="M156.7,216H48a8,8,0,0,1-8-8V48a8,8,0,0,1,8-8H208a8,8,0,0,1,8,8V156.7a7.9,7.9,0,0,1-2.3,5.6l-51.4,51.4A7.9,7.9,0,0,1,156.7,216Z"
                        fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1" />
                    <polyline fill="none" points="215.3 160 160 160 160 215.3" stroke="#000" stroke-linecap="round"
                              stroke-linejoin="round" stroke-width="1" />
                    </svg>
                    <input type="text" class="tt_tick_viz" id="tt_tick_viz_crear" placeholder="Ingresar nombre del Ticket">
                    <section class="cont_tick">
                        <section class="imgfech_tick">
                            <span>Agregar Evidencia (Opcional): </span>
                            <section class="Logo_Prev img_ticket" id="Logo_Prev">
                                <img src="" alt="Logo" id="Prev_Log" class="Prev_Log" />
                                <input type="file" class="d-none" name="logo_cnf" id="logo_cnf" accept="image/png, image/jpeg"/>
                                <i class="bi bi-image Plus_L" id="Plus_L"></i>
                            </section>
                            <section>Fecha que se realización <input type="date"></section>
                        </section>
                        <section class="information_ticket">
                            <select class="Tem_tick_viz">
                                <option selected disabled hidden>Definir Tema</option>
                                <option value="Negocio">Problemas con los negocios</option>
                                <option value="Desconocido">Errores Desconocidos</option>
                                <option value="Ejecucion">Errores de Ejecucion</option>
                                <option value="Editar">Falla al Editar</option>
                                <option value="Error">Paginas de Error</option>
                                <option value="Cuentas">Problemas con las cuentas</option>
                                <option value="Funcionamiento">Confución con el Funcionamiento</option>
                                <option value="Otro">Otro</option>
                            </select>
                        </section>
                    </section>
                    <textarea class="Des_tick" name="" id="Des_tick_viz_crear" placeholder="Ingresar descripcion del Ticket"></textarea>
                </section>
                <button type="submit" class="btn_env_adm">Enviar</button>
            </form>
        </div>

        <%            } else {
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
        <script src="js/crear_ticket.js"></script>
    </body>
</html>
