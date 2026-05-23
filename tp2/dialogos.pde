//movimiento riuk
void moverRiuk(){

  if (xRiuk > 32) {

    xRiuk -= 10;

  } else {

    riukQ = true;
  }
}

//abrir death note
void mostrarTextoInicio(){

  if (mostrarTexto) {
    int tiempo = millis() - tiempoInicio;
    float progreso = map(tiempo, 0, 1500, 0, texto.length());
    int letras = int(progreso);
    letras = constrain(letras, 0, texto.length());
    String visible = texto.substring(0, letras);

    if(mouseX > 124 && mouseX < 524 &&
   mouseY > 397 && mouseY < 477){

   fill(255,0,0);

}else{

   fill(255);
}
    textSize(18);
    text(visible, 230, 445);
  }
}

//dialogos riuk
void mostrarDialogo(){
  if (riukQ) {
    if (tiempoDialogo == 0) {
      tiempoDialogo = millis();
    }

    fill(0,220);
    rect(40,350,560,90,20);
    int tiempoActual = millis() - tiempoDialogo;
    float progresoTexto;
    if (escena2 == 1) {
      progresoTexto = map(tiempoActual,0,3000,0,dialogoRiuk.length());
    } else {

      progresoTexto = map(tiempoActual,0,1900,0,dialogoRiuk.length());
    }

    int letras = int(progresoTexto);
    letras = constrain(letras,0,dialogoRiuk.length());
    String visible = dialogoRiuk.substring(0, letras);
    fill(255);
    textSize(18);
    text(visible,60,400);

    cambiarDialogo(letras);
  }
}

//cambiar dialogos
void cambiarDialogo(int letras){
  if (letras >= dialogoRiuk.length()) {
    if (escena2 == 1) {
      dialogoRiuk = dialogoRiuk2;
      tiempoDialogo = millis();
      escena2 = 2;
    }

    else if (escena2 == 2) {
      dialogoRiuk = dialogoRiuk3;
      tiempoDialogo = millis();
      escena2 = 3;
    }

  else if (escena2 == 3 && estado != 5) {
  tiempoEscenas = millis();
  riukQ = false;
  tiempoDialogo = 0;
  estado = 5;
  }
  
}
    }
