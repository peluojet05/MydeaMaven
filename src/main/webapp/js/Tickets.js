let ticket = document.querySelectorAll(".ticket_prev");
let select_prioridad = document.getElementById("filtr_pri");
let select_tema = document.getElementById("filtr_tem");
let select_estado = document.getElementById("filtr_est");
let selectFech = document.getElementById("filtr_fech");
let inpFech = document.getElementById("fech_admin");
let viz_ticket = document.getElementById("ticket_viz");
let edit_ticket = document.getElementById("edicion_tick");
let Tema = document.getElementById("Tem_tick_viz");
let Prioridad = document.getElementById("Pri_tick_viz");
let Estado = document.getElementById("Est_tick_viz");
let Descripcion = document.getElementById("Des_tick_viz");
let edit_tem = document.getElementById("edit_tem");
let edit_pri = document.getElementById("edit_pri");
let edit_est = document.getElementById("edit_est");
let edit_com = document.getElementById("edit_com");
let Cancelar = document.querySelectorAll(".btn_canc_adm");
let tt_form = document.getElementById("tt_form");
let amd_tem = document.getElementById("amd_tem");
let amd_pri = document.getElementById("amd_pri");
let amd_est = document.getElementById("amd_est");
let cambiar_tem = document.getElementById("filtr_tem_edt");
let pri_baj_edt = document.getElementById("pri_baj_edt");
let pri_med_edt = document.getElementById("pri_med_edt");
let pri_alt_edt = document.getElementById("pri_alt_edt");
let form_edit = document.getElementById("form_ed_tick");
let est_abi_edt = document.getElementById("est_abi_edt");
let est_pro_edt = document.getElementById("est_pro_edt");
let est_cer_edt = document.getElementById("est_cer_edt");
let Desc_edt = document.getElementById("Desc_edt");
let btn_env_adm = document.getElementById("btn_env_adm");
var ListaOg = [];
let filtros = document.querySelectorAll(".select_adm");

filtros.forEach(function (sel) {
    sel.addEventListener("change", function () {
        sel.style.background = "rgba(255, 255, 255, 0.3)";
        sel.style.color = "#fff";
        sel.style.fontWeight = "bolder";
    });
});

/*btn_env_adm.addEventListener("click", function () {
 edit_com_inp.value = Desc_edt.value;
 });
 
 est_abi_edt.addEventListener("click", function () {
 edit_est_inp.value = "Abierto";
 });
 
 est_pro_edt.addEventListener("click", function () {
 edit_est_inp.value = "En Proceso";
 });
 
 est_cer_edt.addEventListener("click", function () {
 edit_est_inp.value = "Cerrado";
 });*/

form_edit.addEventListener('submit', function (event) {
    event.preventDefault();
    Swal.fire({
        title: "¿ESTÁ SEGURO DE REALIZAR ESTE CAMBIO?",
        text: 'Puede modificar aún este cambio despues pero por lo mientras los demás adminsitradores veran el ticket con la información puesta.',
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "rgba(244, 55, 112, 0.8)",
        cancelButtonColor: "#971A40",
        confirmButtonText: "Aceptar",
        cancelButtonText: "Cancelar"
    }).then((result) => {
        if (result.isConfirmed) {
            form_edit.submit();
        }
    });
});

Tema.addEventListener("click", function () {
    edit_ticket.style.display = "flex";
    edit_tem.style.display = "flex";
    edit_pri.style.display = "none";
    edit_est.style.display = "none";
    edit_com.style.display = "none";
    tt_form.textContent = "EDITAR TEMA DEL TICKET";
});

/*cambiar_tem.addEventListener("change", function () {
 document.getElementById("tem_edt").value = cambiar_tem.value;
 });
 
 pri_baj_edt.addEventListener("click", function () {
 edit_pri_inp.value = "Bajo";
 });
 
 pri_med_edt.addEventListener("click", function () {
 edit_pri_inp.value = "Media";
 });
 
 pri_alt_edt.addEventListener("click", function () {
 edit_pri_inp.value = "Alta";
 });*/

Prioridad.addEventListener("click", function () {
    edit_ticket.style.display = "flex";
    edit_tem.style.display = "none";
    edit_pri.style.display = "flex";
    edit_est.style.display = "none";
    edit_com.style.display = "none";
    tt_form.textContent = "EDITAR PRIORIDAD DEL TICKET";
});

Estado.addEventListener("click", function () {
    edit_ticket.style.display = "flex";
    edit_tem.style.display = "none";
    edit_pri.style.display = "none";
    edit_est.style.display = "flex";
    edit_com.style.display = "none";
    tt_form.textContent = "EDITAR ESTADO DEL TICKET";
});

