// Botones del Menú Principal
Button bJugar, bConfig, bSalida, bReset;

//Botones menu configurción
Select moveRight, moveLeft, rotateRight, rotateLeft, softDrop, hardDrop, hold, Seleccion;
CheckBox piezaFantasma;
Contador volumen, tipoMusica;



//Valores Contadores
float contadorW = 150, contadorH = 50;

//Valores y dimensiones Select
String[] selectValues = {"w", "a", "s", "d", "q", "e", "z", "c", "v"};
String[] selectValues2 = {"Normal", "Difícil", "Touchdown"};
float selectW = 300;
float selectH = 30;

Tabla tabla;

// Dimensiones de los botones
int buttonH = 100, buttonW = 450;
int buttonH2 = 100, buttonW2 = 100;

float tableW = 400, tableH = 500;
int filas = 10, columnas = 3;
String[] headers = {"Nombre", "Puntuación", "Fecha"};
float[] colWidths = {20, 40, 40};
String[][] info = {
  {"AAAA", "1.000.252", "5/4/2020"}, 
  {"AAAA", "1.000.252", "5/4/2020"}, 
  {"AAAA", "1.000.252", "5/4/2020"}, 
  {"AAAA", "1.000.252", "5/4/2020"}, 
  {"AAAA", "1.000.252", "5/4/2020"}, 
  {"AAAA", "1.000.252", "5/4/2020"}, 
  {"AAAA", "1.000.252", "5/4/2020"}, 
  {"AAAA", "1.000.252", "5/4/2020"}, 
  {"AAAA", "1.000.252", "5/4/2020"}, 
  {"AAAA", "1.000.252", "5/4/2020"}, 
};

// Creación de los elementos de la GUI
void setGUI() {
  initButtons();
  crearTabla();
  initSelect();
  valoresInicialesTeclas();
  initCheckBox();
  initContador();
}

// Creación de los botones de la GUI
void initButtons() {
  bJugar   = new Button("Jugar", width/3+100, 775, buttonW, buttonH); 
  bJugar.setEnabled(false);
  bConfig  = new Button("Configuración", width/3+100, 925, buttonW, buttonH);
  bConfig.setEnabled(false);
  bSalida = new Button("Salida", width-200, height-200, buttonW2, buttonH2);
  bReset = new Button("Resetear Ajustes", width/2-165, 900, 350, 50);
}

void initSelect() {
  moveRight = new Select(selectValues, width/2, 200, selectW, selectH);
  moveLeft  = new Select(selectValues, width/2, 250, selectW, selectH);
  rotateRight = new Select(selectValues, width/2, 300, selectW, selectH);
  rotateLeft = new Select(selectValues, width/2, 350, selectW, selectH);
  softDrop = new Select(selectValues, width/2, 400, selectW, selectH);
  hardDrop  = new Select(selectValues, width/2, 450, selectW, selectH);
  hold = new Select(selectValues, width/2, 500, selectW, selectH);
  Seleccion = new Select(selectValues2, width/2+40, 625, 200, buttonH2); 
}

void initCheckBox() {
  piezaFantasma = new CheckBox(width/2+50, 580, 60);
}

void initContador() {
  volumen = new Contador(iconoMas, iconoMenos, width/2+50, 700, contadorW, contadorH);
  tipoMusica = new Contador(iconoMas, iconoMenos, width/2+50, 770, contadorW, contadorH);
  tipoMusica.setValues(0, 3);
  tipoMusica.setInitialValue(3);
}

// Activar els botons del menú
void enableButtons() {
  bJugar.setEnabled(true);
  bConfig.setEnabled(true);
  bSalida.setEnabled(true);
}

void crearTabla() {
  tabla = new Tabla(filas, columnas);
  tabla.setHeaders(headers);
  String[][] info = getInfoTablaPartida();
  tabla.setData(info);
  tabla.setColumnWidths(colWidths);
}
