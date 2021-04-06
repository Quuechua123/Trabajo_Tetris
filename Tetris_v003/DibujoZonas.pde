//Dibujo de las diferentes zonas de cada pantalla

//Zona central
void dibujoZonaCentral() {
  pushStyle();
  fill(50, 50, 200);
  rect(width/2, 250, centerWidth, centerHeight);
  textFont(font1); 
  fill(0); 
  textSize(100);
  text("Ajustes", width/2, 100);
  textSize(48);
  text("Mover a la Derecha", width/2-150, 220);
  text("Mover a la Iquierda", width/2-150, 270);
  text("Rotar a la Derecha", width/2-150, 320);
  text("Rotar a la Iquierda", width/2-150, 370);
  text("Caida Suave", width/2-150, 420);
  text("Caida Rápida", width/2-150, 470);
  text("Guardar pieza", width/2-150, 520);
  text("Pieza Fantasma", width/2-100, 620);
  text("Volumen de la Música", width/2-130, 730);
  text("Tipo de Música", width/2-150, 800);

  popStyle();
}

//Tabla de Putnuaciones

void dibujoTablaPuntuaciones() {
  tabla.display(width/2-870, 500, tableWidth, tableHeight);
}

//Tablas de pieza guardada y piezas siguientes
void dibujoTablasPiezas() {
  pushStyle();
  fill(0);
  text("Pieza Guardada", width/2-670, 90);
  rect(width/2-670, 270, piezaExWidth, piezaExHeight);
  fill(255);
  rect(width/2-670, 90, piezaExWidth, 40);
  fill(0); 
  textSize(38);
  text("Pieza Guardada", width/2-670, 100);
  rect(width/2+670, 400, piezasWidth, piezasHeight);
  fill(255);
  rect(width/2+670, 90, piezaExWidth, 40);
  fill(0); 
  textSize(38);
  text("Piezas Siguientes", width/2+670, 100);
  popStyle();
}

//Botones del menu
void dibujoBotones() {
  bJugar.display();
  bConfig.display();
  bSalida.display();
}

//Logo
void dibujoLogo() {
  pushStyle();

  image(imgLogo, 500, 25, logoWidth, logoHeight);
  popStyle();
}
