/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


const ctx = document.getElementById('myChart');
var opcion = document.getElementById('opcion');
            
const numeroDeUsuarios = Number(document.getElementById('numeroDeUsuarios').value);
const numeroDeUsuariosA = Number(document.getElementById('numeroDeUsuariosA').value);
const numeroDeUsuariosI = Number(document.getElementById('numeroDeUsuariosI').value);
const numeroDeUsuariosC = Number(document.getElementById('numeroDeUsuariosC').value);
const numeroDeUsuariosV = Number(document.getElementById('numeroDeUsuariosV').value);
const numeroDeUsuariosAd = Number(document.getElementById('numeroDeUsuariosAd').value);

var ConfUsuGen = {
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
            },

            {
                label: 'Usuarios activos',
                data: [numeroDeUsuariosA],
            }, 
            {
                label: 'Usuarios eliminados',
                data: [numeroDeUsuariosI],
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
};

var ConfUsuTip = {
    type: 'doughnut',
    data: {
      labels: ['Usuarios CC', 'Usuarios CV', 'Usuarios CA'],
      datasets: [{
            label: 'Numero de usuarios',
            data: [numeroDeUsuariosC, numeroDeUsuariosV, numeroDeUsuariosAd]
        }]
    },
    options: {

        responsive: true,
        plugins: {
            legend: {
              position: 'top',
            },
            title: {
              display: true,
              text: 'Usuarios'
            }
        },

    }
};

var ConfUsuEst = {
    type: 'doughnut',
    data: {
      labels: ['Usuarios Activos', 'Usuarios Eliminados'],
      datasets: [{
            label: 'Numero de usuarios',
            data: [numeroDeUsuariosA, numeroDeUsuariosI]
        }]
    },
    options: {

        responsive: true,
        plugins: {
            legend: {
              position: 'top',
            },
            title: {
              display: true,
              text: 'Usuarios'
            }
        },

    }
};

var myChart = new Chart(ctx, ConfUsuGen);

opcion.addEventListener('change', function(){
    var seleccion = opcion.value;
    if(myChart){
        myChart.destroy();
    }
    switch(seleccion) {
        case 'general':
            myChart = new Chart(ctx, ConfUsuGen); 
            break;
        case 'tipo':
            myChart = new Chart(ctx, ConfUsuTip);
            break;
        case 'estado':
            myChart = new Chart(ctx, ConfUsuEst);
            break;
    }
    myChart.update();
});