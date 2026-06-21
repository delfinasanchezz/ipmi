 
void fila1(){
 
 pushMatrix();
  translate(0, desplazamientoY);
  for (int j = 0; j < 20; j++) {
    for (int i = 0; i < 20; i++) {

      float x1 = 427 + i * 115;
      float y1 = 27 + j * 117;
//retorna un valor
      float valor = calcularDistancia (x1, y1);
//degradé
if (valor < 120) {
  stroke(#44694A);
} else {
  stroke(#A67C52);
}   
      strokeWeight(2.6);
      //relleno
     if (relleno == true) {
  fill(#44694A);
} else {
  noFill();
}
if (clickderecho == true){
      pushMatrix();

translate(455 + i * 115, 55 + j * 117);
rotate(angulo);

circulos(-28, -28, 32);

popMatrix();
} else {
  circulos(x1, y1, 32);
}
     
      strokeWeight(1);
      if (relleno1 == true) {
  fill(#694D31);
} else {
  noFill();
}
      if (clickderecho == true) {
   pushMatrix();
translate(455 + i * 115, 55 + j * 117);
rotate(angulo);
circulos(28, -28, 30);
popMatrix();
      } else {
      circulos(483 + i * 115, 27 + j * 117, 30);
      }
    }
  }
  popMatrix();

}




 void fila2(){
  
   for (int j = 0; j < 20; j++) {
   for (int i = 0; i < 20; i++) {
     float x1 = 427 + i * 115;
      float y1 = 27 + j * 117;

      float valor = dist(mouseX, mouseY, x1, y1);
      
      if (valor < 200) {
  stroke(#698C72);
} else {
  stroke(#455C4B);
}  
      
  strokeWeight(1.6);
  if (relleno2 == true) {
  fill(#698C72);
} else {
  noFill();
}
if (clickderecho == true) {
  pushMatrix();
translate(455 + i * 115, 55 + j * 117);
rotate(angulo);
circulos(-28, 28, 31);
popMatrix();
} else {
  circulos(427+ i* 115 ,84 + j * 117,31);
}
  strokeWeight(2);
  if (relleno3 == true) {
  fill(#A67C52);
} else {
  noFill();
}
  if (clickderecho == true){
    pushMatrix();
translate(455 + i * 115, 55 + j * 117);
rotate(angulo);
circulos(28, 28, 32);
popMatrix();
  } else { 
  circulos(483+ i* 115 ,84 + j * 117,32);
   }
   }
  }
}

 
