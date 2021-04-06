//Dibujo de las diferentes zonas de cada pantalla

//Zona central
void dibujoZonaCentral() {
  pushStyle();
  fill(58, 183, 149);
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
  text("Volumen de la Música", width/2-130, 615);
  text("Insert nombre usuario", width/2-130, 750);

  popStyle();
}

//Tabla de Putnuaciones

void dibujoTablaPuntuaciones() {
  pushStyle();

  tabla.display(width/2-900, 500, 600, tableHeight);
}

//Tablas de pieza guardada y piezas siguientes
void dibujoTablasPiezas() {
  pushStyle();
  textFont(font1);
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
