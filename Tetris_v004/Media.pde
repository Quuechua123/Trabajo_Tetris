
import processing.sound.*;

// Imégenes
PImage imgLogo, imgFondo, iconoMas, iconoMenos;
//Load Fonts
PFont font1;
// Audios
SoundFile audio1, audio2;

// Carga de los elementos multimedia
void loadMedia() {
  loadImages();
  loadSounds();
  loadFonts();
}

// Carga de las Imágenes
void loadImages() {
  imgLogo = loadImage("../DATA/imgs/Logo.png");
  imgFondo = loadImage("../DATA/imgs/Fondo.jpg");
  iconoMas = loadImage("../DATA/imgs/mas.png");
  iconoMenos = loadImage("../DATA/imgs/menos.png");
}

//carga fuentes
void loadFonts() {
  font1 = createFont("../DATA/Fuente/novamono.ttf", 48);
}


// Carga de los audios
void loadSounds() {
  audio1 = new SoundFile(this, "../DATA/audios/click.mp3");
  //audio2 = new SoundFile(this, "../DATA/audios/aceptar.mp3");
}
