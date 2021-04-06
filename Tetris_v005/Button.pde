// Classe Boton

class Button {

  // Propiedades de un boton
  float x, y, w, h;
  color fillColor, strokeColor;
  color fillColorOver, fillColorDisabled;
  String textBoto;
  boolean enabled;

  // Metodo Constructor
  Button(String text, float x, float y, float w, float h) {
    this.textBoto = text;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    fillColor = color(255, 89, 100);
    fillColorOver = color(63, 157, 255);
    fillColorDisabled = color(150);
    strokeColor = color(0);
  }

  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }

  // Dibuja el botón
  void display() {
    pushStyle();
    if (!enabled) {
      fill(fillColorDisabled);
    } else if (mouseOverButton()) {
      fill(fillColorOver);
    } else {
      fill(fillColor);
    }
    pushStyle();
    stroke(strokeColor); 
    strokeWeight(2);
    rectMode(CORNER);
    rect(this.x, this.y, this.w, this.h, 10);

    fill(0); 
    textAlign(CENTER); 
    textSize(20); 
    textFont(font1);
    text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
    popStyle();
  }

  // Indica si el cursor está sobre el botón
  boolean mouseOverButton() {
    return (mouseX >= this.x) && 
      (mouseX<=this.x + this.w) && 
      (mouseY>= this.y) && 
      (mouseY<= this.y + this.h);
  }
}
