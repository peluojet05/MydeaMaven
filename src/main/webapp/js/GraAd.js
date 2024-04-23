/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


const ctx = document.getElementById('myChart');
            
const numeroDeUsuarios = Number(document.getElementById('numeroDeUsuarios').value);
const numeroDeUsuariosA = Number(document.getElementById('numeroDeUsuariosA').value);
const numeroDeUsuariosI = Number(document.getElementById('numeroDeUsuariosI').value);
const numeroDeUsuariosC = Number(document.getElementById('numeroDeUsuariosC').value);
const numeroDeUsuariosV = Number(document.getElementById('numeroDeUsuariosV').value);
const numeroDeUsuariosAd = Number(document.getElementById('numeroDeUsuariosAd').value);

const chart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['Numero de usuarios'],
      datasets: [
            {
                label: 'Usuarios',
                data: [numeroDeUsuarios],
            },

            {
                label: 'Usuarios CC',
                data: [numeroDeUsuariosC],
            }, 
            {
                label: 'Usuarios CC',
                data: [numeroDeUsuariosV],
            },
            {
                label: 'Usuarios CA',
                data: [numeroDeUsuariosAd],
            }
        ]
    },
    options: {

        indexAxis: 'y',
        responsive: true,
        plugins: {
            legend: {
              position: 'right',
            },
            title: {
              display: true,
              text: 'Usuarios'
            }
        },
        scales: {
            y: {
                beginAtZero: true
            }
        },

    }
});