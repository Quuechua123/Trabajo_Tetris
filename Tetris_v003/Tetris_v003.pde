// Diseño de les pantallas de la App Tetris v1.3

//Enumeración de las pantallas
enum PANTALLA {
  MENU, JUGAR, CONFIG
};

// Pantalla actual
PANTALLA pantalla = PANTALLA.MENU;

Tablero t;
Pieza p;

void setup() {
  size(1920, 1080);
  textAlign(CENTER);  // Alineación del texto
  textSize(18);   // Tamaño del texto
  rectMode(CENTER);
  loadMedia();
  setGUI();

  p = new Pieza(TIPOPIEZA.F, 0, 0, color(255, 0, 0));

  //p.dibujaPieza();

  t = new Tablero(width/3, height-2);
}

void draw() {

  image(imgFondo, 0, 0, width, height);   //Imagen de fondo

  // Dibuixa la pantalla corresponent
  switch(pantalla) {
  case MENU: 
    dibujaPantallaMenu(); 
    break;
  case JUGAR:
    dibujaPantallaJuego(); 
    break;
  case CONFIG: 
    dibujaPantallaAjustes(); 
    break;
  } 

  updateCursor();
}
