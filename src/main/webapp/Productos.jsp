<%-- 
    Document   : Productos
    Created on : 12 may 2024, 23:41:38
    Author     : altro
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Clases.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="templates/Referencias/Todas_Ref.jsp"/>
        <title>Mis Productos</title>
    </head>
    <body class="pro_cont">
        <%
            HttpSession session1 = request.getSession(false);
            if (session1.getAttribute("usuario") != null) {

        %>
        <jsp:include page="templates/Navegadores/Navegador_CV.jsp"/>
        <div class="d-flex flex-column w-100 justify-content-between cnf1 Inria">
            <section class="color_pro1 deslizard"></section>
            <section class="color_pro2 deslizard"></section>
            <div class="content_form w-100">
                <section class="d-flex align-items-center p1_cnf">
                    <span class="txt_prin_cnf fw-bolder">Consulta, Edita y/o Elimina tus Productos</span>
                    <i class="bi bi-question-circle quicon_cnf_lg" data-bs-toggle="tooltip" data-bs-placement="right"
                       data-bs-title="Tooltip on right"></i>
                </section>
                <div class="p2_cnf d-flex flex-column Products_cont" method="post" id="FORM_CNF">
                    <section class="txt_pro_cont">
                        <span>Lista de mis Productos <span class="instr_prepro">(Clickea tu producto para consultarlo, editarlo o eliminarlo)</span></span>
                        <span>Previzualización</span>
                    </section>
                    <div class="cons_pro">
                        <section class="prod_cons_most">
                            <%    Conexion con;
                                Connection c;
                                Statement stmt;
                                ResultSet rs, rs2 = null, rs3;
                                con = new Conexion();
                                con.setCon();
                                c = con.getCon();
                                stmt = c.createStatement();

                                String id = request.getParameter("idn");

                                if (request.getAttribute("neid") != null) {

                                    rs = stmt.executeQuery("select p.*, n.neg_logo,n.neg_nombre, d.dis_nombre from producto p inner join Negocio n on p.neg_id = n.neg_id"
                                            + " inner join Disponibilidad d on p.dis_id = d.dis_id where p.pro_activo = true and p.neg_id=" + request.getAttribute("neid") + ";");
                                } else {
                                    rs = stmt.executeQuery("select p.*, n.neg_logo,n.neg_nombre, d.dis_nombre from producto p inner join Negocio n on p.neg_id = n.neg_id"
                                            + " inner join Disponibilidad d on p.dis_id = d.dis_id where p.pro_activo = true and p.neg_id=" + id + ";");
                                }

                                while (rs.next()) {

                                    String fotop = rs.getString("pro_imagen");
                                    String foton = rs.getString("neg_logo");
                                    String nombre = rs.getString("pro_nombre");
                                    String desc = rs.getString("pro_descripcion");
                                    int precio = rs.getInt("pro_precio");
                                    String disponibilidad = rs.getString("dis_nombre");
                                    String nombren = rs.getString("neg_nombre");
                                    int idp = rs.getInt("pro_id");

                            %>
                            <div class="busq_pr_cons busq_pr" id="pro_cons">
                                <input class="d-none disponibilidad_prepro" type="text" value="<%=disponibilidad%>" disabled>
                                <button class="d-none" type="submit" id="btn_smt_pro"></button>
                                <img class="img_pro_busq ipb1" src="<%=fotop%>"/>
                                <section class="ivbs" id="ivsy">
                                    <span id="ivsy">De: <span class="nn_prepro"><%=nombren%></span></span>
                                    <img class="img_vd_busq ivb1" src="<%=foton%>"/>
                                </section>
                                <img class="img_pro_busq ipb2" src="<%=foton%>"/>
                                <section class="ivbs ivbsn">
                                    <span>Ofrece: <span class="np_prepro"></span></span>
                                    <img class="img_vd_busq ivb2" src="<%=fotop%>"/>
                                </section>
                                <section
                                    class="num_pro_busq">
                                    <span class="nb_busq nb"><%=nombre%></span>
                                    <span class="des_prepro"><%=desc%></span>
                                    <hr id="lnngbs">
                                    <section class="lkpr_prepro">$<span class="pre_prepro"><%=precio%></span></section>
                                </section>
                                <input type="hidden" class="idn" value="<%=idp%>"/>
                            </div>

                            <%
                                }
                            %>
                        </section>
                        <section class="pre_mypro">
                            <div class="cont_prepro" id="cont_prepro">
                                <div class="cont_prepro_prev">
                                    <img class="img_prepro" src="assets/neg1.jpg" id="img_pro_prepro"/>
                                    <div class="cont_prepro_prev_inf">
                                        <span class="Nom_prepro" id="nom_pro_prepro">Nombre del Producto</span>
                                        <div class="neg_prepro">
                                            <img src="assets/Logo_Icon.png" id="negimg_pro_prepro" alt="alt"/>
                                            <span id="negnom_pro_prepro">Dueño</span>
                                        </div>
                                        <span class="desc_prepro" id="desc_pro_prepro">Descripcion</span>
                                        <hr>
                                        <div class="dispre_prepro">
                                            <span class="disp_prepro" id="disp_pro_prepro">Disponibilidad</span>
                                            <span>$ <span id="pre_pro_prepro"></span></span>
                                        </div>
                                        <div class="btns_prepro">
                                            <form action="action" method="post" class="edit_form_prepro">
                                                <input type="hidden" id="id_edit_prepro" name="idn" value=""/>
                                                <button class="edit_btn_prepro"><i class="bi bi-pencil-square"></i> Editar Datos</button>
                                            </form>
                                            <form action="EliminarProducto" method="post">
                                                <input type="hidden" id="id_elim_prepro" name="idn" value=""/>
                                                <button class="elim_btn_prepro"><i class="bi bi-trash3-fill"></i> Eliminar Producto</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>

    </body>
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
    <script>
        // Activar todos los tooltips
        var tooltips = new bootstrap.Tooltip(document.body, {
            selector: '[data-bs-toggle="tooltip"]',
        });
    </script>
    <%
        } else {
            System.out.println("Error: Sesión no existe");
            response.sendRedirect("index.jsp");
        }
    %>
    <script src="js/producto.js"></script>
</html>