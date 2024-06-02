<%-- 
    Document   : Crear_Ticket
    Created on : 30 abr 2024, 04:35:12
    Author     : altro
--%>

<%@page import="Clases.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Clases.Conexion"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="templates/Referencias/Ref_Admin.jsp"/>
        <link rel="stylesheet" href="css/Administrador/Tickets.css" />
        <title>Gestionar Tickets</title>
    </head>
    <body>
        <%
            HttpSession session1 = request.getSession(false);
            if (session1.getAttribute("usuario") != null) {
            HttpSession misession= (HttpSession) request.getSession();
            Persona per= (Persona) misession.getAttribute("persona");
            String correo = per.getPer_correo();
             Conexion con;
                    Connection c;
                    Statement stmt;
                    ResultSet rs, rs2, rs3, rs4, rs5, rs6, rs7;

                    con = new Conexion();
                    con.setCon();
                    c = con.getCon();
                    stmt = c.createStatement();
                    
                    int idp = con.Pid(correo);

        %>
        <div class="gestion_tickets_container">
            <div class="controlls_gest_tick" id="controlls_gest_tick">
                <div class="nav_user_tick bg-body-tertiary container-fluid nav_ticket">
                    <span class="tt_tick_pag">Crear un Ticket</span>
                    <section class="crear_ntck" id="gest_ntck">
                        <span>Gestionar Tickets Creados</span>
                        <i class="bi bi-caret-right-fill"></i>
                    </section>
                </div>
            </div>
            <form class="tickets_container ct_form" id="tickets_container_form" action="CrearTicket" method="post">
                <section class="ticket_conviz">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="36.5 35 183 182" preserveAspectRatio="none">
                    <path
                        d="M156.7,216H48a8,8,0,0,1-8-8V48a8,8,0,0,1,8-8H208a8,8,0,0,1,8,8V156.7a7.9,7.9,0,0,1-2.3,5.6l-51.4,51.4A7.9,7.9,0,0,1,156.7,216Z"
                        fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1" />
                    <polyline fill="none" points="215.3 160 160 160 160 215.3" stroke="#000" stroke-linecap="round"
                              stroke-linejoin="round" stroke-width="1" />
                    </svg>
                    <input type="text" class="tt_tick_viz" id="tt_tick_viz_crear" name="nom" placeholder="Ingresar nombre del Ticket">
                    <section class="cont_tick">
                        <section class="imgfech_tick">
                            <span>Agregar Evidencia (Opcional): </span>
                            <section class="Logo_Prev img_ticket" id="Logo_Prev">
                                <img src="" alt="Logo" id="Prev_Log" class="Prev_Log" />
                                <input type="file" class="d-none" name="logo_cnf" id="logo_cnf" accept="image/png, image/jpeg"/>
                                <i class="bi bi-image Plus_L" id="Plus_L"></i>
                            </section>
                           
                        </section>
                        <section class="information_ticket">
                            <select class="Tem_tick_viz" name="tipo">
                                <option selected disabled hidden>Definir Tema</option>
                                <option value="Negocio">No se creó de forma correcta mi negocio, producto o novedad o no se ven datos/imagenes en estos</option>
                                <option value="Desconocido">Tengo un error desconocido.</option>
                                <option value="Ejecucion">La pagina web o algunas de las funcionalidades de este no se ejecutan correctamente.</option>
                                <option value="Editar">No se editó de forma correcta mi perfil, negocio, producto o novedad.</option>
                                <option value="Error">Me aparece una pagina de error al momento de cambiar de pagina.</option>
                                <option value="Cuentas">Tengo problemas con mi cuenta o me gustria combiar mi tipo de usuario.</option>
                                <option value="Funcionamiento">Tengo una duda respecto al funcionamiento de la pagina web.</option>
                                <option value="Otro">Otro</option>
                            </select>
                        </section>
                    </section>
                    <textarea class="Des_tick" name="desc" id="Des_tick_viz_crear" placeholder="Ingresar descripcion del Ticket"></textarea>
                </section>
                <button type="submit" class="btn_env_adm" id="btnsubmit">Enviar</button>
                <input type="hidden" name="idp" value="<%=idp%>"/>
                <input type="hidden" id="foto" name="img" value=""/>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.min.js"></script>
        <script src="js/crear_ticket.js"></script>
    </body>
</html>
