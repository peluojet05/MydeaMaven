/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


let FORM_CNF = document.getElementById("forme");
let Btn_S = document.getElementById("btnsubmit");
const img3 = document.getElementById('Prod_cnf');
let IMG3 = document.getElementById('foto');

const CLOUDINARY_URL = `https://api.cloudinary.com/v1_1/digt8oaow/image/upload`;
const CLOUDINARY_UPLOAD_PRESET = 'oxfoqolm';


Btn_S.addEventListener('click', async (e) => {
    if(img3.files.length!==0){
    event.preventDefault();
    const file = img3.files[0];
    const formData = new FormData();
    formData.append('file', file);
    formData.append('upload_preset', CLOUDINARY_UPLOAD_PRESET);

    // Send to cloudianry
    const res = await axios.post(
        CLOUDINARY_URL,
        formData,
        {
            headers: {
                'Content-Type': 'multipart/form-data'
            }
           
        }
    );

    IMG3.value = res.data.secure_url;
    }else{
    console.log("Hola "+img3.files);
} 
});


Btn_S.addEventListener("click", (event) => {
  event.preventDefault();
  Swal.fire({
    title: "¿Está seguro de actualizar estos datos?",
    text: "Una vez confirme su producto sera actualizado (Puede editar los datos nuevamente despues).",
    icon: "warning",
    showCancelButton: true,
    confirmButtonColor: "rgba(244, 55, 112, 0.8)",
    cancelButtonColor: "#971A40",
    confirmButtonText: "Aceptar",
    cancelButtonText: "Cancelar"
  }).then((result) => {
    if (result.isConfirmed) {
        
        
         FORM_CNF.submit();
      
    }
  });
});

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