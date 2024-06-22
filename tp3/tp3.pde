/*
    campos salazar florencia (94790/7) - comi 5 
    
    ACLARACIONES:
    sé que se puede usar la misma var + cuentas para no tener que hacer tantas var pero me confundo !
    entendí la mitad de las cuentas
    se resetea con click
    esa fue la imagen que utilicé de referencia para éste tp porque podía contar la cantidad de cuadrados, iba a cambiarla por otra que no tuviera stroke pero creo que es mejor que se vea mi guía 
    
    LINK YOUTUBE -- https://www.youtube.com/playlist?list=PL-SGzSxp4zxUoAHS7H8SP1e7dd8Tal8MM 
*/

PImage pesadilla; 
int tamMaximo = 16;
int numMarcos = 8;
int cuadroTamano = 25;
int trampita = 400; // para dibujarla a un costado
float flash = 0.5; // (velocidad)
boolean dash = true; // (los increíbles) 

void setup() {
  size(800, 400);
  pesadilla = loadImage("stresso.jpeg"); // sabrina carpenter refe !!    
  background(255, 0, 0); // fondo-guía      
}

void draw() {
  if (dash) {
    background(255, 0, 0); // borrar el fondo para evitar solapamiento de imágenes
    image(pesadilla, 0, 0, 400, 400);
    
    boolean invertirColores = determinarInversionColores();
    
    for (int marco = 0; marco < numMarcos; marco++) {
      int tamActual = tamMaximo - (marco * 2); 
      dibujarMarco(tamActual, cuadroTamano, marco, invertirColores);
    }
  }
}

void dibujarMarco(int tam, int cuadroTamano, int indiceMarco, boolean invertirColores) {
  int cuentita = (16 - tam) / 2 * cuadroTamano; // cuentita para centrar
  
  for (int i = 0; i < tam; i++) {
    for (int j = 0; j < tam; j++) {
      boolean esBlanco = (i < tam / 2 && j < tam / 2) || (i >= tam / 2 && j >= tam / 2);
      if (indiceMarco % 2 == 0) {
        esBlanco = !esBlanco;
      }
      if (invertirColores) {
        esBlanco = !esBlanco;
      }
      
      fill(esBlanco ? 255 : 0);
      noStroke();
      rect(trampita + cuentita + i * cuadroTamano, cuentita + j * cuadroTamano, cuadroTamano, cuadroTamano);
    }
  }
}

// única función que devuelve 
boolean determinarInversionColores() {
  boolean invertir = false;
  
  // verifica si el mouse está dentro del área del dibujo
  if (mouseX >= 400 && mouseX <= 800) {
    // map para ajustar la velocidad según la posición del mouse
    float velocidad = map(mouseX, 400, 800, 0, 1) * flash;
    if (random(1) < velocidad) {
      invertir = true; 
    }
  } 
  
  return invertir;
}

void mouseClicked() {
  dash = false; // detiene el código
}

void keyPressed() {
  dash = true; // reinicia el código (según)
}
