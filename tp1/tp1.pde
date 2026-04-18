//TP 1 DELFINA SANCHEZ COMISION 4 LEGAJO 125684/2 //

PImage miImagen;

void setup(){
  size(800,400);
  miImagen = loadImage("laperla.jpg");
}

void draw(){
  background(#040311);
  image(miImagen, 0, 0, 400, 400);

//cuerpo
noStroke();
fill(#B28E5C);
beginShape();
vertex(702, 235);
vertex(702, 224);
vertex(661, 229);
vertex(593, 254);
vertex(582, 267);
vertex(579, 279);
vertex(560, 314);
vertex(560, 327);
vertex(529, 398);
vertex(660, 399);
vertex(638, 294);
vertex(650, 246);
endShape(CLOSE);

//cabeza 
 noStroke();
fill(#ACC1E0);
beginShape();
vertex(532, 123);
vertex(533, 115);
vertex(536, 106);
vertex(548, 92);
vertex(557, 83);
vertex(556, 84);
vertex(575, 71);
vertex(594, 72);
vertex(619, 76);
vertex(652, 90);
vertex(679, 108);
vertex(692, 119);
vertex(685, 180);
vertex(664, 192);
vertex(601, 140);
vertex(551, 114);
vertex(533, 122);
endShape(CLOSE);

//pelo
 noStroke();
fill(#EBD4A2);
beginShape();
vertex(595, 70);
vertex(597, 67);
vertex(614, 61);
vertex(616, 59);
vertex(634, 49);
vertex(669, 50);
vertex(689, 61);
vertex(713, 86);
vertex(715, 104);
vertex(698, 128);
vertex(678, 101);
vertex(660, 88);
vertex(625, 73);
vertex(595, 71);
endShape(CLOSE);

quad(600,65,586,75,688,128,703,108);

fill(#EBD4A2);
triangle(694,85,709,320,738,321);
triangle(710,103,742,304,758,305);
triangle(710,110,735,267,703,119);
triangle(710,111,749,266,715,105);
fill(#473A2A);
triangle(697,87,736,321,747,318);
triangle(721,121,757,304,782,297);
fill(#52687D);
quad(705,292,709,322,743,320,739,287);

fill(25, 90, 150);
  triangle(530, 123, 640, 81, 668, 191);
  
  //la forma de la cara
fill(#F1D6CF);
 noStroke();
  beginShape();
vertex(527, 134);
vertex(527, 144);
vertex(531, 148);
vertex(526, 160);
vertex(526, 184);
vertex(545, 232);
vertex(561, 240);
vertex(586, 238);
vertex(637, 217);
vertex(638, 200);
vertex(647, 205);
vertex(666, 192);
vertex(603, 138);
vertex(546, 115);
vertex(527, 134);
endShape(CLOSE);
 
 //boca
fill(#9B4F42);
 noStroke();
beginShape();
vertex(537, 205);
vertex(539, 208);
vertex(541, 208);
vertex(570, 214);
vertex(573, 212);
vertex(549, 205);
vertex(546, 206);
vertex(542, 202);
vertex(539, 205);
endShape(CLOSE);
fill(#C0544A);
beginShape();
vertex(542, 208);
vertex(541, 211);
vertex(541, 214);
vertex(542, 218);
vertex(548, 222);
vertex(555, 223);
vertex(566, 221);
vertex(571, 213);
vertex(567, 214);
vertex(560, 214);
vertex(548, 211);
vertex(547, 209);
endShape(CLOSE);


 //cara 
  noStroke();
 fill(#7C5C4F);
 triangle(608,144,597,164,638,168);
 triangle(615,165,603,199,639,200);
 triangle(614,165,638,199,637,168);
 triangle(636,167,636,198,664,189);
 fill(#9B826C);
 triangle(603,199,589,214,637,199);
 
 //cuello
 fill(#7C5C4F);
 quad(587,238,651,213,661,228,595,253);
 fill(#EBD7BC);
 triangle(586,237,593,254,613,247);
 
 //ojos
  //blanco
 
 fill(#FFF8F7);
beginShape();
vertex(571, 157);
vertex(577, 154);
vertex(594, 163);
vertex(591, 166);
vertex(581, 166);
vertex(571, 158);
endShape(CLOSE);

 fill(#FFF8F7);
beginShape();
vertex(531, 149);
vertex(536, 148);
vertex(545, 152);
vertex(545, 156);
vertex(533, 156);
vertex(530, 155);
vertex(529, 151);
endShape(CLOSE);
 
 //color de ojo
 fill(#544D43);
 circle(585,158,12);
 circle(541,151,10);
 //pupilas
 fill(#1D0900);
 circle(541,150,5);
 circle(585,158,6);
 //brillo
 fill(#FFFDFC);
 circle(581,157,2);
 circle(538,149,2);

//parpado
fill(#815D43);
triangle(582,155,585,151,600,163);
triangle(546,151,543,145,540,148);
triangle(582,166,592,165,591,171);
triangle(592,165,595,163,596,167);
triangle(532,147,527,142,528,152);
triangle(540,190,543,187,552,193);
fill(#E6B8A9);
triangle(582,155,569,156,583,150);
triangle(571,159,582,164,581,168);
triangle(530,146,541,148,537,143);
triangle(537,154,546,154,537,160);
triangle(537,159,530,153,537,154);

fill(#1D0900);
//cejas
fill(#B29075);
triangle(563,141,564,148,587,145);
triangle(544,146,542,140,532,138);
 noStroke();
 fill(#A88572);
 triangle(562,148,539,190,564,194);
//pañuelo
fill(#93A6C4);
triangle(532, 123, 595, 73, 582, 126);
quad(739,285,742,303,757,304,747,270);
quad(747,198,743,206,767,297,780,298);
fill(#211008);
triangle(605,128,631,148,637,140);
triangle(629,120,639,128,645,141);
triangle(659,157,661,153,657,140);
triangle(626,119,637,129,642,123);
triangle(691,140,656,109,647,116);
triangle(692,143,657,110,648,119);



fill(#94B4DB);
triangle(595,74,589,99,639,80);

fill(#314868);
triangle(640,82,665,194,693,119);

//nariz
fill(#4C2A1E);
triangle(539,190,547,194,552,191);
fill(#885C46);
triangle(555,194,565,187,566,195);
fill(#AA8C72);
quad(548,195,548,204,562,209,560,196);

//boca
fill(#A5594C);
beginShape();
vertex(538, 204);
vertex(539, 208);
vertex(541, 208);
vertex(540, 210);
vertex(541, 214);
vertex(545, 220);
vertex(552, 222);
vertex(565, 222);
vertex(569, 214);
vertex(573, 213);
vertex(549, 205);
vertex(545, 206);
vertex(542, 203);
vertex(538, 205);



//pera
fill(#937A64);
triangle(555,222,581,237,570,218);
triangle(590,214,577,232,581,237);
//este color es el de la mandibula clarito
fill(#A99781);
quad(590,213,581,237,637,217,637,198);
triangle(557,238,564,228,589,236);
triangle(598,162,598,137,608,144);
//cuerpo
fill(#210D06);
quad(653,245,640,293,708,327,702,235);
fill(#624923);
quad(641,296,663,398,741,398,730,351);
stroke(#D4A763); 
line(582,266,578,281);
line(588,261,578,283);
line(592,256,560,323);
line(578,282,560,316);
line(597,252,530,398);
line(601,250,536,398);
line(604,249,542,399);
line(610,246,603,264);
line(601,266,595,295);
line(594,296,581,398);
line(614,246,613,264);
line(613,264,607,398);
line(619,246,619,398);
line(652,248,638,292);
line(642,295,662,398);
line(702,227,708,326);
line(708,327,730,350);
line(732,355,743,399);
line(662,228,700,224);
line(595,254,582,267);
line(579,281,600,265);
line(602,264,636,250);
line(637,249,674,238);
stroke(#6C5F4A);
line(666,239,703,236);
line(635,68,692,101);
line(697,108,700,135);
line(702,112,710,193);
line(644,60,667,71);
line(670,73,693,89);
line(734,197,750,282);
line(640,60,646,56);
line(630,59,639,53);
line(622,58,637,51);
line(686,73,703,81);
point(545,215);
stroke(#FFFEFC);
point(547,215);
point(550,218);
point(550,216);
point(551,216);
point(551,215);
point(550, 216);
point(550, 217);
point(548, 218);
point(548, 217);
point(545, 215);
point(546, 216);
point(549, 219);
point(548, 215);
point(547, 216);
point(551, 217);
point(557, 216);

//perla
noStroke();
fill(#767571);
circle(647,218,15);
fill(#D3D1CD);
circle(644,218,6);
fill(#3C3B37);
circle(649,219,4);
fill(#FFFDFA);
circle(644,218,2.5);
//cuerpo
fill(#7A6A51);
triangle(614,310,595,350,644,347);
triangle(595,350,620,369,643,346);
quad(609,361,604,394,639,396,635,354);
quad(575,340,541,399,522,399,563,340);
quad(613,289,598,315,575,319,579,307);
fill(#F8F2E4);
quad(593,255,581,265,580,274,605,265);
quad(592,255,602,264,672,240,662,228);
quad(662,227,701,222,703,234,672,241);
fill(#331811);
triangle(646,193,653,180,658,184);

}
