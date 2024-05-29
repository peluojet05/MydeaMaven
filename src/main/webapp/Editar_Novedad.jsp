<%-- 
    Document   : Editar_Novedad
    Created on : 29 may 2024, 02:13:24
    Author     : altro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="templates/Referencias/Todas_Ref.jsp"/>
        <title>Editar Novedad</title>
    </head>
    <body>
        <jsp:include page="templates/Navegadores/Navegador_CV.jsp"/>
        <div class="Prod_most_espe_edit" id="producto_epecifico">
            <section class="color_sn1 deslizard"></section>
            <section class="color_sn2 deslizard"></section>
            <form action="" class="producto_epecifico_contenedor_edit" id="forme" method="post">
                <section class="btns_pro_most_esp_res">
                    <section class="btn btns_pro_most bpmer_active" id="instr_ednv">Clickea el dato que deseas editar</section>
                </section>
                <div class="Prod_most_espe_cont_edit justify-content-around" id="nov_cont_edt">
                    <div class="w-100 h-100 sep_dis_pro" id="line_nov_edt">
                        <div class="Prod_most_espe_cont1 w-100 h-100" id="Prod_most_espe_cont1">
                            <section class="d-flex flex-column secc_pro_most_espe cont_inpts_edit" id="sect_inf_nove">
                                <span id="txt_np_edit">Nombre de la Novedad:</span>
                                <input type="text" name="nombre" class="inp_np_edit" placeholder="Nombre">
                                <span>Descripción de la Novedad:</span>
                                <textarea class="inp_dp_edit" name="desc" placeholder="" id="desc_nov_edt"></textarea>
                                <button type="submit" id="btnsubmit" class="btn_pro_edit">Actualizar Datos <i class="bi bi-arrow-bar-up"></i></button>
                            </section>
                        </div>
                    </div>
                    <section class="img_pro_mosr_espe_edit Logo_Prev_edit">
                        <span class="txt_img_edit">Imagen de la Novedad:</span>
                        <img class="pre_pro_edit" src="" alt="" id="img_pro_mosr_espe">
                        <input type="file" class="d-none" name="Prod_cnf" id="Prod_cnf" accept="image/png, image/jpeg" />
                        <i class="bi bi-image Plus_L" id="Plus_Prod"></i>
                    </section>
                </div>
                        <input type="hidden" name="anombre" value=""/>
                        <input type="hidden" name="adesc" value=""/>
                        <input type="hidden" name="aprecio" value=""/>
                        <input type="hidden" name="aimg" value=""/>
                        <input type="hidden" name="adisponibilidad" value=""/>
                        <input type="hidden" id="foto" name="img" value=""/>
                        <input type="hidden" name="idp" value=""/>
            </form>
        </div>
        <script src="js/edipro.js"></script>
    </body>
</html>
