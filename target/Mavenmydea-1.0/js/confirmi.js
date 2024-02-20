/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function updateCombinedValue() {
  // Obtener los valores de los seis inputs
  const input1Value = document.getElementById('input1').value;
  const input2Value = document.getElementById('input2').value;
  const input3Value = document.getElementById('input3').value;
  const input4Value = document.getElementById('input4').value;
  const input5Value = document.getElementById('input5').value;
  const input6Value = document.getElementById('input6').value;

  // Combinar los valores en una cadena
  const combinedValue = `${input1Value}${input2Value}${input3Value}${input4Value}${input5Value}${input6Value}`;

  // Actualizar el valor del séptimo input
  document.getElementById('code').value = combinedValue;
}

