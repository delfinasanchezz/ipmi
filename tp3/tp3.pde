//video youtube: https://youtu.be/gjZekQSZ80I
void setup(){
  size(800,400);
  referencia = loadImage("referencia.jpg");
 
}

void draw(){
  background(#C1130C);
  image(referencia,0,0,400,400);
  if (mousePressed) {
  angulo -= 0.09;
}
  fila1();
  fila2();
}

void circulos(float x, float y, float tam) {
  circle(x, y, tam);
}

void mousePressed() {

    
  if (mouseButton == RIGHT){
    clickderecho = true;
  } else { 
    clickderecho = false;
  }
  if (mouseButton == LEFT){
   //para que los que estan traslate vuelvan a su lugar original
   desplazamientoY = 0;

   for (int j = 0; j < 4; j++) {
    for (int i = 0; i < 4; i++) {

      float x1 = 427 + i * 115;
      float y1 = 27 + j * 117;
     

      // 16 radio
      if (dist(mouseX, mouseY, x1, y1) < 16) {
  if (relleno == false) {
    relleno = true;
  } else {
    relleno = false;
   
    }
   }
  }
 }
  
  }
  
 if (mouseButton == LEFT){
 for (int j = 0; j < 4; j++) {
    for (int i = 0; i < 4; i++) {

      float x1 = 483 + i * 115;
      float y1 = 27 + j * 117;
     
      if (dist(mouseX, mouseY, x1, y1) < 16) {
  if (relleno1 == false) {
    relleno1 = true;
  } else {
    relleno1 = false;
   
     }
    }
   }
  }
 }
 if (mouseButton == LEFT){
 for (int j = 0; j < 4; j++) {
    for (int i = 0; i < 4; i++) {
       float x2 = 427 + i * 115;
      float y2 = 84 + j * 117;

      if (dist(mouseX, mouseY, x2, y2) < 16) {

        if (relleno2 == false) {
          relleno2 = true;
        } else {
          relleno2 = false;
}
      }
    }
  }
 }
 if (mouseButton == LEFT){
 for (int j = 0; j < 4; j++) {
    for (int i = 0; i < 4; i++) {

      float x1 = 483 + i * 115;
      float y1 = 84 + j * 117;
     

      // 16 porque el círculo tiene diámetro 32
      if (dist(mouseX, mouseY, x1, y1) < 16) {
  if (relleno3 == false) {
    relleno3 = true;
  } else {
    relleno3 = false;
}
    }
   }
  }
 }
}

void mouseWheel(MouseEvent event) {
  desplazamientoY += event.getCount() * 10;
    //para que vuelva a su posicion original 

}

void keyPressed() {

 if (key == 'r' || key == 'R') {


    // sacar rellenos
    relleno = false;
    relleno1 = false;
    relleno2 = false;
    relleno3 = false;

    // volver a la posición original
    desplazamientoY = 0;

    // volver a la orientación original
    angulo = 0;

    // desactivar la rotación
    clickderecho = false;
  }
}
  //println(mouseX+400, mouseY);
