char teclaRight, teclaLeft, rotaLeft, rotaRight, caidaSuave, caidaRapida, guardarPieza;

void valoresInicialesTeclas() {
  teclaRight = 'd';
  teclaLeft = 'a';
  rotaLeft = 'q';
  rotaRight = 'e';
  caidaSuave = 'w';
  caidaRapida = 's';
  guardarPieza = 'c';
}

void keyPressed() {
  if (key==teclaRight) {
    println("Derecha");
    figActual.moverDerecha(t);
  } else if (key==teclaLeft) {
    println("Izquierda");
    figActual.moverIzquierda(t);
  } else if (key==rotaRight) {
    println("Rotar Derecha");
    figActual.rota(0);
  } else if (key==rotaLeft) {
    figActual.rota(1);
  } else if (key==caidaSuave) {
    println("Suave");
    figActual.moverAbajo(t);
  } else if (key==caidaRapida) {
    println("Rapida");
    figActual.moverAbajo(t);
  } else if (key==guardarPieza) {
    println("Guardar");
  }
  
   n.keyPressed(key, (int)keyCode); 
}

void mousePressed() {

  if (bJugar.mouseOverButton() && bJugar.enabled) {
    pantalla = PANTALLA.JUGAR;
    audio1.play();
    float vol = volumen.value /100.0f;
    println(vol);
    audio2.amp(vol);
    audio2.loop();
  } else if (bConfig.mouseOverButton() && bConfig.enabled) {
    pantalla = PANTALLA.CONFIG;
    audio1.play();
  } else if (bSalida.mouseOverButton() && bSalida.enabled) {
    pantalla = PANTALLA.MENU;
    audio1.play();
    audio2.stop();
  } else if (moveRight.mouseOverSelect() && moveRight.enabled) {
    if (!moveRight.collapsed) {
      moveRight.update();
    }
    moveRight.toggle();
  } else if (moveLeft.mouseOverSelect() && moveLeft.enabled) {
    if (!moveLeft.collapsed) {
      moveLeft.update();
    }
    moveLeft.toggle();
  } else if (rotateRight.mouseOverSelect() && rotateRight.enabled) {
    if (!rotateRight.collapsed) {
      rotateRight.update();
    }
    rotateRight.toggle();
  } else if (rotateLeft.mouseOverSelect() && rotateLeft.enabled) {
    if (!rotateLeft.collapsed) {
      rotateLeft.update();
    }
    rotateLeft.toggle();
  } else  if (softDrop.mouseOverSelect() && softDrop.enabled) {
    if (!softDrop.collapsed) {
      softDrop.update();
    }
    softDrop.toggle();
  } else if (hardDrop.mouseOverSelect() && hardDrop.enabled) {
    if (!hardDrop.collapsed) {
      hardDrop.update();
    }
    hardDrop.toggle();
  } else if (hold.mouseOverSelect() && hold.enabled) {
    if (!hold.collapsed) {
      hold.update();
    }
    hold.toggle();
  } else  if (Seleccion.mouseOverSelect() && Seleccion.enabled) {
    if (!Seleccion.collapsed) {
      Seleccion.update();
    }
    Seleccion.toggle();
    if (Seleccion.selectedValue!="") {
      bJugar.setEnabled(true);
      bConfig.setEnabled(true);
    }
  } else if (volumen.mouseOverButtons()) {
    volumen.update();
  }
  else if (c.visible && c.bAceptar.mouseOverButton() && c.bAceptar.enabled){
    c.setVisible(false);
    // Guardar puntuación en BBDD
    String jugador  = n.text;
    String puntos   = String.valueOf(numLinies);
    String modalidad = "1";
    if(Seleccion.selectedValue.equals("Normal")){ modalidad="1";}
    else if(Seleccion.selectedValue.equals("Difícil")){ modalidad="2";}
    else { modalidad="3";}
    insertPuntacion(jugador, puntos, modalidad);
    p.setVisible(true);
    String[][] info = getInfoTablaPartida();
    tabla.setData(info);
  }
  else if(c.visible && c.bCancelar.mouseOverButton() && c.bCancelar.enabled){
    c.setVisible(false);
    // Descartar puntuación
  }
  else if(p.visible && p.bAceptar.mouseOverButton() && p.bAceptar.enabled){
    p.setVisible(false);
  }

  n.isPressed();
   

}
