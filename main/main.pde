
void setup(){
  //size(500,500, P3D);  
  fullScreen(P3D);
  camara = new Camara();
  planeta = new Planeta();
  luna = new Luna();
  orbita = new Orbita();
  ui = new UI();
   //<>// //<>// //<>//
  //Indicamos los puntos que tendra Bezier //<>//
  setPuntosBezier1(new PVector(0,-500),
  new PVector(650,-500),new PVector(650,500),new PVector(0,500));
  
  setPuntosBezier2(new PVector(0,500),
  new PVector(-650,500),new PVector(-650,-500),new PVector(0,-500));
  
  //Llamada al constructor de la curva
  bezier1 = new Bezier(puntoBezier1, colorBezier, numPuntosBezier);
  bezier2 = new Bezier(puntoBezier2, colorBezier, numPuntosBezier);
  
  planetaImg = loadImage("doge.jpg");
  lunaImg = loadImage("nic.jpg");
  frameRate(60);
}

void draw(){
  noFill();
  noStroke();
  background(8,22,42);
  lights();
  ui.drawUI();
  camara.camaraRotation();
  planeta.draw_planeta();
  orbita.executeOrbita();
}
