
class Tablero {

  int[][] tablero;

  int numCols, numFils;

  float alturaLinea, anchoColumna;
  float w, h;

  //Constructor
  Tablero(float w, float h) {
    numCols = 10;
    numFils = 20;
    tablero = new int[numFils][numCols];
    alturaLinea = h/ (float) numFils;
    anchoColumna = w/(float)numCols;
    this. h = h;
    this.w = w;
  }

  void dibujaTablero(float x, float y) {
    pushStyle();
    fill(0);
    rectMode(CORNER);
    rect(x, y, w, h);

    for (int f = 0; f<=tablero.length +1; f++) {
      stroke(255);
      line(x, y+alturaLinea*f, x+w, y+alturaLinea*f);
    }
    for (int c = 0; c<=tablero[0].length; c++) {
      line(x+anchoColumna*c, y, x+anchoColumna*c, y+h);
    }
    popStyle();
  }

  void dibujaPieza(Pieza fig, float x, float y) {
    pushStyle();
    rectMode(CORNER);
    for (int f=0; f<fig.matriz.length; f++) {
      for (int c=0; c<fig.matriz[0].length; c++) {
        int ct = c + fig.columna;
        int ft = f + fig.fila;
        if (fig.matriz[f][c]==1) {
          fill(fig.col);
          stroke(0);
        } else {
          fill(fig.col, 50);
        }
        rect(x + ct*anchoColumna, y + ft*alturaLinea, anchoColumna, alturaLinea);
      }
    }
    popStyle();
  }
}
