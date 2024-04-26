/* tuve que volver a entregar porque olvidé aclarar mi nombre, comisión y legajo, perdón.

Campos Salazar Florencia, comisión 5, 94790/0

*/

PImage tomatito;

void setup (){
  size (800, 400);
  background (255);
  tomatito = loadImage("tomato.jpg");
}

void draw (){ 
background (34, 31, 50);
  image(tomatito, 0, 0, 400, 400);
  
  // INICIO ERA PICAzzzO
  //vendría a ser la sombra del tomate
  noStroke ();
  fill (197, 31, 33);
  rect (514, 145, 172, 145, 100);
  //color tomato
  fill (226, 38, 37);
  rect (515, 155, 143, 122, 110);
  rect (518, 147, 143, 122, 110);
  rect (518, 180, 125, 100, 100);
  
  // brillito
  fill (233, 93, 66);
  ellipse (554, 190, 33, 33);
  
 // moldeados caprichosos I: arreglando sombra
  fill (197, 31, 33);
  ellipse (635, 210, 55, 115);
  fill (226, 38, 37);
  ellipse (618, 219, 78, 110);
 
  // hojitas en crudo
  fill (10, 136, 62);
  triangle (565, 142, 618, 167, 628, 134);
  triangle (578, 168, 633, 152, 581, 127);
  
  // moldeados caprichosos II: formando hojas
  stroke (34, 31, 50);
  strokeWeight (25);
  line (535, 305, 677, 305);
  noStroke ();
  fill (34, 31, 50);
  //parte de arriba
  triangle (579, 139, 589, 145, 581, 127);
  triangle (591, 132, 600, 140, 606, 133);
  triangle (602, 144, 609, 136, 609, 119);
  triangle (628, 130, 617, 145, 629, 144);
  //parte de abajo
  fill (197, 31, 33);
  triangle (579, 149, 584, 153, 577, 160);
  fill (226, 38, 37);
  triangle (581, 168, 587, 163, 595, 163);
  triangle (595, 163, 599, 154, 607, 161);
  triangle (606, 160, 618, 166, 607, 168);
  fill (197, 31, 33);
  triangle (619, 160, 614, 154, 622, 153);
  triangle (618, 159, 619, 153, 626, 153);
  strokeWeight (3);
  stroke (197, 31, 33);
  line (616, 156, 621, 162);
  line (617, 158, 624, 155);
  
  
   // palito de ahí
  noStroke ();
  fill (8, 123, 54);
  quad (599, 150, 597, 122, 607, 109, 610, 114);

}
  

/* ayuditas usadas:
void mouseClicked() {
  println(mouseX, mouseY);
  println(mouseX+400, "," , mouseY, ",");
}

TP1 by moriarty
*/