Descripcion.addEventListener("click", function () {
    edit_ticket.style.display = "flex";
    edit_tem.style.display = "none";
    edit_pri.style.display = "none";
    edit_est.style.display = "none";
    edit_com.style.display = "flex";
    tt_form.textContent = "EDITAR COMENTARIO DEL TICKET";
});

edit_ticket.addEventListener("click", (e) => {
    if (e.target === edit_ticket) {
        edit_ticket.style.display = "none";
        /*document.getElementById("tem_edt").value = ListaOg[0];
         edit_pri_inp.value = ListaOg[1];
         edit_est_inp.value = ListaOg[2];
         edit_com_inp.value = ListaOg[3];*/
    }
});

Cancelar.forEach(function (cancel) {
    cancel.addEventListener("click", () => {
        edit_ticket.style.display = "none";
        /*document.getElementById("tem_edt").value = ListaOg[0];
         edit_pri_inp.value = ListaOg[1];
         edit_est_inp.value = ListaOg[2];
         edit_com_inp.value = ListaOg[3];*/
    });
});

ticket.forEach(function (ticket_click) {
    ticket_click.addEventListener("click", function () {
        CopiarDatosTicket(this);
        viz_ticket.style.display = "flex";
    });
});

function CopiarDatosTicket(ticket_clickeado) {
    switch (ticket_clickeado.querySelector("#Estado").value) {
        case "En Proceso":
            document.getElementById("tt_tick_viz").style.background = "#FFA000";
            break;
        case "Abierto":
            document.getElementById("tt_tick_viz").style.background = "#24b240";
            break;
        case "Cerrado":
            document.getElementById("tt_tick_viz").style.background = "#c02e2e";
            break;
    }
    document.getElementById("tt_tick_viz").textContent = ticket_clickeado.querySelector("#tt_tick_prev").textContent;
  
    document.getElementById("prueba2").value = ticket_clickeado.querySelector("#Tema").value;
    
    document.getElementById("prueba5").value = ticket_clickeado.querySelector("#Desc_tick").textContent;
    
    document.getElementById("prueba3").value = ticket_clickeado.querySelector("#Prioridad").value;
    
    document.getElementById("prueba4").value = ticket_clickeado.querySelector("#Estado").value;
    
    document.getElementById("prueba").value = ticket_clickeado.querySelector("#id_ticket_prev").value;

    document.getElementById("img_ticket").src = ticket_clickeado.querySelector("#img_ticket_prev").src;

    let Tema = ticket_clickeado.querySelector("#Tema").value;
    switch (Tema) {
        case "Negocio":
            document.getElementById("Tem_tick_viz").textContent = "No se creó de forma correcta mi negocio, producto o novedad o no se ven datos/imagenes en estos";
            //document.getElementById("tem_edt").value = "Negocio";
            amd_tem.textContent = "Tema Actual: No se creó de forma correcta mi negocio, producto o novedad o no se ven datos/imagenes en estos";
            break;
        case "Desconocido":
            document.getElementById("Tem_tick_viz").textContent = "Tengo un error desconocido.";
            //document.getElementById("tem_edt").value = "Desconocido";
            amd_tem.textContent = "Tema Actual: Tengo un error desconocido.";
            break;
        case "Ejecucion":
            //document.getElementById("tem_edt").value = "Ejecucion";
            document.getElementById("Tem_tick_viz").textContent = "La pagina web o algunas de las funcionalidades de este no se ejecutan correctamente.";
            amd_tem.textContent = "Tema Actual: La pagina web o algunas de las funcionalidades de este no se ejecutan correctamente.";
            break;
        case "Editar":
            //document.getElementById("tem_edt").value = "Editar";
            document.getElementById("Tem_tick_viz").textContent = "No se edito de forma correcta mi perfil, negocio, producto o novedad.";
            amd_tem.textContent = "Tema Actual: No se edito de forma correcta mi perfil, negocio, producto o novedad.";
            break;
        case "Error":
            //document.getElementById("tem_edt").value = "Error";
            document.getElementById("Tem_tick_viz").textContent = "Me aparece una pagina de error al momento de cambiar de pagina.";
            amd_tem.textContent = "Tema Actual: Me aparece una pagina de error al momento de cambiar de pagina.";
            break;
        case "Cuentas":
            //document.getElementById("tem_edt").value = "Cuentas";
            document.getElementById("Tem_tick_viz").textContent = "Tengo problemas con mi cuenta o me gustria combiar mi tipo de usuario.";
            amd_tem.textContent = "Tema Actual: Tengo problemas con mi cuenta o me gustria combiar mi tipo de usuario.";
            break;
        case "Funcionamiento":
            //document.getElementById("tem_edt").value = "Funcionamiento";
            document.getElementById("Tem_tick_viz").textContent = "Tengo una duda respecto al funcionamiento de la pagina web.";
            amd_tem.textContent = "Tema Actual: Tengo una duda respecto al funcionamiento de la pagina web.";
            break;
        case "Otro":
            //document.getElementById("tem_edt").value = "Otro";
            document.getElementById("Tem_tick_viz").textContent = "Otro";
            amd_tem.textContent = "Tema Actual: Otro.";
            break;
    }

    document.getElementById("Pri_tick_viz").textContent = "Prioridad: " + ticket_clickeado.querySelector("#Prioridad").value;
    //edit_pri_inp.value = ticket_clickeado.querySelector("#Prioridad").value;

    document.getElementById("Est_tick_viz").textContent = "Estado: " + ticket_clickeado.querySelector("#Estado").value;
    //edit_est_inp.value = ticket_clickeado.querySelector("#Estado").value;

    document.getElementById("fecha_tick_viz").textContent = ticket_clickeado.querySelector("#Fecha_tick").value;

    document.getElementById("descreal").textContent = ticket_clickeado.querySelector("#descrealticket").value;

    document.getElementById("Des_tick_viz").textContent = ticket_clickeado.querySelector("#Desc_tick").textContent;
    document.getElementById("Desc_edt").value = ticket_clickeado.querySelector("#Desc_tick").textContent;
    //edit_com_inp.value = ticket_clickeado.querySelector("#Desc_tick").textContent;

    let Tem_list = ticket_clickeado.querySelector("#Tema").value;
    let Prioridad_list = ticket_clickeado.querySelector("#Prioridad").value;
    let Estado_list = ticket_clickeado.querySelector("#Estado").value;
    let Desc_list = ticket_clickeado.querySelector("#Desc_tick").textContent;

    ListaOg = [Tem_list, Prioridad_list, Estado_list, Desc_list];

    return ListaOg;
}

