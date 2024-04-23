<%-- 
    Document   : Acciones_Admin
    Created on : 18 abr 2024, 19:48:43
    Author     : altro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="html_accadm">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="templates/Referencias/Todas_Ref.jsp"/>
        <title>Acciones de Administrador</title>
    </head>
    <body class="acc_adm">
        <jsp:include page="templates/Navegadores/Navegador_CA.jsp"/>
        <div class="adm_cont_admin particles-container">
            <div class="adm_cont_admin_btt">
                <section class="sect_btnadmin" id="usu_icon">
                    <section class="btn_acc_adm">
                        <i class="bi bi-hexagon-fill hexagon usu_icon"></i>
                        <section class="txt_btn">
                            <i class="bi bi-people-fill icon_btnadmin"></i>
                        </section>
                    </section>
                    <span class="txt_btn_bttm">Gestión de usuarios</span>
                </section>
                <section class="sect_btnadmin" id="neg_icon">
                    <section class="btn_acc_adm">
                        <i class="bi bi-hexagon-fill hexagon neg_icon"></i>
                        <section class="txt_btn">
                            <i class="bi bi-shop icon_btnadmin"></i>
                        </section>
                    </section>
                    <span class="txt_btn_bttm">Gestión de Negocios</span>
                </section>
                <section class="sect_btnadmin"id="coment_icon">
                    <section class="btn_acc_adm">
                        <i class="bi bi-hexagon-fill hexagon coment_icon"></i>
                        <section class="txt_btn">
                            <i class="bi bi-chat-left-dots-fill icon_btnadmin"></i>
                        </section>
                    </section>
                    <span class="txt_btn_bttm">Gestión de Comentarios</span>
                </section>
                <section class="sect_btnadmin" id="nov_icon">
                    <section class="btn_acc_adm">
                        <i class="bi bi-hexagon-fill hexagon nov_icon"></i>
                        <section class="txt_btn">
                            <i class="bi bi-megaphone-fill icon_btnadmin"></i>
                        </section>
                    </section>
                    <span class="txt_btn_bttm">Gestión de novedades</span>
                </section>
                <section class="sect_btnadmin" id="tick_icon">
                    <section class="btn_acc_adm">
                        <i class="bi bi-hexagon-fill hexagon tick_icon"></i>
                        <section class="txt_btn">
                            <i class="bi bi-envelope-paper-fill icon_btnadmin"></i>
                        </section>
                    </section>
                    <span class="txt_btn_bttm">Gestión de Tickets</span>
                </section>
            </div>
        </div>
        <script src="js/Particles.js"></script>
        <script src="js/acc_adm.js"></script>
    </body>
</html>
