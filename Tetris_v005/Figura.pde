class Figura {


  int[][] matriz;

  int fila, col;
  int tipo;

  Figura(int[][] matriz, int t) {
    this.matriz = copiaMatriz(matriz);
    this.tipo = t;
  }

  void setPosicio(int f, int c) {
    this.fila = f;
    this.col = c;
  }

  void setTipo(int tipo) {
    this.tipo = tipo;
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

  void borrarFila(int nf) {

    int df = nf - this.fila;

    //fila superior
    if (nf==df) {
      for (int c=0; c<matriz[0].length; c++) {
        matriz[0][c] = 0;
      }
    } else if (df>0 && df<matriz.length) {
      // Baixam totes les files superiors
      for (int f=df; f>0; f--) {
        for (int c=0; c<matriz[f].length; c++) {
          matriz[df][c] = matriz[df-1][c];
        }
      }
      // Vaciar la 1era fila
      for (int c=0; c<matriz[0].length; c++) {
        matriz[0][c] = 0;
      }
    }
  }

  boolean posicionLibre(Tablero t, int ff, int cf) {
    for (int f=0; f<matriz.length; f++) {
      for (int c=0; c<matriz[0].length; c++) {
        println("MIRANDO FILA: "+(ff+f)+", I COL:"+(cf+c));
        if (matriz[f][c]==1 && t.tablero[ff+f][cf+c]!=0) {
          println("OCUPADA");
          return false;
        }
      }
    }
    return true;
  }

  void moverIzquierda(Tablero t) {
    if (this.col + this.getMinCol() > 0) {
      println("COL:"+this.col+",FILA: "+this.fila);

      int newCol = this.col - 1;

      println("COL DESTI:"+newCol);
      if (posicionLibre(t, this.fila, newCol)) {
        println("SE PUEDE MOVER");
        this.col--;
      }
    }
  }

  void moverDerecha(Tablero t) {
    if (this.col + this.getMaxCol() < t.numCols - 1) {
      this.col++;
    }
  }

  boolean moverAbajo(Tablero t) {

    if (this.fila + this.getMaxFil() < t.numFils - 1) {
      int newFila = this.fila + 1;
      if (posicionLibre(t, newFila, this.col)) {
        this.fila++;
        return true;
      }
    }
    return false;
  }

  void rota(int sentit) {

    int[][] q = this.copia();

    if (sentit==0) {
      for (int f=0; f<matriz.length; f++) {
        for (int c=0; c<matriz[0].length; c++) {
          matriz[f][c]=q[matriz.length - c -1][f];
        }
      }
    } else {
      for (int f=0; f<matriz.length; f++) {
        for (int c=0; c<matriz[0].length; c++) {
          matriz[f][c]=q[c][matriz.length - f - 1];
        }
      }
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
}
