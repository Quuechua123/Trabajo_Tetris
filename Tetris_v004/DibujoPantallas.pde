// Funciones de Dibujo de las Pantallas

void dibujaPantallaMenu() {
  pushStyle();
  dibujoTablaPuntuaciones();
  dibujoBotones();
  dibujoLogo();
  Seleccion.display();
  fill(255); 
  rectMode(CORNER);
  rect(width/2-220, 625, 270, buttonH2);
  fill(0); 
  textSize(28); 
  textAlign(LEFT);
  text("Selecciona el Modo", width/2-210, 670);
  popStyle();
}

void dibujaPantallaJuego() {
  enableButtons();
  dibujoBotones();
  bJugar.setEnabled(false);
  bConfig.setEnabled(false);
  dibujoTablasPiezas();
  t.dibujaTablero(width/3, 0);
  t.dibujaPieza(p, width/3, 0);
  dibujoTablaPuntuaciones();
}

void dibujaPantallaAjustes() {
  enableButtons();
  dibujoBotones();
  bJugar.setEnabled(false);
  bConfig.setEnabled(false);
  dibujoZonaCentral();
  piezaFantasma.display();
  volumen.display();
  tipoMusica.display();
  hold.display();
  hardDrop.display();
  softDrop.display();
  rotateLeft.display();
  rotateRight.display();
  moveLeft.display();
  moveRight.display();
  bReset.display();
}
