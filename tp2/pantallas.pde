
void pantallaInicio(){
  
  if (!cambiar) {
    image(librocerrado, 0, 0, width, height);
    aura += 0.08;
    float tamañoAura = 420 + sin(aura) * 15;
    noStroke();
    fill(255, 0, 0, 10);
    ellipse(324, 438, tamañoAura, 80);
    mostrarTextoInicio();
   for(int i = 0; i < 40; i++){
   fill(255,0,0,120);
   noStroke();
   ellipse(particulaX[i], particulaY[i], 4,4);
   particulaY[i] -= 0.7;
   if(particulaY[i] < 0){
      particulaY[i] = height;
      particulaX[i] = random(width);
      textSize(25);

   }
      fill(#836464);
  textSize(18);
  text("TE ENCONTRASTE UN CUADERNO EN EL PISO . . . ",34,33);
}
  }
}

//zoom
void zoomLibro(){
  if (cambiar) {
    if (zoom < 3) {
      zoom += 0.02;
      float nuevoAncho = width * zoom;
      float nuevoAlto = height * zoom;
      xZoom -= 5;
      yZoom -= 3;
      image(libroabierto1, xZoom, yZoom, nuevoAncho, nuevoAlto);
    }

    else {
      estado = 3;
    }
  }
}

//riuk

void escenaRiuk(){
  if (zoom >= 3) {
    image(paginaabierta, 0, 0, width, height);
    if (tiempoPagina == 0) {
      tiempoPagina = millis();
    }

    if (millis() - tiempoPagina > 1500) {
      moverRiuk();
      image(riuk, xRiuk, 40, 250, 400);
      mostrarDialogo();
   }
 }
}


void escenasFinales(){

  int tiempo = millis() - tiempoEscenas;
  if(tiempo < 10000){
    if(escenaActual != 1 ){
   posTexto = -500;
   escenaActual = 1;
   println(tiempo);
}
   escenaRegla1();
  }

  else if(tiempo < 20000){
    if(escenaActual !=2) {
      posTexto= -500;
      escenaActual = 2;
    }
escenaRegla2();
  }

 else if(tiempo < 40000){
if(escenaActual != 3){
      posTexto = -500;
      escenaActual = 3;
    }
    escenaRegla3();
  }

   else if(tiempo < 50000){
    if(escenaActual != 4){
      posTexto = -500;
      escenaActual = 4;
    }

    escenaRegla4();
   }
    
    else{
    if(escenaActual != 5){
      posTexto = -500;
      escenaActual = 5;
    }
    escenaFinal();
  }
}

void escenaRegla1(){
  image(escena1,0,0,width,height);
  if(posTexto < 70){
    posTexto += 6;
  }

fill(0,200);
noStroke();
rect(posTexto- 40,330,560,110,20);
  image(carariuk,posTexto - 100,310,140,60);
   fill(#C10202);
  textSize(25);
   textAlign(LEFT, BASELINE);
  text("RYUK:",posTexto,365);
 textAlign(CENTER, CENTER);
 fill(#FFFFFF);
  textSize(21);
  text("EL NOMBRE DE LA PERSONA QUE ESCRIBAS MORIRA",posTexto +240,392);
  
 
}

void escenaRegla2(){
  image(escenados,0,0,width,height);
  if(posTexto < 70){
    posTexto += 5;
  }
  
  
  fill(0,200);
noStroke();
rect(posTexto-40,330,560,110,20);
  fill(255);
   image(carariuk,posTexto - 100,310,140,60);
   fill(#C10202);
  textSize(25);
 textAlign(LEFT, BASELINE);
 text("RYUK:",posTexto,365);
  textSize(20);
   textAlign(CENTER, CENTER);
   fill(#FFFFFF);
  text("DEBES TENER EL ROSTRO DE LA PERSONA EN TU MENTE",posTexto+240,392);
}

void escenaRegla3(){
  image(escena3,0,0,width,height);
  if(posTexto < 70){
    posTexto += 6;
  }

fill(0,200);
noStroke();
rect(posTexto-40,330,560,110,20);
 image(carariuk,posTexto - 100,310,140,60);
   fill(#C10202);
  textSize(25);
 textAlign(LEFT, BASELINE);
  text("RYUK:",posTexto,365);
  fill(255);
  textSize(20);
  int tiempo = millis() - tiempoEscenas;
  if(tiempo < 30000){
  textAlign(CENTER, CENTER);
    textSize(21);
  text("PUEDES ESPECIFICAR LA CAUSA DE MUERTE",posTexto +240,392);
  }
  else{
    textAlign(CENTER, CENTER);
    textSize(21);
     text("SI NO MORIRA DE UN ATAQUE AL CORAZON",posTexto +240,392);

}
 }

void escenaRegla4(){
  image(escena4,0,0,width,height);
  if(posTexto < 70){
    posTexto += 6;
  }

fill(0,180);
noStroke();
rect(posTexto-40,330,560,110,20);
 image(carariuk,posTexto - 100,310,140,60);
   fill(#C10202);
  textSize(25);
  textAlign(LEFT, BASELINE);
  text("RYUK:",posTexto,365);
textAlign(CENTER, CENTER);
  fill(255);
  textSize(21);
  text("ADEMAS, SIEMPRE VOY A ESTAR CON VOS.",posTexto+240,392);

}

void escenaFinal(){
  image(escena5,0,0,width,height);
  fill(0,220);
  rect(170,380,300,60,20);
textAlign(LEFT, BASELINE);
  fill(#FFFFFF);
  textSize(25);
  text("MALA SUERTE , LA POLICIA TE ATRAPO",107,102); 
  
  if(mouseX > 170 && mouseX < 470 &&
     mouseY > 380 && mouseY < 440){

    fill(255,0,0); // rojo al pasar mouse

  } else {

    fill(255); // blanco normal
  }
textAlign(LEFT, BASELINE);
  textSize(24);
  text("VOLVER A EMPEZAR",218,420);
}
