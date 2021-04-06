

void connecta(){
  
  // Paràmetres de la connexió
    String user     = "root";
    String pass     = "";   
    String database = "tetris";
    
    // Establim la connexió
    msql = new MySQL( this, "localhost", database, user, pass );
    
    // Si la connexió s'ha establert
    if (msql.connect()){
      
        println("Connectado a base de datos :)");
    }
    else {
      // La connexió ha fallat!!!
      println("Connection failed !");
    }
}



// Obté el número de files de la taula
int getNumRowsTaula(String nomTaula){
  msql.query( "SELECT COUNT(*) AS n FROM %s", nomTaula );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}
  
// Obté informació de la taula Unitat
String[][] getInfoTablaPartida(){
  
  int numRows = getNumRowsTaula("partida");
  
  String[][] data = new String[numRows][3];
  
  int nr=0;
  msql.query( "SELECT * FROM partida" );
  while (msql.next()){
      data[nr][0] = msql.getString("Nombre");
      data[nr][1] = msql.getString("Puntuacion");
      data[nr][2] = msql.getString("Fecha");
      nr++;
  }
  return data;
}
