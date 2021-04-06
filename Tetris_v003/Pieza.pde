enum TIPOPIEZA { 
  LR, LL, ZR, ZL, F, T, S
};
int[][] matrizLR = {{1, 0, 0}, {1, 0, 0}, {1, 1, 0}};
int[][] matrizLL = {{0, 0, 1}, {0, 0, 1}, {0, 1, 1}};
int[][] matrizZR = {{0, 0, 0}, {0, 1, 1}, {1, 1, 0}};
int[][] matrizZL = {{0, 0, 0}, {1, 1, 0}, {0, 1, 1}};
int[][] matrizF = {{1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0}};
int[][] matrizT = {{1, 1, 1}, {0, 1, 0}, {0, 0, 0}};
int[][] matrizS = {{1, 1, 0}, {1, 1, 0}, {0, 0, 0}};

class Pieza {

  int [][] matriz;

  int fila, columna;

  color col;

  //Constructor
  Pieza (TIPOPIEZA t, int f, int c, color col) {

    fila = f;
    columna = c;
    this.col = col;


    if (t == TIPOPIEZA.LR) {
      matriz = matrizLR;
    } else if (t == TIPOPIEZA.LL) {
      matriz = matrizLL;
    } else if (t == TIPOPIEZA.ZR) {
      matriz = matrizZR;
    } else if (t == TIPOPIEZA.ZL) {
      matriz = matrizZL;
    } else if (t == TIPOPIEZA.F) {
      matriz = matrizF;
    } else if (t == TIPOPIEZA.T) {
      matriz = matrizT;
    } else if (t == TIPOPIEZA.S) {
      matriz = matrizS;
    }
  }

  void setPosicio(int f, int c) {
    this.fila = f;
    this.col = c;
  }

  int getMaxCol() {
    int maxc=0;
    for (int f=0; f<matriz.length; f++) {
      for (int c=0; c<matriz[0].length; c++) {
        if (matriz[f][c]==1 && c>maxc) {
          maxc = c;
        }
      }
    }
    return maxc;
  }

  int getMaxFil() {
    int n=0;
    for (int f=0; f<matriz.length; f++) {
      for (int c=0; c<matriz[0].length; c++) {
        if (matriz[f][c]==1) {
          n = f;
        }
      }
    }
    return n;
  }

  int getMinCol() {
    int minc=matriz[0].length;
    for (int f=0; f<matriz.length; f++) {
      for (int c=0; c<matriz[0].length; c++) {
        if (matriz[f][c]==1 && c<minc) {
          minc=c;
        }
      }
    }
    return minc;
  }

  int getMinFil() {
    int n=0;
    for (int f=0; f<matriz.length; f++) {
      for (int c=0; c<matriz[0].length; c++) {
        if (matriz[f][c]==1) {
          return f;
        }
      }
    }
    return n;
  }

  /*boolean posicionLibre(Tablero t, int ff, int cf){
   boolean b = true;
   for(int f=0; f<matriz.length; f++){
   for(int c=0; c<matriz[0].length; c++){
   if(matriz[f][c]==1 && t.tablero[ff+f][cf+c]==1){
   return false;
   }
   }
   }
   return b;
   }*/

  void moverDerecha(Tablero t) {
    if (this.columna + this.getMaxCol() < t.numCols - 1) {
      this.columna++;
    }
  }

  void moverIzquierda(Tablero t) {
    if (this.columna + this.getMinCol() > 0) {
      int newColumna = this.col - 1;
      //if(posicionLibre(t, this.fila, newColumna)){
      this.columna--;
      //}
    }
  }

  void moverBajar(Tablero t) {
    if (this.fila + this.getMaxFil() <t.numFils - 1) {
      this.fila++;
    }
  }

  int[][] copia() {

    int[][] q = new int[this.matriz.length][this.matriz[0].length];
    for (int f=0; f<matriz.length; f++) {
      for (int c=0; c<matriz[0].length; c++) {
        q[f][c] = matriz[f][c];
      }
    }
    return q;
  }

  void rota(Tablero t) {

    int[][] q = this.copia();

    for (int f=0; f<matriz.length; f++) {
      for (int c=0; c<matriz[0].length; c++) {
        matriz[f][c]=q[matriz.length - c -1][f];
      }
    }
  }

  void dibujaPieza(Tablero t) {

    for (int f=0; f<matriz.length; f++) {
      for (int c=0; c<matriz[0].length; c++) {
        if (matriz[f][c] == 1) {
        }
      }
      println();
    }
  }
}
