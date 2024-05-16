/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


var audio = document.getElementById("myAudio");
audio.volume = 0.2;
document.addEventListener('click', function(){
  audio.play();
});

var cursor = document.querySelector(".cursor");
var cursor2 = document.querySelector(".cursor2");
document.addEventListener("mousemove",function(e){
    cursor.style.cssText = cursor2.style.cssText = "left: "+e.clientX+"px; top: "+e.clientY + "px;";
});

$(document).ready(function() {
  $(document).on('mouseover', function(e) {
    var $target = $(e.target);
    if ($target.css('cursor') === 'pointer') {
      $('.cursor2').css('display', 'none');
    }
  });
});
