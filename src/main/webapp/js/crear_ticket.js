/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

let FORM_CNF = document.getElementById("tickets_container_form");
let Btn_S = document.getElementById("btnsubmit");
const img3 = document.getElementById('logo_cnf');
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
    title: "¿Está seguro de enviar este ticket?",
    text: "Se recomienda revisar la información colocada, pues no podrá editarla después.",
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

