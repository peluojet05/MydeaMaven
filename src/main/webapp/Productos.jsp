<%-- 
    Document   : Productos
    Created on : 12 may 2024, 23:41:38
    Author     : altro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="templates/Referencias/Todas_Ref.jsp"/>
        <title>Mis Productos</title>
    </head>
    <body class="pro_cont">
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
                            <div class="busq_pr_cons busq_pr" id="pro_cons">
                                <input class="d-none disponibilidad_prepro" type="text" value="Disponibilidad del negocio" disabled>
                                <button class="d-none" type="submit" id="btn_smt_pro"></button>
                                <img class="img_pro_busq ipb1" src="assets/eib.png"/>
                                <section class="ivbs" id="ivsy">
                                    <span id="ivsy">De: <span class="nn_prepro">Negocio</span></span>
                                    <img class="img_vd_busq ivb1" src="assets/LogoOG.png"/>
                                </section>
                                <img class="img_pro_busq ipb2" src="assets/LogoOG.png"/>
                                <section class="ivbs ivbsn">
                                    <span>Ofrece: <span class="np_prepro"></span></span>
                                    <img class="img_vd_busq ivb2" src="assets/eib.png"/>
                                </section>
                                <section
                                    class="num_pro_busq">
                                    <span class="nb_busq nb">Titulo</span>
                                    <span class="des_prepro">Descripcion del Producto</span>
                                    <hr id="lnngbs">
                                    <section class="lkpr_prepro">$<span class="pre_prepro">100</span></section>
                                </section>
                                <input type="hidden" class="idn" value="1"/>
                            </div>
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
                                            <a href="Editar_Producto.jsp">
                                                <div action="action" method="post" class="edit_form_prepro">
                                                    <input type="hidden" id="id_edit_prepro" name="idn" value=""/>
                                                    <button class="edit_btn_prepro"><i class="bi bi-pencil-square"></i> Editar Datos</button>
                                                </div>
                                            </a>
                                            <form action="action" method="post">
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
    <script>
        // Activar todos los tooltips
        var tooltips = new bootstrap.Tooltip(document.body, {
            selector: '[data-bs-toggle="tooltip"]',
        });
    </script>
    <script src="js/producto.js"></script>
</html>
