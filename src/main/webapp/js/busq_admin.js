let busqueda = document.querySelectorAll(".busq_result");
let pro = document.getElementById("Productos_btn_busq");
let neg = document.getElementById("Negocios_btn_busq");
let usu = document.getElementById("Usuarios_btn_busq");
let ven = document.getElementById("Vendedores_btn_busq");
let com = document.getElementById("Comentarios_btn_busq");
let nov = document.getElementById("Novedades_btn_busq");
let gen = document.getElementById("General_btn_busq");
let btn_fltr = document.querySelectorAll(".btn_busq");
let selectFech = document.getElementById("Creado_AntDes");
let inpFech = document.getElementById("FechaAntDes");
let probusq = document.getElementById("probusq");
let txtprobusq = document.getElementById("ivsy");

busqueda.forEach(function (busqueda_b) {
    busqueda_b.addEventListener('click', function () {
        copiarDatos(this);
    });
});

//Funciones de clickeo de Tarjetas
function copiarDatos(clickeado) {
    var id_busq = clickeado.id;
    switch (id_busq) {
        case "negbusq":
            document.getElementById("dir_vp").textContent = clickeado.querySelector("#dir_neg_busq").textContent;
            document.getElementById("calf_neg_vp").textContent = clickeado.querySelector("#calf_neg_busq").textContent;
            document.getElementById("com_neg_vp").textContent = clickeado.querySelector("#com_neg_busq").textContent;
            document.getElementById("Nomb_pro_vp").textContent = clickeado.querySelector("#nb_busq").textContent;
            document.getElementById("nd_vp").textContent = clickeado.querySelector("#Nom_per_neg_busq").value;
            document.getElementById("Fech_Creacion_busq").value = clickeado.querySelector("#fecha_inp_busq").value;
            document.getElementById("id_neg_vp").value = clickeado.querySelector("#id_neg_bus").value;
            document.getElementById("Logo_Negocio_vp").src = clickeado.querySelector("#img_loc_busq").src;
            document.getElementById("fp_neg_vp").src = clickeado.querySelector("#FP_Neg_busq").src;
            document.getElementById("neg_img_vp").src = clickeado.querySelector("#FN_Neg_busq").src;
            document.getElementById("neg_img_vp").style.display = "flex";
            document.getElementById("secc_neg_vp").style.display = "flex";
            document.getElementById("secc_usuv_vp").style.display = "none";
            document.getElementById("secc_usu_vp").style.display = "none";
            document.getElementById("secc_pro_vp").style.display = "none";
            document.getElementById("secc_com_vp").style.display = "none";
            document.getElementById("secc_nov_vp").style.display = "none";
            document.getElementById("Desc_neg_vp").textContent = clickeado.querySelector("#desc_busq").value;
            break;
        case "usubusq":
            document.getElementById("neg_img_vp").src = clickeado.querySelector("#usu_img_busq").src;
            document.getElementById("Fech_Creacion_busq_usu").value = clickeado.querySelector("#fecha_inp_busq").value;
            document.getElementById("id_usu_vp").value = clickeado.querySelector("#idu").value;
            document.getElementById("neg_img_vp").style.display = "flex";
            document.getElementById("secc_usu_vp").style.display = "flex";
            document.getElementById("secc_usuv_vp").style.display = "none";
            document.getElementById("secc_neg_vp").style.display = "none";
            document.getElementById("secc_pro_vp").style.display = "none";
            document.getElementById("secc_com_vp").style.display = "none";
            document.getElementById("secc_nov_vp").style.display = "none";
            document.getElementById("Nombcom_usu_vp").textContent = clickeado.querySelector("#Nombre_comp_usu").value;
            document.getElementById("Nom_usu_vp").textContent = clickeado.querySelector("#nom_usu_ck").value;
            document.getElementById("calf_usu_vp").textContent = clickeado.querySelector("#nlu_usu").value;
            document.getElementById("com_usu_vp").textContent = clickeado.querySelector("#ncu_usu").value;
            document.getElementById("fp_usu_vp").src = clickeado.querySelector("#usu_img_busq").src;
            document.getElementById("Desc_usu_vp").textContent = clickeado.querySelector("#desc_busq_usu").textContent;
            break;
        case "vendbusq":
            document.getElementById("neg_img_vp").src = clickeado.querySelector("#usu_img_busq").src;
            document.getElementById("id_usuv_vp").value = clickeado.querySelector("#idu").value;
            document.getElementById("Fech_Creacion_busq_usuv").value = clickeado.querySelector("#fecha_inp_busq").value;
            document.getElementById("neg_img_vp").style.display = "flex";
            document.getElementById("secc_usuv_vp").style.display = "flex";
            document.getElementById("secc_usu_vp").style.display = "none";
            document.getElementById("secc_neg_vp").style.display = "none";
            document.getElementById("secc_pro_vp").style.display = "none";
            document.getElementById("secc_com_vp").style.display = "none";
            document.getElementById("secc_nov_vp").style.display = "none";
            document.getElementById("Nombcom_usuv_vp").textContent = clickeado.querySelector("#Nombre_comp_usuv").value;
            document.getElementById("Nom_usuv_vp").textContent = clickeado.querySelector("#nom_usu_ck").value;
            document.getElementById("nnuv_vp").textContent = clickeado.querySelector("#nnuv_usu").value;
            document.getElementById("calf_usuv_vp").textContent = clickeado.querySelector("#nluv_usu").value;
            document.getElementById("com_usuv_vp").textContent = clickeado.querySelector("#ncuv_usu").value;
            document.getElementById("fp_usuv_vp").src = clickeado.querySelector("#usu_img_busq").src;
            document.getElementById("Desc_usuv_vp").textContent = clickeado.querySelector("#desc_busq_usu").textContent;
            break;
        case "probusq":
            document.getElementById("neg_img_vp").src = clickeado.querySelector("#img_pro_busq").src;
            document.getElementById("id_pro_vp").value = clickeado.querySelector("#idn_pro").value;
            document.getElementById("Fech_Creacion_busq_pro").value = clickeado.querySelector("#fecha_inp_busq").value;
            document.getElementById("neg_img_vp").style.display = "flex";
            document.getElementById("secc_usuv_vp").style.display = "none";
            document.getElementById("secc_usu_vp").style.display = "none";
            document.getElementById("secc_pro_vp").style.display = "flex";
            document.getElementById("secc_neg_vp").style.display = "none";
            document.getElementById("secc_com_vp").style.display = "none";
            document.getElementById("secc_nov_vp").style.display = "none";
            document.getElementById("Nom_pro_vp").textContent = clickeado.querySelector("#nb_busq").textContent;
            document.getElementById("fp_pro_vp").src = clickeado.querySelector("#img_vd_busq").src;
            document.getElementById("Nombcom_pro_vp").textContent = clickeado.querySelector("#nom_neg_ofr").value;
            document.getElementById("Desc_pro_vp").textContent = clickeado.querySelector("#desc_pro").textContent;
            document.getElementById("prec_pro_vp").textContent = clickeado.querySelector("#pre_pro").textContent;
            break;
        case "combusq":
            document.getElementById("neg_img_vp").style.display = "flex";
            document.getElementById("secc_usuv_vp").style.display = "none";
            document.getElementById("secc_usu_vp").style.display = "none";
            document.getElementById("secc_pro_vp").style.display = "none";
            document.getElementById("secc_neg_vp").style.display = "none";
            document.getElementById("secc_neg_vp").style.display = "none";
            document.getElementById("secc_com_vp").style.display = "flex";
            document.getElementById("secc_nov_vp").style.display = "none";
            document.getElementById("fp_com_vp").src = clickeado.querySelector("#img_perf_com").src;
            document.getElementById("Nombcom_com_vp").textContent = clickeado.querySelector("#nom_usu_com").textContent;
            document.getElementById("Nom_com_vp").textContent = clickeado.querySelector("#nom_neg_com").value;
            document.getElementById("neg_img_vp").src = clickeado.querySelector("#log_neg_com").src;
            document.getElementById("fp_com_vp").src = clickeado.querySelector("#img_perf_com").src;
            document.getElementById("Fech_Creacion_busq_com").value = clickeado.querySelector("#fecha_inp_busq").value;
            document.getElementById("Desc_com_vp").textContent = clickeado.querySelector("#coment_desc").textContent;
            document.getElementById("id_com_vp").value = clickeado.querySelector("#idn_com").value;
            break;
        case "novbusq":
            document.getElementById("neg_img_vp").style.display = "flex";
            document.getElementById("secc_usuv_vp").style.display = "none";
            document.getElementById("secc_usu_vp").style.display = "none";
            document.getElementById("secc_pro_vp").style.display = "none";
            document.getElementById("secc_neg_vp").style.display = "none";
            document.getElementById("secc_neg_vp").style.display = "none";
            document.getElementById("secc_com_vp").style.display = "none";
            document.getElementById("secc_nov_vp").style.display = "flex";
            document.getElementById("fp_nov_vp").src = clickeado.querySelector("#img_nov_neg").src;
            document.getElementById("Nombcom_nov_vp").textContent = clickeado.querySelector("#tt_nov_bus").textContent;
            document.getElementById("Nom_nov_vp").textContent = clickeado.querySelector("#tt_nov_esp").textContent;
            document.getElementById("neg_img_vp").src = clickeado.querySelector("#img_nov").src;
            document.getElementById("Fech_Creacion_busq_nov").value = clickeado.querySelector("#fecha_inp_busq").value;
            document.getElementById("cont_nov_vp").textContent = clickeado.querySelector("#desc_nov_busq").textContent;
            document.getElementById("id_nov_vp").value = clickeado.querySelector("#idn_nov").value;
            break;
    }
}

