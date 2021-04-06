// Funciones de Dibujo de las Pantallas

void dibujaPantallaMenu() {
  pushStyle();
  dibujoTablaPuntuaciones();
  dibujoBotones();
  dibujoLogo();
  Seleccion.display();
  popStyle();
}

void dibujaPantallaJuego() {
  enableButtons();
  dibujoBotones();
  bJugar.setEnabled(false);
  bConfig.setEnabled(false);
  dibujoTablasPiezas();
}

void dibujaPantallaAjustes() {
  enableButtons();
  dibujoBotones();
  bJugar.setEnabled(false);
  bConfig.setEnabled(false);
  dibujoZonaCentral();
  volumen.display();
  hold.display();
  hardDrop.display();
  softDrop.display();
  rotateLeft.display();
  rotateRight.display();
  moveLeft.display();
  moveRight.display();
  bReset.display();
  n.display();
  b1.display();
  b2.display();
}
