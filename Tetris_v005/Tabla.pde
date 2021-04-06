class Tabla {

  String[] tableHeaders;  
  String[][] tableData;    
  float[] columnWidths;   

  int numCols, numRows; 

  // Constructor
  Tabla(int nr, int nc) {
    this.numRows = nr;
    this.numCols = nc;
  }

  // Setters

  void setHeaders(String[] h) {
    this.tableHeaders = h;
  }

  void setData(String[][] d) {
    this.tableData = d;
  }

  void setValueAt(String value, int nr, int nc) {
    this.tableData[nr][nc] = value;
  }

  void setColumnWidths(float[] w) {
    this.columnWidths = w;
  }

  // Dibuixa taula
  void display(float x, float y, float w, float h) {
    pushStyle();
    rectMode(CORNER);
    fill(200, 50); 
    stroke(0);
    strokeWeight(3);
    fill(255);
    rect(x, y, w, h);

    float rowHeight = h / numRows;
    fill(63, 157, 255); 
    stroke(0);
    strokeWeight(3);
    rect(x, y, w, rowHeight);

    // Dibuixa files
    stroke(0);
    for (int r = 1; r <numRows; r++) {
      if (r==1) { 
        strokeWeight(3);
      } else {    
        strokeWeight(1);
      }
      line(x, y + r*rowHeight, x + w, y + r*rowHeight);
    }

    // Dibuixa Columnes
    float xCol = x;
    for (int c = 0; c<numCols; c++) {
      xCol += w*columnWidths[c]/100.0;
      line(xCol, y, xCol, y + h);
    }

    // Dibuixa textos

    fill(0); 
    textSize(24); 
    textAlign(LEFT);

    for (int r = 0; r <= tableData.length; r++) {
      xCol = x;
      for (int c = 0; c< numCols; c++) {
        if (r==0) {
          text(tableHeaders[c], xCol + 10, y + (r+1)*rowHeight - 10);
        } else {
          text(tableData[r-1][c], xCol + 10, y + (r+1)*rowHeight - 10);
        }
        xCol += w*columnWidths[c]/100.0;
      }
    }
    popStyle();
  }
}