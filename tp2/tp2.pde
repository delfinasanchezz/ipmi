// tp2 
// Alumna: Delfina Sánchez
// Legajo: 125684/2
// Comision: 4

void setup (){
  size(640,480);

  cargarImagenes();

  tiempoInicio = millis();

  fuente1 = createFont("dn.ttf", 20);

  textFont(fuente1);
  
}

void draw(){
  if(estado == 1){
    pantallaInicio();
  }
  else if(estado == 2){
    zoomLibro();
  }
  else if(estado == 3){
    escenaRiuk();
  }
  else if(estado == 4){
    mostrarDialogo();
  }
  else if(estado == 5){
    escenasFinales();
  }
}

void mouseClicked() {

  // abrir libro
  if (mouseX > 124 && mouseX < 524 &&
      mouseY > 398 && mouseY < 477 &&
      estado == 1) {
    mostrarTexto = false;
    cambiar = true;
    estado = 2;
  }

  // reiniciar
  if(escenaActual == 5){
    if(mouseX > 170 && mouseX < 470 &&
       mouseY > 380 && mouseY < 440){
      reiniciarAnimacion();
    }
  }
}


void reiniciarAnimacion(){
   estado = 1;
  tiempoEscenas = 0;
  cambiar = false;
  mostrarTexto = true;
  zoom = 1;
  xZoom = 0;
  yZoom = 0;
  xRiuk = 700;
  riukQ = false;
  tiempoDialogo = 0;
  tiempoPagina = 0;
  escena2 = 1;
  dialogoRiuk = "HOLA HUMANO, ME LLAMO RYUK";
  posTexto = -500;
  escenaActual = 0;
  tiempoInicio = millis();
}

void mousePressed(){
  println(mouseX, mouseY);
}
