// Botones del Menú Principal
Button bJugar, bConfig, bSalida, bReset, b1, b2;

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

float tableW = 750, tableH = 500;
int filas = 10, columnas = 3;
String[] headers = {"Nombre", "Puntuación", "Fecha"};
float[] colWidths = {25, 25, 50};

PopUp p;
float popW = 600, popH = 340;

String title = "Puntuación guardada!";
String message = "La puntuación se ha guardado correctamente";

Confirm c;
float comW = 600, comH = 340;

String ctitle = "Puntuación guardada?";
String cmessage = "¿Desea guardar la puntuación?";

TextField n;   
int compW = 240, compH = 50;

// Creación de los elementos de la GUI
void setGUI() {
  initButtons();
  crearTabla();
  initSelect();
  valoresInicialesTeclas();
  initCheckBox();
  initContador();
  initPopUp();
  initConfirm();
  initTextField();
}

// Creación de los botones de la GUI
void initButtons() {
  bJugar   = new Button("Jugar", width/3+100, 775, buttonW, buttonH); 
  bJugar.setEnabled(false);
  bConfig  = new Button("Configuración", width/3+100, 925, buttonW, buttonH);
  bConfig.setEnabled(false);
  bSalida = new Button("Salida", width-200, height-200, buttonW2, buttonH2);
  bReset = new Button("Resetear Ajustes", width/2-165, 900, 350, 50);
  b1 = new Button("Inserir", width/2-260, 3*height/4, compW, compH);
  b2 = new Button("Reset", 2*width/4+20, 3*height/4, compW, compH);
}

void initSelect() {
  moveRight = new Select(selectValues, width/2, 200, selectW, selectH);
  moveLeft  = new Select(selectValues, width/2, 250, selectW, selectH);
  rotateRight = new Select(selectValues, width/2, 300, selectW, selectH);
  rotateLeft = new Select(selectValues, width/2, 350, selectW, selectH);
  softDrop = new Select(selectValues, width/2, 400, selectW, selectH);
  hardDrop  = new Select(selectValues, width/2, 450, selectW, selectH);
  hold = new Select(selectValues, width/2, 500, selectW, selectH);
  Seleccion = new Select(selectValues2, width/2-220, 625, 450, buttonH2); 
  Seleccion.setTextSize(28);
  Seleccion.setLineText(5);
}

void initCheckBox() {
  piezaFantasma = new CheckBox(width/2+50, 580, 60);
}

void initContador() {
  volumen = new Contador(iconoMas, iconoMenos, width/2+50, 590, contadorW, contadorH);
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

void initPopUp(){
  p = new PopUp(title, message, width/8-225, height-600, popW, popH);
  p.setVisible(false);
}

void initConfirm(){
  c = new Confirm(ctitle, cmessage, width/8-225, height-600, comW, comH);
  c.setVisible(false);
}

void initTextField(){
  n = new TextField(width/2+50, 720, compW, compH);
}
