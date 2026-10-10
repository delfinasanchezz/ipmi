let pantalla = 0;

let imagenes = [];

function preload() {
  imagenes[0] = loadImage("ypf.jpeg");
  imagenes[1] = loadImage("macriauto.jpeg");
  imagenes[2] = loadImage("macri_medialunas.jpeg");
  imagenes[3] = loadImage("robar.jpeg");
  imagenes[4] = loadImage("decision.jpeg");
  imagenes[5] = loadImage("macritriste.jpeg");
  imagenes[6] = loadImage("graciaspibe.jpeg");
}

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
    mostrarTexto("Macri está muy triste.");

  } else if (pantalla == 6) {
    mostrarTexto("Macri te dice: gracias pibe y se va.");

  }
}
function mostrarPantalla(numero) {
  image(imagenes[numero], 0, 0, 800, 450);
}

function mostrarTexto(texto) {
  fill(0);
  rect(30, 350, 740, 70);

  fill(255);
  textSize(20);
  text(texto, 50, 390);
}

function mouseClicked() {
  if (pantalla == 0) {
    pantalla = 1;
  } else if (pantalla == 1) {
    pantalla = 2;
  } else if (pantalla == 2) {
    pantalla = 3;
} else if (pantalla == 3) {

    // Hay que hacer click sobre el auto todavia no puse bien las medidas 
    if (mouseX > 200 && mouseX < 600 &&
        mouseY > 150 && mouseY < 400) {

      pantalla = 4;

    }

 } else if (pantalla == 4) {

  // BOTÓN SI
  if (mouseX > 250 && mouseX < 350 &&
      mouseY > 300 && mouseY < 350) {

    pantalla = 5;

  }

  // BOTÓN NO
  else if (mouseX > 450 && mouseX < 550 &&
           mouseY > 300 && mouseY < 350) {

    pantalla = 6;
  }
}
}