viz_ticket.addEventListener("click", (e) => {
    if (e.target === viz_ticket) {
        viz_ticket.style.display = "none";
    }
});

select_prioridad.addEventListener("change", () => {
    Filtros();
});
select_tema.addEventListener("change", () => {
    Filtros();
});
select_estado.addEventListener("change", () => {
    Filtros();
});

function Filtros() {
    ticket.forEach(function (ticket_click) {
        let Prioridad = ticket_click.querySelector("#Prioridad").value;
        let Tema = ticket_click.querySelector("#Tema").value;
        let Estado = ticket_click.querySelector("#Estado").value;

        if (select_prioridad.value !== "Filtrar por Prioridad" && select_prioridad.value !== "General" && (select_tema.value == "Filtrar por Tema" || select_tema.value == "General") && (select_estado.value == "Filtrar por Estado" || select_estado.value == "General")) {
            //Filtros activados: Prioridad
            if (Prioridad == select_prioridad.value) {
                ticket_click.style.display = "flex";
            } else {
                ticket_click.style.display = "none";
            }
        } else if ((select_prioridad.value == "Filtrar por Prioridad" || select_prioridad.value == "General") && select_tema.value !== "Filtrar por Tema" && select_tema.value !== "General" && (select_estado.value == "Filtrar por Estado" || select_estado.value == "General")) {
            //Filtros activados: Tema
            if (Tema == select_tema.value) {
                ticket_click.style.display = "flex";
            } else {
                ticket_click.style.display = "none";
            }
        } else if ((select_prioridad.value == "Filtrar por Prioridad" || select_prioridad.value == "General") && (select_tema.value == "Filtrar por Tema" || select_tema.value == "General") && select_estado.value !== "Filtrar por Estado" && select_estado.value !== "General") {
            //Filtros activados: Estado
            if (Estado == select_estado.value) {
                ticket_click.style.display = "flex";
            } else {
                ticket_click.style.display = "none";
            }
        } else if (select_prioridad.value == "Filtrar por Prioridad" && select_tema.value == "Filtrar por Tema" && select_estado.value == "General") {
            //Filtros activados: Estado General
            ticket_click.style.display = "flex";
        } else if (select_prioridad.value == "General" && select_tema.value == "Filtrar por Tema" && select_estado.value == "Filtrar por Estado") {
            //Filtros activados: Prioridad General
            ticket_click.style.display = "flex";
        } else if (select_prioridad.value == "Filtrar por Prioridad" && select_tema.value == "General" && select_estado.value == "Filtrar por Estado") {
            //Filtros activados: Tema General
            ticket_click.style.display = "flex";
        } else if (select_prioridad.value == "General" && select_tema.value == "Filtrar por Tema" && select_estado.value == "General") {
            //Filtros activados: Estado y Prioridad General
            ticket_click.style.display = "flex";
        } else if (select_prioridad.value == "General" && select_tema.value == "General" && select_estado.value == "Filtrar por Estado") {
            //Filtros activados: Prioridad y Tema General
            ticket_click.style.display = "flex";
        } else if (select_prioridad.value == "Filtrar por Prioridad" && select_tema.value == "General" && select_estado.value == "General") {
            //Filtros activados: Tema y Estado General
            ticket_click.style.display = "flex";
        } else if (select_prioridad.value == "General" && select_tema.value == "General" && select_estado.value == "General") {
            //Filtros activados: TODOS GENERAL
            ticket_click.style.display = "flex";
        } else if (select_prioridad.value !== "Filtrar por Prioridad" && select_prioridad.value !== "General" && select_tema.value !== "Filtrar por Tema" && select_tema.value !== "General" && (select_estado.value == "Filtrar por Estado" || select_estado.value == "General")) {
            //Filtros activados: Prioridad y Tema
            if (Prioridad == select_prioridad.value && Tema == select_tema.value) {
                ticket_click.style.display = "flex";
            } else {
                ticket_click.style.display = "none";
            }
        } else if (select_prioridad.value !== "Filtrar por Prioridad" && select_prioridad.value !== "General" && (select_tema.value == "Filtrar por Tema" || select_tema.value == "General") && select_estado.value !== "Filtrar por Estado" && select_estado.value !== "General") {
            //Filtros activados: Prioridad y Estado
            if (Prioridad == select_prioridad.value && Estado == select_estado.value) {
                ticket_click.style.display = "flex";
            } else {
                ticket_click.style.display = "none";
            }
        } else if ((select_prioridad.value == "Filtrar por Prioridad" || select_prioridad.value == "General") && select_tema.value !== "Filtrar por Tema" && select_estado.value !== "Filtrar por Estado" && select_tema.value !== "General" && select_estado.value !== "General") {
            //Filtros activados: Tema y Estado
            if (Tema == select_tema.value && Estado == select_estado.value) {
                ticket_click.style.display = "flex";
            } else {
                ticket_click.style.display = "none";
            }
        } else if ((select_prioridad.value !== "Filtrar por Prioridad" || select_prioridad.value !== "General") && (select_tema.value !== "Filtrar por Tema" || select_tema.value !== "General") && (select_estado.value !== "Filtrar por Estado" || select_estado.value !== "General")) {
            //Filtros activados: TODOS
            if (Prioridad == select_prioridad.value && Tema == select_tema.value && Estado == select_estado.value) {
                ticket_click.style.display = "flex";
            } else {
                ticket_click.style.display = "none";
            }
        }
    });
}

