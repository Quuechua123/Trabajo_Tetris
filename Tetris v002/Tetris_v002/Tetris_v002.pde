// Diseño de les pantallas de la App Tetris v1.2

int numPantalla = 1;  // Número de la Pantalla Actual

void setup(){
 size(1920,1080);
  textAlign(CENTER);       // Alineación del texto
  textSize(18);   // Mida del text
  rectMode(CENTER);
}

void draw(){
  
  background(55);    // Color del fondo
  
  if(numPantalla==1){
    dibujaPantallaMenu();
  }
  else if(numPantalla == 2){
    dibujaPantallaJuego();
  }  
  else if (numPantalla == 3){
   dibujaPantallaAjustes();
  }
  fill(255);
  text("PANTALLA "+numPantalla, width-100, 50);
  
  text("X: "+mouseX+", Y:"+mouseY, width-100, 100);
}

// Cambio de Pantalla con tecles UP y DOWN
void keyPressed(){
  if(keyCode==UP){
    numPantalla++;
  }
  else if(keyCode==DOWN){
    numPantalla--;
  }
  numPantalla = constrain(numPantalla,1,3);
}
