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
            <section class="color_pro1"></section>
            <section class="color_pro2"></section>
            <div class="content_form w-100">
                <section class="d-flex align-items-center p1_cnf">
                    <span class="txt_prin_cnf fw-bolder">Consulta, Edita y/o Elimina tus Productos</span>
                    <i class="bi bi-question-circle quicon_cnf_lg" data-bs-toggle="tooltip" data-bs-placement="right"
                       data-bs-title="Tooltip on right"></i>
                </section>
                <div class="p2_cnf d-flex flex-column Products_cont" method="post" id="FORM_CNF">
                    <section class="txt_pro_cont">
                        <span>Productos</span>
                        <span>Previzualización</span>
                    </section>
                    <div class="cons_pro">
                        <section class="prod_cons_most">
                            <form class="busq_pr_cons busq_pr" id="pro_cons" method="post" action="" >
                                <input class="d-none" type="text" disabled>
                                <button class="d-none" type="submit" id="btn_smt_pro"></button>
                                <img class="img_pro_busq ipb1" src=""/>
                                <section class="ivbs" id="ivsy">
                                    <span id="ivsy">De: Negocio</span>
                                    <img class="img_vd_busq ivb1" src=""/>
                                </section>
                                <img class="img_pro_busq ipb2" src=""/>
                                <section class="ivbs ivbsn">
                                    <span>Ofrece: Producto</span>
                                    <img class="img_vd_busq ivb2" src=""/>
                                </section>
                                <section
                                    class="num_pro_busq">
                                    <span class="nb_busq nb">Titulo</span>
                                    <span>Descripcion</span>
                                    <hr id="lnngbs">
                                    <section class="lkpr">
                                        <span>$100</span>
                                    </section>
                                </section>
                                <input type="hidden" name="idn" value=""/>
                            </form>
                            <form class="busq_pr_cons busq_pr" id="pro_cons" method="post" action="" >
                                <input class="d-none" type="text" disabled>
                                <button class="d-none" type="submit" id="btn_smt_pro"></button>
                                <img class="img_pro_busq ipb1" src=""/>
                                <section class="ivbs" id="ivsy">
                                    <span id="ivsy">De: Negocio</span>
                                    <img class="img_vd_busq ivb1" src=""/>
                                </section>
                                <img class="img_pro_busq ipb2" src=""/>
                                <section class="ivbs ivbsn">
                                    <span>Ofrece: Producto</span>
                                    <img class="img_vd_busq ivb2" src=""/>
                                </section>
                                <section
                                    class="num_pro_busq">
                                    <span class="nb_busq nb">Titulo</span>
                                    <span>Descripcion</span>
                                    <hr id="lnngbs">
                                    <section class="lkpr">
                                        <span>$100</span>
                                    </section>
                                </section>
                                <input type="hidden" name="idn" value=""/>
                            </form>
                            <form class="busq_pr_cons busq_pr" id="pro_cons" method="post" action="" >
                                <input class="d-none" type="text" disabled>
                                <button class="d-none" type="submit" id="btn_smt_pro"></button>
                                <img class="img_pro_busq ipb1" src=""/>
                                <section class="ivbs" id="ivsy">
                                    <span id="ivsy">De: Negocio</span>
                                    <img class="img_vd_busq ivb1" src=""/>
                                </section>
                                <img class="img_pro_busq ipb2" src=""/>
                                <section class="ivbs ivbsn">
                                    <span>Ofrece: Producto</span>
                                    <img class="img_vd_busq ivb2" src=""/>
                                </section>
                                <section
                                    class="num_pro_busq">
                                    <span class="nb_busq nb">Titulo</span>
                                    <span>Descripcion</span>
                                    <hr id="lnngbs">
                                    <section class="lkpr">
                                        <span>$100</span>
                                    </section>
                                </section>
                                <input type="hidden" name="idn" value=""/>
                            </form>
                            <form class="busq_pr_cons busq_pr" id="pro_cons" method="post" action="" >
                                <input class="d-none" type="text" disabled>
                                <button class="d-none" type="submit" id="btn_smt_pro"></button>
                                <img class="img_pro_busq ipb1" src=""/>
                                <section class="ivbs" id="ivsy">
                                    <span id="ivsy">De: Negocio</span>
                                    <img class="img_vd_busq ivb1" src=""/>
                                </section>
                                <img class="img_pro_busq ipb2" src=""/>
                                <section class="ivbs ivbsn">
                                    <span>Ofrece: Producto</span>
                                    <img class="img_vd_busq ivb2" src=""/>
                                </section>
                                <section
                                    class="num_pro_busq">
                                    <span class="nb_busq nb">Titulo</span>
                                    <span>Descripcion</span>
                                    <hr id="lnngbs">
                                    <section class="lkpr">
                                        <span>$100</span>
                                    </section>
                                </section>
                                <input type="hidden" name="idn" value=""/>
                            </form>
                            <form class="busq_pr_cons busq_pr" id="pro_cons" method="post" action="" >
                                <input class="d-none" type="text" disabled>
                                <button class="d-none" type="submit" id="btn_smt_pro"></button>
                                <img class="img_pro_busq ipb1" src=""/>
                                <section class="ivbs" id="ivsy">
                                    <span id="ivsy">De: Negocio</span>
                                    <img class="img_vd_busq ivb1" src=""/>
                                </section>
                                <img class="img_pro_busq ipb2" src=""/>
                                <section class="ivbs ivbsn">
                                    <span>Ofrece: Producto</span>
                                    <img class="img_vd_busq ivb2" src=""/>
                                </section>
                                <section
                                    class="num_pro_busq">
                                    <span class="nb_busq nb">Titulo</span>
                                    <span>Descripcion</span>
                                    <hr id="lnngbs">
                                    <section class="lkpr">
                                        <span>$100</span>
                                    </section>
                                </section>
                                <input type="hidden" name="idn" value=""/>
                            </form>
                            <form class="busq_pr_cons busq_pr" id="pro_cons" method="post" action="" >
                                <input class="d-none" type="text" disabled>
                                <button class="d-none" type="submit" id="btn_smt_pro"></button>
                                <img class="img_pro_busq ipb1" src=""/>
                                <section class="ivbs" id="ivsy">
                                    <span id="ivsy">De: Negocio</span>
                                    <img class="img_vd_busq ivb1" src=""/>
                                </section>
                                <img class="img_pro_busq ipb2" src=""/>
                                <section class="ivbs ivbsn">
                                    <span>Ofrece: Producto</span>
                                    <img class="img_vd_busq ivb2" src=""/>
                                </section>
                                <section
                                    class="num_pro_busq">
                                    <span class="nb_busq nb">Titulo</span>
                                    <span>Descripcion</span>
                                    <hr id="lnngbs">
                                    <section class="lkpr">
                                        <span>$100</span>
                                    </section>
                                </section>
                                <input type="hidden" name="idn" value=""/>
                            </form>
                            <form class="busq_pr_cons busq_pr" id="pro_cons" method="post" action="" >
                                <input class="d-none" type="text" disabled>
                                <button class="d-none" type="submit" id="btn_smt_pro"></button>
                                <img class="img_pro_busq ipb1" src=""/>
                                <section class="ivbs" id="ivsy">
                                    <span id="ivsy">De: Negocio</span>
                                    <img class="img_vd_busq ivb1" src=""/>
                                </section>
                                <img class="img_pro_busq ipb2" src=""/>
                                <section class="ivbs ivbsn">
                                    <span>Ofrece: Producto</span>
                                    <img class="img_vd_busq ivb2" src=""/>
                                </section>
                                <section
                                    class="num_pro_busq">
                                    <span class="nb_busq nb">Titulo</span>
                                    <span>Descripcion</span>
                                    <hr id="lnngbs">
                                    <section class="lkpr">
                                        <span>$100</span>
                                    </section>
                                </section>
                                <input type="hidden" name="idn" value=""/>
                            </form>
                        </section>
                        <section></section>
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
</html>
