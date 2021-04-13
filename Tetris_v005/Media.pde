import processing.sound.*;

// Imágenes
PImage imgLogo, imgFondo, iconoMas, iconoMenos;
//Load Fuentes
PFont font1, font2;
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
  font2 = createFont("../DATA/Fuente/game_over.ttf", 200);
}


// Carga de los audios
void loadSounds() {
  audio1 = new SoundFile(this, "../DATA/audios/click.mp3");
  audio2 = new SoundFile(this, "../DATA/audios/Soundtrack.mp3");
}
