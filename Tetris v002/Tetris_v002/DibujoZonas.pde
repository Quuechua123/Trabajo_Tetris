//Dibujo de las diferentes zonas de cada pantalla

//Zona central
void dibujoZonaCentral(){
  fill(200,50,100);
  rect(width/2,250,centerWidth,centerHeight);
}

//Tabla de Putnuaciones
void dibujoTablaPuntuaciones(){
  fill(0,200,200);
  rect(width/2-670,750,tableWidth,tableHeight);
}

//Tablas de pieza guardada y piezas siguientes
void dibujoTablasPiezas(){
  fill(0,111,0);
  rect(width/2-670,270,piezaExWidth,piezaExHeight);
  rect(width/2+670,400,piezasWidth,piezasHeight);

}

//Botones del menu
void dibujoBotones(){
  fill(100,10,100);
  rect(width/2,625,bottonWidth,bottonHeight);
  rect(width/2,775,bottonWidth,bottonHeight);
  rect(width/2,925,bottonWidth,bottonHeight);
}

//Logo
void dibujoLogo(){
  fill(0,255,0);
  rect(width/2,250,logoWidth,logoHeight);
}
