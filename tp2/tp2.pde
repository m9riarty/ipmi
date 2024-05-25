/*

 TP 2 IPMI Comisión 5 - Campos Salazar Florencia 94790/7
 
 * hay un par de desperfectos
 
 */
PImage portada, img1, img2, img3, img4;
PFont font1, font2, fontFinal;
String HP0, HP1, HP2, HP3, HP4;
String txtp0, txtp1, txtp2, txtp3, txtFinal, btn;
float xIZQ, yUP, xDER, yDWN1, yDWN2, yDWN3;
int conteo = 0, pant = 0, tiempoTotal = 400;
boolean AAA = false;


void setup () {
  size (640, 480);

  portada = loadImage("portadaLibro.jpg");
  img1 = loadImage("elChicoSucio.jpg");
  img2 = loadImage("laCasadeAdela.jpg");
  img3 = loadImage("lasCosasquePerdimosenelFuego.jpg");
  img4 = loadImage("fondoFinal.jpg");

  font1 = loadFont("fuenteH.vlw");
  font2 = loadFont("fuenteP.vlw"); // no sé por qué no me lo está tomando
  fontFinal = loadFont("aprobame.vlw");

  // TÍTULOS
  HP0 = "Las cosas que \nperdimos en el fuego";
  HP1 = "El chico sucio";
  HP2 = "La casa de Adela";
  HP3 = "Las cosas \n que perdimos en el fuego";

  // TEXTO
  txtp0 = "Las cosas que perdimos \nen el fuego es la segunda colección \nde cuentos de la escritora \nargentina Mariana Enríquez. \n\nEn este TP veremos los 3 cuentos \nque más me gustan";
  txtp1 = "Una diseñadora gráfica, se muda a la antigua casa familiar, en el barrio de Constitución. \n'Mi familia cree que estoy loca', dice, por haberse mudado a ese lugar \n'donde la gente de la calle está más abandonada'. \nEnfrente a su casa, en un edificio tapiado, vive una mujer embarazada \nque fuma paco y maltrata a su nene, de 5 años. \nUn día la protagonista se encuentra al chico y le empieza a hablar, a hacerle preguntas, \npero el nene no le contesta. \n\nDespués de ese día, la historia se tuerce y pasan cosas. Horripilantes.";
  txtp2 = "Adela, su hermano y la niña salían siempre a jugar juntos y se hicieron muy Unidos. \nUn día pasaron por una casa abandonada, una casa que (según la niña, nuestra narradora) zumbaba, \ny se sintieron muy curiosos por las historias que la casa les contaba, \ndecidieron explorarla la noche de la última semana del verano. \n\nLa historia cuenta luego lo sucedido dentro de la casa y las consecuencias de esa decisión.";
  txtp3 = "El último relato de la recopilación le da el título a la obra y es devastador. \nSe mete de lleno con la violencia de género. \nLas 'mujeres ardientes', que protestan contra una forma extrema de violencia doméstica, \nson las protagonistas de este cuento final.";

  
  // ULTIMA PANTALLA
  HP4 = "Graphic desing is my passion";
  btn = "Reiniciar";

  // MOVIENDO TEXTOS (primer pantalla)
  xIZQ = -textWidth(HP0);
  yUP = height + textAscent();
  yDWN1 = -textAscent();
  yDWN2 = -textAscent();
  yDWN3 = -textAscent();
}


void draw () {
  // q comiencen los juegos
  conteo++;

  if (pant == 0) {
    background(13, 12, 15);
    image(portada, 0, 90, 403, 400);

    // TÍTULO
    fill(255);
    textFont(font1);
    textSize(20);
    text(HP0, xIZQ, 36);
    if (xIZQ < 40) {
      xIZQ += 2; // fiaunn
    }

    // TEXTO
    textFont(font2);
    textSize(12);
    text(txtp0, 423, yUP);
    if (yUP > 300) {
      yUP -= 1.5; // arrrriba juan
    }
  }


  // CUENTO 1
  if (pant == 1) {
    background(55, 61, 74);
    image(img1, 222, 280, 197, 200);
    
    // TÍTULO
    textFont(font1);
    textSize(20);
    text(HP1, 320, yDWN1);
    if (yDWN1 < 50) {
      yDWN1 += 1.5;
    }
    
    // TEXTO
    textFont(font2);
    textSize(12);
    textAlign (CENTER, CENTER);
    text(txtp1, 325, 180);
  }


  // CUENTO 2
  if (pant == 2) {
    background (255);
    image(img2, 151, 280, 356, 200);
    
    // TÍTULO
    textFont(font1);
    textSize(20);
    fill (0);
    text(HP2, 322, yDWN2);
    if (yDWN2 < 50) {
      yDWN2 += 1.5;
    }
    
    // TEXTO
    textFont(font2);
    textSize(12);
    textAlign (CENTER, CENTER);
    text(txtp2, 322, 180);
  }
  
  
  // CUENTO 3
  if (pant == 3) {
    background(25, 42, 52);
    image(img3, 148, 280, 360, 200);
    
    // TÍTULO
    textFont(font1);
    textSize(20);
    text(HP3, 322, yDWN3);
    if (yDWN3 < 50) {
      yDWN3 += 2;
    }
    
    // TEXTO
    textFont(font2);
    textSize(12);
    fill(255);
    text(txtp3, 322, 180);
  }
  
  
  // CHAUUU
  if (pant == 4) {
    image(img4, 0, 0, 715, 780);
    
    // TÍTULO
    textSize(20);
    textFont(fontFinal);
    fill(255);
    text(HP4, width/2, 240, 10);
    
    // BOTOON
    fill(100, 100, 250);
    rect(220, 270, 200, 50);
    fill(255);
    textSize(15);
    text(btn, 270, 300);
  }


  // control del tiempo y cambio de pantallas
  if (conteo >= tiempoTotal && pant != 4) {
    conteo = 0;
    if (pant < 3) {
      pant++;
    } else if (pant == 3) {
      pant++;
      AAA = true;
    }
  }
}



void mousePressed() {
  if (pant == 4 && mouseX > 220 && mouseX < 420 && mouseY > 270 && mouseY < 320) {
    pant = 0;
    conteo = 0;
    tiempoTotal = 300; // a la primer pantalla
    AAA = false;
  }
}

// AYUDAS DNVO
void mouseClicked() {
  println(mouseX, mouseY);
}
