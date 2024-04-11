let busqueda = document.querySelectorAll(".busq_result");
let pro = document.getElementById("Productos_btn_busq");
let neg = document.getElementById("Negocios_btn_busq");
let usu = document.getElementById("Usuarios_btn_busq");
let gen = document.getElementById("General_btn_busq");
let btn_fltr = document.querySelectorAll(".btn_busq");
var modal = document.getElementById("modal");

busqueda.forEach(function (busqueda_b) {
    busqueda_b.addEventListener('click', function () {
        copiarDatos(this);
    });
});

//Funciones de clickeo de Tarjetas
function copiarDatos(clickeado) {
    var id_busq = clickeado.id;
    let nom = clickeado.querySelector(".nb");
    let desc = clickeado.querySelector(".desc_busq");
    var anchoVentana = window.innerWidth;
    switch (id_busq) {
        case "negbusq":
            document.getElementById("dir_vp").textContent = clickeado.querySelector("#dir_neg_busq").textContent;
            document.getElementById("calf_neg_vp").textContent = clickeado.querySelector("#calf_neg_busq").textContent;
            document.getElementById("com_neg_vp").textContent = clickeado.querySelector("#com_neg_busq").textContent;
            document.getElementById("Nomb_pro_vp").textContent = clickeado.querySelector("#nb_busq").textContent;
            document.getElementById("nd_vp").textContent = clickeado.querySelector("#Nom_per_neg_busq").value;
            document.getElementById("id_neg_vp").value = clickeado.querySelector("#id_neg_bus").value;
            document.getElementById("Logo_Negocio_vp").src = clickeado.querySelector("#img_loc_busq").src;
            document.getElementById("fp_neg_vp").src = clickeado.querySelector("#FP_Neg_busq").src;
            document.getElementById("neg_img_vp").src = clickeado.querySelector("#FN_Neg_busq").src;
            document.getElementById("neg_img_vp").style.display = "flex";
            document.getElementById("secc_neg_vp").style.display = "flex";
            document.getElementById("Desc_neg_vp").textContent = clickeado.querySelector("#desc_busq").value;
            
            if(anchoVentana <= 1024){
                document.getElementById("dir_vp_2").textContent = clickeado.querySelector("#dir_neg_busq").textContent;
                document.getElementById("calf_neg_vp_2").textContent = clickeado.querySelector("#calf_neg_busq").textContent;
                document.getElementById("com_neg_vp_2").textContent = clickeado.querySelector("#com_neg_busq").textContent;
                document.getElementById("Nomb_pro_vp_2").textContent = clickeado.querySelector("#nb_busq").textContent;
                document.getElementById("nd_vp_2").textContent = clickeado.querySelector("#Nom_per_neg_busq").value;
                document.getElementById("id_neg_vp_2").value = clickeado.querySelector("#id_neg_bus").value;
                document.getElementById("Logo_Negocio_vp_2").src = clickeado.querySelector("#img_loc_busq").src;
                document.getElementById("fp_neg_vp_2").src = clickeado.querySelector("#FP_Neg_busq").src;
                document.getElementById("neg_img_vp_2").src = clickeado.querySelector("#FN_Neg_busq").src;
                document.getElementById("neg_img_vp_2").style.display = "flex";
                document.getElementById("secc_neg_vp_2").style.display = "flex";
                document.getElementById("Desc_neg_vp_2").textContent = clickeado.querySelector("#desc_busq").value;

                modal.style.display = "flex";
            }
            break;
        case "usubusq":
            let busqueda_usu = clickeado.querySelector("#btn_smt_usu");
            busqueda_usu.click();
            break;
        case "probusq":
            let busqueda_pro = clickeado.querySelector("#btn_smt_pro");
            busqueda_pro.click();
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

let probusq = document.getElementById("probusq");
let txtprobusq = document.getElementById("ivsy");

probusq.addEventListener('mouseover', function() {
  txtprobusq.style.display = 'none';
});

probusq.addEventListener('mouseout', function() {
  txtprobusq.style.display = 'flex';
});

window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
