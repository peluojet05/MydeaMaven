/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

let usu_btn_adm = document.getElementById("usu_icon");
let neg_btn_adm = document.getElementById("neg_icon");
let com_btn_adm = document.getElementById("coment_icon");
let nov_btn_adm = document.getElementById("nov_icon");
let tik_btn_adm = document.getElementById("tick_icon");

usu_btn_adm.addEventListener("click", ()=>{
    window.location.href = "Gest_Usu.jsp";
});
neg_btn_adm.addEventListener("click", ()=>{
    window.location.href = "Gest_Neg.jsp";
});
com_btn_adm.addEventListener("click", ()=>{
    window.location.href = "Gest_Com.jsp";
});
nov_btn_adm.addEventListener("click", ()=>{
    window.location.href = "Gest_Nov.jsp";
});
tik_btn_adm.addEventListener("click", ()=>{
    window.location.href = "Gest_Tick.jsp";
});