/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

let icon_img = document.getElementById("Plus_Prod");
let inp_img = document.getElementById("Prod_cnf");
let img_pr = document.getElementById("img_pro_mosr_espe");

document.addEventListener('DOMContentLoaded', (event) => {
    inp_img.addEventListener('change', function(e) {
        var archivo = e.target.files[0];
        var tiposPermitidos = /(\.jpg|\.jpeg|\.png)$/i;

        if(!tiposPermitidos.exec(archivo.name)) {
            Swal.fire({
                title: "ERROR",
                text: "Por favor, sube solo archivos .jpg o .png.",
                icon: "error",
                showConfirmButton: true
            });
            e.target.value = '';
            img_pr.src = ''; // Borra la previsualización de la imagen
            return false;
        } else {
            showPreviewImage(e); // Si es una imagen, muestra la previsualización
        }
    });

    icon_img.addEventListener("click", function () {
        inp_img.click();
    });

    function showPreviewImage(event) {
        const file = event.target.files[0];
        const reader = new FileReader();

        reader.onload = function (event) {
            img_pr.src = event.target.result;
        };

        if (file) {
            reader.readAsDataURL(file);
        }
    }
});