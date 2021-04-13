
//Libreria de MySQL y Processing
import de.bezier.data.sql.*;

String fecha = "2021-03-16 18:33:05";

Tabla ta;

enum PANTALLA {
  MENU, JUGAR, CONFIG
};

PANTALLA pantalla = PANTALLA.MENU;

Tablero t;
Figura figActual;
boolean gameOver = false;
int numLinies = 0;
FigList figs;

int speed = 3;

void setup() {
  size(1920, 1080);
  textAlign(CENTER);  // Alineación del texto
  textSize(18);   // Tamaño del texto
  rectMode(CENTER);

  t = new Tablero(10, 20, width/2-300, 0, 600, height);

  conecta();

  loadMedia();
  setGUI();

  figs = new FigList();
  figActual = figs.nextFigura();
  
}



void draw() {

  image(imgFondo, 0, 0, width, height);   //Imagen de fondo

  // Dibuja la pantalla correspondiente
  switch(pantalla) {
  case MENU: 
    dibujaPantallaMenu(); 
    break;
  case JUGAR:
    dibujaPantallaJuego(); 
    jugar();
    
    break;
  case CONFIG: 
    dibujaPantallaAjustes(); 
    break;
  }
}

void jugar() {

  pushMatrix();
  translate(t.x, t.y);
  // Dibuja el tablero
  t.dibuja();

  // Dibuja la figura actual
  t.dibuja(figActual);

  popMatrix();

  // Bucle del juego
  if (!gameOver) {

    if (frameCount%speed == 0 && !figActual.moverAbajo(t)) {
      println("Figura bloqueada!!");
      if (figActual.fila==0) {
        println("Partida acabada!!");
        gameOver = true;
        c.setVisible(true);
      } else {
        // Añadir figura al tauler
        t.anadirFigura(figActual);
        t.aplica(figActual);

        // Comprovar linies
        boolean[] llenas = t.comprovarFilasLlenas();
        for (int f=0; f<llenas.length; f++) {
          if (llenas[f]==true) {
            t.bajarFigurasAntesDe(f);
            numLinies++;
          }
        }

        if (figs.isEmpty()) {
          figs = new FigList();
        }
        figActual = figs.nextFigura();
      }
    }
  } else {
    // Si la partida ha acabado
    pushStyle();
      fill(0); 
      textAlign(CENTER);
      textSize(200);
      textFont(font2);
      text("GAME OVER", width/2-40, height/3);
      // Número de figuras colocadas
      text("FIGURAS:"+t.getNumFiguras(), width/2-40, height/3 + 150);
      // Número de líneas
      text("LINEAS:"+numLinies, width/2-40, height/3+300);
    popStyle();
    

  }
  
  p.display();
  c.display();
}