pro.addEventListener("click", () => {
    busqueda.forEach(function (pro) {
        if (pro.id == "probusq") {
            pro.style.display = "flex";
        } else {
            pro.style.display = "none";
        }
    });
});

neg.addEventListener("click", () => {
    busqueda.forEach(function (neg) {
        if (neg.id == "negbusq") {
            neg.style.display = "flex";
        } else {
            neg.style.display = "none";
        }
    });
});

usu.addEventListener("click", () => {
    busqueda.forEach(function (usu) {
        if (usu.id == "usubusq") {
            usu.style.display = "flex";
        } else {
            usu.style.display = "none";
        }
    });
});

ven.addEventListener("click", () => {
    busqueda.forEach(function (ven) {
        if (ven.id == "vendbusq") {
            ven.style.display = "flex";
        } else {
            ven.style.display = "none";
        }
    });
});

com.addEventListener("click", () => {
    busqueda.forEach(function (com) {
        if (com.id == "combusq") {
            com.style.display = "flex";
        } else {
            com.style.display = "none";
        }
    });
});

nov.addEventListener("click", () => {
    busqueda.forEach(function (nov) {
        if (nov.id == "novbusq") {
            nov.style.display = "flex";
        } else {
            nov.style.display = "none";
        }
    });
});

gen.addEventListener("click", () => {
    busqueda.forEach(function (gen) {
        gen.style.display = "flex";
    });
});