//BUSCADOR EN TIEMPO REAL
$(document).ready(function () {
    $('#bus_admin_acc').on('keyup', function () {
        var textoBusqueda = $(this).val().toLowerCase();

        $('#tickets_container .ticket_prev').each(function () {
            var textoDiv = $(this).find('.tt_tick_prev ').text().toLowerCase();

            if (textoDiv.includes(textoBusqueda)) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
    });
});

//Filtro Fechas

selectFech.addEventListener('change', () => {
    inpFech.removeAttribute('disabled');
    if (inpFech.value !== "" && inpFech.value !== "null") {
        var nf = inpFech.value;
        var sf = selectFech.value;
        FechaCreacion(nf, sf);
    }
});


function FechaCreacion(inpFech, selectFech) {
    ticket.forEach(function (busq) {
        let fecha = busq.querySelector("#Fecha_tick").value;
        var fechaObjeto1 = new Date(inpFech);
        var fechaObjeto2 = new Date(fecha);
        switch (selectFech) {
            case "AntesDe":
                if (fechaObjeto1 >= fechaObjeto2) {
                    busq.style.display = "flex";
                } else if (fechaObjeto1 < fechaObjeto2) {
                    busq.style.display = "none";
                }
                break;
            case "DespuesDe":
                if (fechaObjeto1 <= fechaObjeto2) {
                    busq.style.display = "flex";
                } else if (fechaObjeto1 > fechaObjeto2) {
                    busq.style.display = "none";
                }
                break;
             }
        });
}