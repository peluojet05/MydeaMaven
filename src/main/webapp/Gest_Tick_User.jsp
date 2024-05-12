<%-- 
    Document   : Gest_Tick_User
    Created on : 30 abr 2024, 03:40:58
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
        <jsp:include page="templates/Referencias/Todas_Ref.jsp"/>
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
            
            

        %>
        <div class="gestion_tickets_container">
            <div class="controlls_gest_tick">
                <div class="nav_user_tick bg-body-tertiary container-fluid nav_ticket">
                    <span class="tt_tick_pag">Mis Tickets</span>
                    <section class="crear_ntck" id="crear_ntck">
                        <span>Crear un Ticket</span>
                        <i class="bi bi-plus-circle-fill"></i>
                    </section>
                </div>
                <div class="fltr_tickets" id="fltr_tickets">
                    <section class="busq_admin_acc">
                        <input class="form-control bus_admin_acc" id="bus_admin_acc" type="text"
                               placeholder="Buscar Ticket">
                        <i class="bi bi-search text-white"></i>
                    </section>
                    <section class="opt_admin">
                        <select class="select_adm" id="filtr_pri">
                            <option selected disabled hidden>Filtrar por Prioridad</option>
                            <option value="Alta">Alta</option>
                            <option value="Media">Media</option>
                            <option value="Baja">Baja</option>
                            <option value="General">Cualquiera</option>
                        </select>
                    </section>
                    <section class="opt_admin">
                        <select class="select_adm" id="filtr_tem">
                            <option selected disabled hidden>Filtrar por Tema</option>
                            <option value="Negocio">Problemas con los negocios</option>
                            <option value="Desconocido">Errores Desconocidos</option>
                            <option value="Ejecucion">Errores de Ejecucion</option>
                            <option value="Editar">Falla al Editar</option>
                            <option value="Error">Paginas de Error</option>
                            <option value="Cuentas">Problemas con las cuentas</option>
                            <option value="Funcionamiento">Confución con el Funcionamiento</option>
                            <option value="Otro">Otro</option>
                            <option value="General">Cualquiera</option>
                        </select>
                    </section>
                    <section class="opt_admin">
                        <select class="select_adm" id="filtr_est">
                            <option selected disabled hidden>Filtrar por Estado</option>
                            <option value="Abierto">Abierto</option>
                            <option value="En Proceso">En Proceso</option>
                            <option value="Cerrado">Cerrado</option>
                            <option value="General">Cualquiera</option>
                        </select>
                    </section>
                    <section class="opt_admin filtr_fech">
                        <select class="select_adm" id="filtr_fech">
                            <option selected disabled hidden>Filtrar por Fecha</option>
                            <option value="AntesDe">Creado antes de:</option>
                            <option value="DespuesDe">Creado despues de:</option>
                        </select>
                        <input class="fech_admin" type="date" name="" id="fech_admin" disabled>
                    </section>
                </div>
            </div>
            <div class="tickets_container" id="tickets_container">
                <%    Conexion con;
                    Connection c;
                    Statement stmt;
                    ResultSet rs, rs2, rs3, rs4, rs5, rs6, rs7;

                    con = new Conexion();
                    con.setCon();
                    c = con.getCon();
                    stmt = c.createStatement();
                    
                    int idp = con.Pid(correo);
                %>
                <%
                    String sql = "Select t.*, pr.pri_nombre, e.est_nombre, p.per_correo, p.per_foto, u.usu_nombre, ti.tip_nombre from Ticket t inner join Prioridad pr on "
                            + "t.pri_id=pr.pri_id inner join Estado e on t.est_id=e.est_id inner join Persona p on t.per_id = p.per_id inner join Usuario u on p.usu_id = u.usu_id "
                            + "inner join Tipo ti on t.tip_id = ti.tip_id where t.est_id=1 and t.per_id="+idp+";";
                    rs = stmt.executeQuery(sql);

                    if (rs != null) {

                        while (rs.next()) {

                            String nomticket = rs.getString("tic_nombre");
                            String descticket = rs.getString("tic_descripcion");
                            String prioridad = rs.getString("pri_nombre");
                            String estado = rs.getString("est_nombre");
                            String imgticket = rs.getString("tic_imagen");
                            String imgusuario = rs.getString("per_foto");
                            String nombreusuario = rs.getString("usu_nombre");
                            String correousuario = rs.getString("per_correo");
                            String tema = rs.getString("tip_nombre");
                            String fecha = rs.getString("tic_fecha");
                            String comentario = rs.getString("tic_comentario");
                            int id = rs.getInt("tic_id");
                            //cuando quieras poner la imagen del usuario, su nombre, etc, pones esto <%=nombre de la variable% > (quitas el espacio entre el % y el >)
                            //ejemplo: <span> Nombre de usuario: <%=nombreusuario% > (tammbien lo puedes usar en una etiqueta de html)\

                %>
                <!--Ticket Abierto-->
                <section class="ticket_prev">
                    <svg class="icon_ticket_prev" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512.092 512.092"
                         style="enable-background:new 0 0 512.092 512.092;" xml:space="preserve">
                    <path class="sombra_sv" style="fill:#24b240;"
                          d="M396.784,446.553L266.011,115.886c-1.446-3.641-4.771-6.196-8.661-6.656L54.683,85.38 c-5.752-0.808-11.07,3.2-11.878,8.952c-0.018,0.13-0.034,0.261-0.048,0.392L0.091,436.057c-0.763,5.841,3.353,11.196,9.194,11.959 c0.085,0.011,0.171,0.021,0.256,0.03l373.333,42.667h1.216c5.521,0.024,10.148-4.168,10.667-9.664l2.773-29.589 C397.672,449.788,397.416,448.107,396.784,446.553z" />
                    <path class="tick_deg" style="fill:#ffffff;"
                          d="M469.424,94.724c-0.684-5.851-5.983-10.04-11.834-9.355c-0.031,0.004-0.061,0.007-0.092,0.011 l-91.733,10.795L94.832,128.046c-5.801,0.659-9.994,5.86-9.408,11.669l32,341.333c0.519,5.496,5.146,9.688,10.667,9.664h1.216 l373.333-42.667c5.853-0.671,10.053-5.96,9.382-11.813c-0.005-0.045-0.01-0.089-0.016-0.134L469.424,94.724z" />
                    <path style="fill:#455A64;"
                          d="M309.424,170.713c-5.891,0.011-10.675-4.757-10.686-10.648c-0.005-2.84,1.123-5.565,3.134-7.571 l53.333-53.333c4.093-4.237,10.845-4.355,15.083-0.262c4.237,4.093,4.354,10.845,0.262,15.083c-0.086,0.089-0.173,0.176-0.262,0.262 l-53.333,53.333C314.96,169.579,312.251,170.707,309.424,170.713z" />
                    <circle style="fill:#097b20;" cx="394.758" cy="74.713" r="53.333" />
                    </svg>
                    <span class="tt_tick_prev" id="tt_tick_prev"><%=nomticket%></span>
                    <span class="d-none" id="Desc_tick"><%=comentario%></span>
                    <img src="<%=imgticket%>" class="d-none" id="img_ticket_prev">
                    <input type="text" class="d-none" id="Prioridad" value="<%=prioridad%>">
                    <input type="text" class="d-none" id="Tema" value="<%=tema%>">
                    <input type="text" class="d-none" id="Estado" value="Abierto">
                    <input type="date" class="d-none" id="Fecha_tick" value="<%=fecha%>">
                    <input type="text" class="d-none" id="descrealticket" value="Descripcion: <%=descticket%>">
                    <input type="text" class="d-none" disabled id="id_ticket_prev" value="<%=id%>">
                    <section class="esp_tick">
                        <span>Ticket Abierto</span>
                        <span>Prioridad: <%=prioridad%></span>
                    </section>
                </section>
                <%
                        }

                    }

                %>

                <%                        String sql2 = "Select t.*, pr.pri_nombre, e.est_nombre, p.per_correo, p.per_foto, u.usu_nombre, ti.tip_nombre from Ticket t inner join Prioridad pr on "
                            + "t.pri_id=pr.pri_id inner join Estado e on t.est_id=e.est_id inner join Persona p on t.per_id = p.per_id inner join Usuario u on p.usu_id = u.usu_id "
                            + "inner join Tipo ti on t.tip_id = ti.tip_id where t.est_id=2 and t.per_id="+idp+";";
                    rs2 = stmt.executeQuery(sql2);

                    if (rs2 != null) {

                        while (rs2.next()) {

                            String nomticket = rs2.getString("tic_nombre");
                            String descticket = rs2.getString("tic_descripcion");
                            String prioridad = rs2.getString("pri_nombre");
                            String estado = rs2.getString("est_nombre");
                            String imgticket = rs2.getString("tic_imagen");
                            String imgusuario = rs2.getString("per_foto");
                            String nombreusuario = rs2.getString("usu_nombre");
                            String correousuario = rs2.getString("per_correo");
                            String tema = rs2.getString("tip_nombre");
                            String fecha = rs2.getString("tic_fecha");
                            String comentario = rs2.getString("tic_comentario");
                            int id = rs2.getInt("tic_id");
                            //cuando quieras poner la imagen del usuario, su nombre, etc, pones esto <%=nombre de la variable% > (quitas el espacio entre el % y el >)
                            //ejemplo: <span> Nombre de usuario: <%=nombreusuario% > (tammbien lo puedes usar en una etiqueta de html)\

                %>
                <!--Ticket en Proceso-->
                <section class="ticket_prev">
                    <svg class="icon_ticket_prev" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512.092 512.092"
                         style="enable-background:new 0 0 512.092 512.092;" xml:space="preserve">
                    <path class="sombra_sv" style="fill:#FFA000;"
                          d="M396.784,446.553L266.011,115.886c-1.446-3.641-4.771-6.196-8.661-6.656L54.683,85.38 c-5.752-0.808-11.07,3.2-11.878,8.952c-0.018,0.13-0.034,0.261-0.048,0.392L0.091,436.057c-0.763,5.841,3.353,11.196,9.194,11.959 c0.085,0.011,0.171,0.021,0.256,0.03l373.333,42.667h1.216c5.521,0.024,10.148-4.168,10.667-9.664l2.773-29.589 C397.672,449.788,397.416,448.107,396.784,446.553z" />
                    <path class="ticket_sa tick_deg" style="fill:#ffffff;"
                          d="M469.424,94.724c-0.684-5.851-5.983-10.04-11.834-9.355c-0.031,0.004-0.061,0.007-0.092,0.011 l-91.733,10.795L94.832,128.046c-5.801,0.659-9.994,5.86-9.408,11.669l32,341.333c0.519,5.496,5.146,9.688,10.667,9.664h1.216 l373.333-42.667c5.853-0.671,10.053-5.96,9.382-11.813c-0.005-0.045-0.01-0.089-0.016-0.134L469.424,94.724z" />
                    <path style="fill:#455A64;"
                          d="M309.424,170.713c-5.891,0.011-10.675-4.757-10.686-10.648c-0.005-2.84,1.123-5.565,3.134-7.571 l53.333-53.333c4.093-4.237,10.845-4.355,15.083-0.262c4.237,4.093,4.354,10.845,0.262,15.083c-0.086,0.089-0.173,0.176-0.262,0.262 l-53.333,53.333C314.96,169.579,312.251,170.707,309.424,170.713z" />
                    <circle style="fill:#ff8000;" cx="394.758" cy="74.713" r="53.333" />
                    </svg>
                    <span class="tt_tick_prev" id="tt_tick_prev"><%=nomticket%></span>
                    <span class="d-none" id="Desc_tick"><%=comentario%></span>
                    <img src="<%=imgticket%>" class="d-none" id="img_ticket_prev">
                    <input type="text" class="d-none" id="Prioridad" value="<%=prioridad%>">
                    <input type="text" class="d-none" id="Tema" value="<%=tema%>">
                    <input type="text" class="d-none" id="Estado" value="En Proceso">
                    <input type="date" class="d-none" id="Fecha_tick" value="<%=fecha%>">
                    <input type="text" class="d-none" id="descrealticket" value="Descripcion: <%=descticket%>">
                    <input type="text" class="d-none" disabled id="id_ticket_prev" value="<%=id%>">
                    <section class="esp_tick">
                        <span>Ticket En Proceso</span>
                        <span>Prioridad: <%=prioridad%></span>
                    </section>
                </section>
                <%
                        }

                    }

                %>

                <%                        String sql3 = "Select t.*, pr.pri_nombre, e.est_nombre, p.per_correo, p.per_foto, u.usu_nombre, ti.tip_nombre from Ticket t inner join Prioridad pr on "
                            + "t.pri_id=pr.pri_id inner join Estado e on t.est_id=e.est_id inner join Persona p on t.per_id = p.per_id inner join Usuario u on p.usu_id = u.usu_id "
                            + "inner join Tipo ti on t.tip_id = ti.tip_id where t.est_id=3 and t.per_id="+idp+";";
                    rs3 = stmt.executeQuery(sql3);

                    if (rs3 != null) {

                        while (rs3.next()) {

                            String nomticket = rs3.getString("tic_nombre");
                            String descticket = rs3.getString("tic_descripcion");
                            String prioridad = rs3.getString("pri_nombre");
                            String estado = rs3.getString("est_nombre");
                            String imgticket = rs3.getString("tic_imagen");
                            String imgusuario = rs3.getString("per_foto");
                            String nombreusuario = rs3.getString("usu_nombre");
                            String correousuario = rs3.getString("per_correo");
                            String tema = rs3.getString("tip_nombre");
                            String fecha = rs3.getString("tic_fecha");
                            String comentario = rs3.getString("tic_comentario");
                            int id = rs3.getInt("tic_id");
                            //cuando quieras poner la imagen del usuario, su nombre, etc, pones esto <%=nombre de la variable% > (quitas el espacio entre el % y el >)
                            //ejemplo: <span> Nombre de usuario: <%=nombreusuario% > (tammbien lo puedes usar en una etiqueta de html)\

                %>
                <!--Ticket Cerrado-->
                <section class="ticket_prev">
                    <svg class="icon_ticket_prev" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512.092 512.092"
                         style="enable-background:new 0 0 512.092 512.092;" xml:space="preserve">
                    <path class="sombra_sv" style="fill:#c02e2e;"
                          d="M396.784,446.553L266.011,115.886c-1.446-3.641-4.771-6.196-8.661-6.656L54.683,85.38 c-5.752-0.808-11.07,3.2-11.878,8.952c-0.018,0.13-0.034,0.261-0.048,0.392L0.091,436.057c-0.763,5.841,3.353,11.196,9.194,11.959 c0.085,0.011,0.171,0.021,0.256,0.03l373.333,42.667h1.216c5.521,0.024,10.148-4.168,10.667-9.664l2.773-29.589 C397.672,449.788,397.416,448.107,396.784,446.553z" />
                    <path class="tick_deg" style="fill:#ffffff;"
                          d="M469.424,94.724c-0.684-5.851-5.983-10.04-11.834-9.355c-0.031,0.004-0.061,0.007-0.092,0.011 l-91.733,10.795L94.832,128.046c-5.801,0.659-9.994,5.86-9.408,11.669l32,341.333c0.519,5.496,5.146,9.688,10.667,9.664h1.216 l373.333-42.667c5.853-0.671,10.053-5.96,9.382-11.813c-0.005-0.045-0.01-0.089-0.016-0.134L469.424,94.724z" />
                    <path class="somb_ticket" style="fill:#455A64;"
                          d="M309.424,170.713c-5.891,0.011-10.675-4.757-10.686-10.648c-0.005-2.84,1.123-5.565,3.134-7.571 l53.333-53.333c4.093-4.237,10.845-4.355,15.083-0.262c4.237,4.093,4.354,10.845,0.262,15.083c-0.086,0.089-0.173,0.176-0.262,0.262 l-53.333,53.333C314.96,169.579,312.251,170.707,309.424,170.713z" />
                    <circle style="fill:#a70909;" cx="394.758" cy="74.713" r="53.333" />
                    </svg>
                    <span class="tt_tick_prev" id="tt_tick_prev"><%=nomticket%></span>
                    <span class="d-none" id="Desc_tick"><%=comentario%></span>
                    <img src="<%=imgticket%>" class="d-none" id="img_ticket_prev">
                    <input type="text" class="d-none" id="Prioridad" value="<%=prioridad%>">
                    <input type="text" class="d-none" id="Tema" value="<%=tema%>">

                    <input type="text" class="d-none" id="Estado" value="Cerrado">
                    <input type="date" class="d-none" id="Fecha_tick" value="<%=fecha%>">
                    <input type="text" class="d-none" id="descrealticket" value="Descripcion: <%=descticket%>">
                    <input type="text" class="d-none" disabled id="id_ticket_prev" value="<%=id%>">
                    <section class="esp_tick">
                        <span>Ticket Cerrado</span>
                        <span>Prioridad: <%=prioridad%></span>
                    </section>
                </section>

                <%
                        }

                    }

                %>
            </div>

        </div>

        <!--Vizualizacion del ticket-->
        <div class="ticket_viz" id="ticket_viz">
            <section class="ticket_conviz">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="36.5 35 183 182" preserveAspectRatio="none">
                <path
                    d="M156.7,216H48a8,8,0,0,1-8-8V48a8,8,0,0,1,8-8H208a8,8,0,0,1,8,8V156.7a7.9,7.9,0,0,1-2.3,5.6l-51.4,51.4A7.9,7.9,0,0,1,156.7,216Z"
                    fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1" />
                <polyline fill="none" points="215.3 160 160 160 160 215.3" stroke="#000" stroke-linecap="round"
                          stroke-linejoin="round" stroke-width="1" />
                </svg>
                <section class="tt_tick_viz" id="tt_tick_viz">Nombre del Ticket</section>
                <section class="cont_tick">
                    <section class="imgfech_tick">
                        <img class="img_ticket" src="" alt="img_ticket" id="img_ticket">
                        <section>Fecha que se ralizo: <span id="fecha_tick_viz"></span></section>
                    </section>
                    <section class="information_ticket">
                        <span class="Tem_tick_viz" id="Tem_tick_viz">Tema</span>
                        <span class="Pri_tick_viz" id="Pri_tick_viz">Prioridad del Ticket</span>
                        <span class="Est_tick_viz" id="Est_tick_viz"">Estado del ticket</span>
                    </section>
                </section>
                <span class="Des_tick" id="descreal" >hola chaval</span>
                <span class="Des_tick" name="" id="Des_tick_viz">Descripcion del Ticket</span>
            </section>
        </div>

        <%            } else {
                System.out.println("Error: Sesión no existe");
                response.sendRedirect("index.jsp");
            }
        %>
        <script src="js/tickets_user.js"></script>
        <script>
            // Activar todos los tooltips
            var tooltips = new bootstrap.Tooltip(document.body, {
                selector: '[data-bs-toggle="tooltip"]',
            });
        </script>
    </body>
</html>
