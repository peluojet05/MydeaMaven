/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
$(document).ready(function () {
    $('form').on('submit', function (evento) {
        // Muestra el icono de carga cuando se envía el formulario
        $('#load').show();
    });

    window.onblur = function () {
        $('#load').hide();
    };
});