btn_fltr.forEach(btn => {
    btn.addEventListener('click', function () {
        btn_fltr.forEach(b => {
            b.style.backgroundColor = "white";
            b.style.color = "black";
        });
        this.style.color = "white";
        this.style.backgroundColor = 'black';
    });
});

probusq.addEventListener('mouseover', function () {
    txtprobusq.style.display = 'none';
});

probusq.addEventListener('mouseout', function () {
    txtprobusq.style.display = 'flex';
});

selectFech.addEventListener('change', () => {
    inpFech.removeAttribute('disabled');
    if (inpFech.value !== "" && inpFech.value !== "null") {
        var nf = inpFech.value;
        var sf = selectFech.value;
        FechaCreacion(nf, sf);
    }
});

inpFech.addEventListener('change', () => {
    if (selectFech.value !== "" && selectFech.value !== "null" && selectFech.value !== "Seleccione Fecha") {
        if (selectFech.value == "AntesDe" || selectFech.value == "DespuesDe") {
            var nf = inpFech.value;
            var sf = selectFech.value;
            FechaCreacion(nf, sf);
        }
    }
});

function FechaCreacion(inpFech, selectFech) {
    busqueda.forEach(function (busq) {
        let fecha = busq.querySelector("#fecha_inp_busq").value;
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