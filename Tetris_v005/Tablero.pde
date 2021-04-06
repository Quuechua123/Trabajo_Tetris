class Tablero {

  int x, y;
  int numCols, numFils;
  float cellWidth, cellHeight;
  int[][] tablero;

  ArrayList<Figura> figuras;

  Tablero(int nc, int nf, int x, int y, int w, int h) {
    this.numCols = nc;
    this.numFils = nf;
    this.x = x;
    this.y = y;
    this.cellWidth = w/(float)numCols;
    this.cellHeight = h/(float)numFils;

    figuras = new ArrayList<Figura>();
    reset();
  }

  void anadirFigura(Figura f) {
    figuras.add(f);
  }

  Figura getFigActual() {
    return this.figuras.get(0);
  }

  int getNumFiguras() {
    return this.figuras.size();
  }


  void reset() {
    tablero = new int[numFils][numCols];
    for (int c=0; c<numCols; c++) {
      for (int f=0; f<numFils; f++) {
        tablero[f][c]=0;
      }
    }
  }

  void dibuja() {
    dibujaTablero();
    dibujaCasillas();
  }

  void dibujaTablero() {
    for (float c=0; c<numCols; c++) {
      for (float f=0; f<numFils; f++) {
        fill(colorVacio);
        stroke(0);
        rect(c*cellWidth, f*cellHeight, cellWidth, cellHeight);
      }
    }
  }

  void dibujaCasillas() {
    for (int c=0; c<numCols; c++) {
      for (int f=0; f<numFils; f++) {
        fill(colorVacio);
        if (tablero[f][c]!=0) {
          int numColor = tablero[f][c];
          fill(colors[numColor]);
        }
        stroke(0);
        rect(c*cellWidth, f*cellHeight, cellWidth, cellHeight);
      }
    }
  }


  void aplica(Figura fig) {
    for (int f=0; f<fig.matriz.length; f++) {
      for (int c=0; c<fig.matriz[0].length; c++) {
        if (fig.matriz[f][c]==1) {
          int ct = c + fig.col;
          int ft = f + fig.fila;
          this.tablero[ft][ct] = fig.tipo;
        }
      }
    }
  }

  void dibuja(Figura fig) {
    for (int f=0; f<fig.matriz.length; f++) {
      for (int c=0; c<fig.matriz[0].length; c++) {
        int ct = c + fig.col;
        int ft = f + fig.fila;
        if (fig.matriz[f][c]==1) {
          fill(colors[fig.tipo]);
          stroke(0);
          rect(ct*cellWidth, ft*cellHeight, cellWidth, cellHeight);
        }
      }
    }
  }

  boolean[] comprovarFilasLlenas() {
    boolean[] llenas = new boolean[tablero.length];
    for (int nf = tablero.length -1; nf>=0; nf--) {
      llenas[nf] = filaLlena(nf);
    }
    return llenas;
  }

  boolean filaLlena(int nf) {
    for (int c=0; c<tablero[nf].length; c++) {
      if (tablero[nf][c]==0) {
        return false;
      }
    }
    return true;
  }

  void bajarFigurasAntesDe(int numf) {

    // Bajar filas de 0 a numF-1
    for (int f=numf; f>0; f--) {
      for (int c = 0; c < tablero[f].length; c++) {
        tablero[f][c] = tablero[f-1][c];
      }
    }

    // Vaciar fila zero
    for (int c = 0; c < tablero[0].length; c++) {
      tablero[0][c] = 0;
    }
  }
}
