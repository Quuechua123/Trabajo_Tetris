class CheckBox {

  // Propiedades
  int x, y, w;

  // Colores
  color bgColor;
  color borderColor;
  color checkedColor;

  boolean checked;

  // Constructor
  CheckBox(int x, int y, int w) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.checked = false;
    this.bgColor = color(255);
    this.borderColor = color(0);
    this.checkedColor = color(180);
  }


  // Dibuja el CheckBox
  void display() {
    pushStyle();
    rectMode(CORNER);
    stroke(borderColor);
    strokeWeight(2);

    if (this.checked) {
      fill(checkedColor);
    } else {
      fill(bgColor);
    }
    rect(x, y, w, w);

    if (this.checked) {
      line(x, y, x + w, y + w);
      line(x, y+w, x + w, y);
    }
    popStyle();
  }

  void setChecked(boolean b) {
    this.checked = b;
  }

  // Cambia el estado de selección
  void toggle() {
    this.checked = ! this.checked;
  }


  // Mira si el ratón está sobre el checkbox
  boolean onMouseOver() {
    return  mouseX>= this.x && 
      mouseX<= this.x + this.w &&
      mouseY>= this.y &&
      mouseY<= this.y + this.w;
  }
}
