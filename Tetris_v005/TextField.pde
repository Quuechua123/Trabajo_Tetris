class TextField {
  
  // Propiedades del campo de texto
  int x, y, h, w;
  
  // Colores
  color bgColor = color(140, 140, 140);
  color fgColor = color(0, 0, 0);
  color selectedColor = color(190, 190, 60);
  color borderColor = color(30, 30, 30);
  int borderWeight = 10;
  
  // Text del camp
  String text = "";
  int textLength = 0;
  int textSize = 30;

  boolean selected = false;
   
  // Constructor
  TextField(int x, int y, int w, int h) {
      this.x = x; this.y = y; this.w = w; this.h = h;
   }
   
   // Getters
   
   String getValue(){
     return this.text;
   }
  
  void display() {
    pushStyle();
      if (selected) {
         fill(selectedColor);
      } else {
         fill(bgColor);
      }
      
      strokeWeight(5);
      stroke(borderColor);
      rectMode(CORNER);
      textAlign(LEFT);
      rect(x, y, w, h, 5);
      
      fill(fgColor);
      textSize(textSize);
      text(text, x + 15, y + this.h - textSize + 5);
     popStyle();
   }
   
   void keyPressed(char key, int keyCode) {
      if (selected) {
         if (keyCode == (int)BACKSPACE) {
            removeText();
         } else if (keyCode == 32) {
            addText(' '); // SPACE
         } else {
            
           boolean isKeyCapitalLetter = (key >= 'A' && key <= 'Z');
           boolean isKeySmallLetter = (key >= 'a' && key <= 'z');
           boolean isKeyNumber = (key >= '0' && key <= '9');
      
           if (isKeyCapitalLetter || isKeySmallLetter || isKeyNumber) {
               addText(key);
           }
         }
      }
   }
   
   void addText(char c) {
      if (textWidth(this.text + c) < w) {
         this.text += c;
         textLength++;
      }
   }
   
   void removeText() {
      if (textLength - 1 >= 0) {
         text = text.substring(0, textLength - 1);
         textLength--;
      }
   }
   
   void removeAllText(){
     this.text = "";
   }

   boolean mouseOverTextField() {
      if (mouseX >= this.x && mouseX <= this.x + this.w) {
         if (mouseY >= this.y && mouseY <= this.y + this.h) {
            return true;
         }
      }
      return false;
   }
   
   void isPressed() {
      if (mouseOverTextField()) {
         selected = true;
      } else {
         selected = false;
      }
   }
   
   void resetFormulario(){

  n.removeAllText();
 }

}
