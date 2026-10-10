
function setup() {
createCanvas(800, 450);

}


function draw() {
 mostrarPantalla(pantalla);
  if (pantalla == 0) {
    mostrarTexto("Trabajás en una estación de servicio YPF.");
  } else if (pantalla == 1) {
    mostrarTexto("Macri tiene un auto deportivo increíble...");
  } else if (pantalla == 2) {
    mostrarTexto("Macri se va a comprar medialunas.");
  } else if (pantalla == 3) {
    mostrarTexto("El auto de Macri quedó solo...");
 } else if (pantalla == 4) {
  mostrarTexto("¿Qué vas a hacer? ¿Robar el auto?");
  
  // BOTÓN SI
  fill(255);
  rect(250, 300, 100, 50);

  fill(0);
  textSize(20);
  text("SI", 285, 332);

  // BOTÓN NO
  fill(255);
  rect(450, 300, 100, 50);

  fill(0);
  textSize(20);
  text("NO", 480, 332);
} else if (pantalla == 5) {
    mostrarTexto("te das a la fuga  hasta mexico. Macri esta enojado");

  } else if (pantalla == 6) {
    mostrarTexto("Macri te dice: gracias pibe y se va.");

  }
}
