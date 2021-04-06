class Contador {

  // Valor del comptador
  int value = 100;
  int minValue= 0, maxValue = 100;
  int stepValue = 10;

  // Propiedades de un contdor
  float x, y, w, h;  // Posición y dimensiones

  // Colores
  color fillColor, strokeColor;

  PImage iconoMas, iconoMenos;    


  // Método Constructor
  Contador(PImage iconoMas, PImage iconoMenos, float x, float y, float w, float h) {
    this.iconoMas = iconoMas;
    this.iconoMenos = iconoMenos;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    fillColor = color(155, 155, 155);
    strokeColor = color(0);
  }

  // Setters

  void setInitialValue(int n) {
    this.value = n;
  }

  void setValues(int minValue, int maxValue) {
    this.minValue = minValue;
    this.maxValue = maxValue;
  }

  // Dibuja el botón
  void display() {
    pushStyle();
    fill(fillColor);      
    rectMode(CORNER); 
    stroke(strokeColor); 
    strokeWeight(5); 
    textAlign(CORNER);
    rect(this.x, this.y, this.w + 2*this.h, this.h, 10);   // Rectangle del botó

    fill(0); 
    textSize(32);
    text(value, this.x + 20, this.y + this.h/2 + 10);

    // Icono del botón
    fill(255); 
    stroke(0);
    rect(this.x + this.w, this.y, this.h, this.h, 10);
    image(iconoMas, this.x + this.w, this.y, this.h, this.h);
    rect(this.x + this.w + this.h, this.y, this.h, this.h, 10);
    image(iconoMenos, this.x + this.w + this.h, this.y, this.h, this.h);
    popStyle();
  }

  boolean mouseOverButtons() {
    return mouseOverButtonMas() || mouseOverButtonMenos();
  }

  // Indica si el cursor está sobre el botón Más
  boolean mouseOverButtonMas() {
    return mouseX >= this.x + this.w && mouseX <= this.x + this.w + this.h &&
      mouseY >= this.y && mouseY <= this.y + this.h;
  }

  // Indica si el cursor está sobre el botón Menos
  boolean mouseOverButtonMenos() {
    return mouseX >= this.x + this.w + this.h && mouseX <= this.x + this.w + 2*this.h &&
      mouseY >= this.y && mouseY <= this.y + this.h;
  }

  void increment() {
    this.value += stepValue;
    if (this.value>this.maxValue) {
      this.value = this.maxValue;
    }
  }

  void decrement() {
    this.value -= stepValue;
    if (this.value<this.minValue) {
      this.value = this.minValue;
    }
  }

  void update() {
    if (mouseOverButtonMas()) {
      increment();
    } else if (mouseOverButtonMenos()) {
      decrement();
    }
  }
}
