/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


document.addEventListener("DOMContentLoaded", function () {
    const numParticles = 10;
    const container = document.querySelector(".particles-container");

    for (let i = 0; i < numParticles; i++) {
        const particle = document.createElement("div");
        particle.classList.add("square");

        const size = Math.floor(Math.random() * 200) + 80;
        particle.style.width = `${size}px`;
        particle.style.height = `${size}px`;

        const x = Math.random() * 95 + 3; 
        const y = Math.random() * 95 + 3;
        particle.style.left = `${x}vw`;
        particle.style.top = `${y}vh`;

        container.appendChild(particle);
    }
});
  