Figura creaFiguraRandom() {
  int n  = (int) random(0, 7);
  return creaFigura(n);
}


Figura creaFigura(int n) {

  int f = 0;
  int rc = (int)random(0, t.numCols-4);

  Figura fig;
  switch(n) {
  case 0:  
    fig = new FiguraZL();  
    break;  
  case 1:  
    fig = new FiguraZR();  
    break;
  case 2:  
    fig = new FiguraS();  
    break;
  case 3:  
    fig = new FiguraT();  
    break;
  case 4:  
    fig = new FiguraF();  
    break;
  case 5:  
    fig = new FiguraLL(); 
    break;
  case 6:  
    fig = new FiguraLR(); 
    break;
  default: 
    fig = new FiguraS();  
    break;
  }

  fig.setPosicio(f, rc);
  return fig;
}
