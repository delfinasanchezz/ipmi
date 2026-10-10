let pantalla = 0;

let imagenes = [];

function preload() {
  imagenes[0] = loadImage("ypf.png");
  imagenes[1] = loadImage("macriauto.png");
  imagenes[2] = loadImage("macri_medialunas.png");
  imagenes[3] = loadImage("robar.png");
  imagenes[4] = loadImage("decision.png");
  imagenes[5] = loadImage("macritriste.png");
  imagenes[6] = loadImage("graciaspibe.png");
}

function mostrarPantalla(numero) {
 background (0)
  image(imagenes[numero], 0, 0, 800, 450);
}



function mostrarTexto(texto) {
  fill(0);
  rect(29, 368, 740, 70);

  fill(255);
  textSize(20);
  text(texto, 30, 395);
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
 print("X: " + mouseX + " | Y: " + mouseY);
}
