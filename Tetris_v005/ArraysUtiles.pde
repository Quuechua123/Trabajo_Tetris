
int[][] matrizF = {{0, 0, 1, 0}, 
  {0, 0, 1, 0}, 
  {0, 0, 1, 0}, 
  {0, 0, 1, 0}};

int[][] matrizZL = {{0, 1, 1}, 
  {1, 1, 0}, 
  {0, 0, 0}};

int[][] matrizZR = {{1, 1, 0}, 
  {0, 1, 1}, 
  {0, 0, 0}};                    

int[][] matrizT = {{0, 1, 0}, 
  {0, 1, 1}, 
  {0, 1, 0}};

int[][] matrizLR = {{0, 1, 0}, 
  {0, 1, 0}, 
  {0, 1, 1}}; 

int[][] matrizLL = {{0, 1, 0}, 
  {0, 1, 0}, 
  {1, 1, 0}}; 

int[][] matrizS = {{1, 1}, 
  {1, 1}};


// Copia de una matriz
int[][] copiaMatriz(int[][] input) {

  int[][] output = new int[input.length][input[0].length];
  for (int f=0; f<input.length; f++) {
    for (int c=0; c<input[0].length; c++) {
      output[f][c] = input[f][c];
    }
  }
  return output;
}
