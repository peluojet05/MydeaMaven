/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
let Nombre_com_reg = document.getElementById("Nom_com_reg");
let Nom_usu_reg = document.getElementById("Nom_usu_reg");
let Email_reg = document.getElementById("Email_reg");
let Num_reg = document.getElementById("Num_reg");
let Con_reg = document.getElementById("Con_reg");
let ConCon_reg = document.getElementById("ConCon_reg");
let Boton_reg = document.getElementById("btns_reg");
let Check1 = document.getElementById("TyC_reg");
let Check2 = document.getElementById("AP_reg");
let VerC1 = document.getElementById("eyesc1");
let NVerC1 = document.getElementById("eyenc1");
let C1 = document.getElementById("Con_reg");
let VerC2 = document.getElementById("eyesc2");
let NVerC2 = document.getElementById("eyenc2");
let C2 = document.getElementById("ConCon_reg");
let Tvendedor = document.getElementById("TP_cnf");
let barr1 = document.getElementById("barr1");
let barr2 = document.getElementById("barr2");

document.addEventListener('keyup', ()=>{
    if(Nombre_com_reg.value != "" && Nom_usu_reg.value !="" && Email_reg.value !="" && Num_reg.value !="" && Con_reg.value !="" && ConCon_reg.value !=""){
        Boton_reg.classList.remove("btns_reg");
        Boton_reg.classList.add("btns_reg_active");
    }else{
        Boton_reg.classList.add("btns_reg");
        Boton_reg.classList.remove("btns_reg_active");
    }
});

VerC1.addEventListener("click", ()=>{
    VerC1.style.display = "none";
    NVerC1.style.display = "block";
    C1.type = "text";
});

NVerC1.addEventListener("click", ()=>{
    VerC1.style.display = "block";
    NVerC1.style.display = "none";
    C1.type = "password";
});

VerC2.addEventListener("click", ()=>{
    VerC2.style.display = "none";
    NVerC2.style.display = "block";
    C2.type = "text";
});

NVerC2.addEventListener("click", ()=>{
    VerC2.style.display = "block";
    NVerC2.style.display = "none";
    C2.type = "password";
});

Tvendedor.addEventListener("change", ()=>{
    if(Tvendedor.value === "2"){
        barr1.style.background = "#971a40";
        barr2.style.background = "#971a40";
    }
    if(Tvendedor.value === "1"){
        barr1.style.background = "#D95538";
        barr2.style.background = "#D95538";
    }
});