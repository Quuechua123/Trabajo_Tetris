void setup(){
  fullScreen();                       // Pantalla completa
  textAlign(CENTER); textSize(15);   // Alineacion y tamaño del texto
  rectMode(CENTER);
}

void draw(){
  
  background(255);    // Color de fondo
  
  //Logo
  fill(200,50,100);
  rect(width/2,230,logoWidth,logoHeight);
  
  fill(100,0,250);
  rect(width/2,600,bottonWidth,bottonHeight);
  rect(width/2,750,bottonWidth,bottonHeight);
  rect(width/2,900,bottonWidth,bottonHeight);
  
  fill(200,200,100);
  rect(width/2-600,750,tableWidth,tableHeight);


}
