/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

let Plus_Logo = document.getElementById("Plus_L");
let Input_L = document.getElementById("logo_cnf");
let Most_Img = document.getElementById("Prev_Log");
let form_crear = document.getElementById("tickets_container_form");
let btn_gestick = document.getElementById("gest_ntck");

btn_gestick.addEventListener("click", function(){
    window.location.href = "Gest_Tick_User.jsp";
});

Plus_Logo.addEventListener("click", function () {
    Input_L.click();
});

document.addEventListener('DOMContentLoaded', (event) => {
    Input_L.addEventListener('change', function (e) {
        var archivo = e.target.files[0];
        var tiposPermitidos = /(\.jpg|\.jpeg|\.png)$/i;

        if (!tiposPermitidos.exec(archivo.name)) {
            Swal.fire({
                title: "ERROR",
                text: "Por favor, sube solo archivos .jpg o .png.",
                icon: "error",
                showConfirmButton: true
            });
            e.target.value = '';
            Most_Img.src = ''; // Borra la previsualización de la imagen
            return false;
        } else {
            showPreviewImage(e); // Si es una imagen, muestra la previsualización
        }
    });

    function showPreviewImage(event) {
        Most_Img.style.display = "flex";
        Plus_Logo.style.position = "absolute";
        const file = event.target.files[0];
        const reader = new FileReader();

        reader.onload = function (event) {
            Most_Img.src = event.target.result;
        };

        if (file) {
            reader.readAsDataURL(file);
        }
    }
});

form_crear.addEventListener('submit', function (event) {
    event.preventDefault();
    Swal.fire({
        title: "¿ESTÁ SEGURO DE ENVIAR ESTE TICKET?",
        text: 'Se recomienda revisar la información colocada, pues no podrá editarla después.',
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