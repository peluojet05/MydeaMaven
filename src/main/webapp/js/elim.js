/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

let form_elim = document.querySelectorAll(".form_elim");

form_elim.forEach(function (forme) {
    forme.addEventListener('submit', function (event) {
        event.preventDefault();
        var name = forme.querySelector(".name_elim").value;
        Swal.fire({
            title: "¿ESTÁ SEGURO DE ELIMINAR "+name+"?",
            text: 'Usted tiene la opción de deshacer esta selección en la sección "Restaurar"; sin embargo, durante este tiempo, la misma no será visible para los demás usuarios.',
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "rgba(244, 55, 112, 0.8)",
            cancelButtonColor: "#971A40",
            confirmButtonText: "Aceptar",
            cancelButtonText: "Cancelar"
        }).then((result) => {
            if (result.isConfirmed) {
                forme.submit();
            }
        });
    });
});