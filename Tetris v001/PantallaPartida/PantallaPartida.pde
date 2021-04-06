
 void setup(){
  fullScreen();                       // Pantalla completa
  textAlign(CENTER); textSize(15);   // Alineacion y tamaño del texto
  rectMode(CENTER);
}

void draw(){
  
  background(255);    // Color de fondo
  
  //Pantalla de juego
  fill(200,50,100);
  rect(width/2,250,750,1700);
  
  //Tabla puntuaciones
  fill(0,200,200);
  rect(width/2-670,800,450,550);
  
  //Pieza extra
  fill(0,0,200);
  rect(width/2-670,230,400,400);
  
  //Piezas siguientes
  fill(0,200,0);
  rect(width/2+670,350,400,850);
}
