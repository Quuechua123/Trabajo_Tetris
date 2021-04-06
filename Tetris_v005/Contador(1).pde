class Contador {

  // Valor del comptador
  int value = 100;
  int minValue= 0, maxValue = 100;
  int stepValue = 10;

  // Propietats d'un counter:
  float x, y, w, h;  // Posició i dimensions

  // Colors de farciment i contorn
  color fillColor, strokeColor;

  PImage iconoMas, iconoMenos;      


  // Mètode Constructor
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

  // Dibuixa el botó
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

    // Icona del botó
    fill(255); 
    stroke(0);
    rect(this.x + this.w, this.y, this.h, this.h, 10);
    image(iconoMas, this.x + this.w, this.y, this.h, this.h);
    rect(this.x + this.w + this.h, this.y, this.h, this.h, 10);
    image(iconoMenos, this.x + this.w + this.h, this.y, this.h, this.h);
    popStyle();
  }

  boolean mouseOverButtons() {
    return mouseOverButtonMes() || mouseOverButtonMenys();
  }

  // Indica si el cursor està sobre el botó Més
  boolean mouseOverButtonMes() {
    return mouseX >= this.x + this.w && mouseX <= this.x + this.w + this.h &&
      mouseY >= this.y && mouseY <= this.y + this.h;
  }

  // Indica si el cursor està sobre el botó Menys
  boolean mouseOverButtonMenys() {
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
    if (mouseOverButtonMes()) {
      increment();
    } else if (mouseOverButtonMenys()) {
      decrement();
    }
  }
}
