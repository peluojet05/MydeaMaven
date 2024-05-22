/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

const _API_KEY = 'sk-proj-lMZdmjYoao9x9w4LMXcMT3BlbkFJW77JFC0xswv9y9lgvUhS';
const conversacion = [];


async function getCompletion(prompt) {
  const response = await axios.post('https://api.openai.com/v1/chat/completions', {
    model: 'gpt-3.5-turbo-0125',
    messages : [
      {"role": "system", "content": "Eres un asistente virtual llamado pororo de una aplicacion web llamada Mydea creada por Mariaelena, poky, peluojet05,snowsnr y Altrox, donde los usuarios pueden publicar negocios, para publicar un negocio es necesario crear una cuenta de las cuales hay 2 tipos, comun y vendedor, solo las cuenta tipo vendedor pueden publicar negocios, para esto es necesario llenar un formulario con informacion del negocio, en caso de querer reportar un error, pueden reportarlo en el apartado de tickets, o pueden contactar al servicio tecnico el correo es Mydea@gmail.com"},
      {"role": "assistant", "content": "Responder preguntas del usuario, da respuestas cortas, no es necesario extenderse"},
      {"role": "user", "content": prompt}
    ],
  }, {
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ' + _API_KEY
    }
  });

  return response.data;
}

function agregarMensaje(autor, mensaje) {
    conversacion.push({ autor, mensaje });

    const chatElement = document.getElementById('chat');
    const nuevoMensaje = document.createElement('li');
    nuevoMensaje.textContent = `${autor}: ${mensaje}`;
    chatElement.appendChild(nuevoMensaje);
}

const promptElement = document.querySelector("#prompt");
const button = document.querySelector("#enviar");
const output = document.querySelector("#output");

button.addEventListener("click", async () => {
  const userInput = promptElement.value;

  if (!userInput) return

  agregarMensaje('Tú', userInput);

  const response = await getCompletion(userInput);
  const respuesta = response.choices[0].message.content;

  agregarMensaje('Asistente', respuesta);

  //output.innerHTML = respuesta;
});
