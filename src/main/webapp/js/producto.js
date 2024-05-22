/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

let productos = document.querySelectorAll(".busq_pr_cons");
let cont_prepro = document.getElementById("cont_prepro");

productos.forEach(function (producto) {
    producto.addEventListener("click", function () {
        cont_prepro.style.display = "flex";
        document.getElementById("img_pro_prepro").src = producto.querySelector(".img_pro_busq").src;
        document.getElementById("negimg_pro_prepro").src = producto.querySelector(".ipb2").src;
        document.getElementById("nom_pro_prepro").textContent = producto.querySelector(".nb_busq").textContent;
        document.getElementById("negnom_pro_prepro").textContent = producto.querySelector(".nn_prepro").textContent;
        document.getElementById("desc_pro_prepro").textContent = producto.querySelector(".des_prepro").textContent;
        document.getElementById("pre_pro_prepro").textContent = producto.querySelector(".pre_prepro").textContent;
        document.getElementById("disp_pro_prepro").textContent = producto.querySelector(".disponibilidad_prepro").value;
        document.getElementById("id_edit_prepro").value = producto.querySelector(".idn").value;
        document.getElementById("id_elim_prepro").value = producto.querySelector(".idn").value;
    });
});