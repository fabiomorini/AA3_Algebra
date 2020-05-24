
void setup(){
  ////size(500,500, P3D);  
  fullScreen(P3D);
  camara = new Camara();
  planeta = new Planeta();
  luna = new Luna();
  orbita = new Orbita();
  ui = new UI();
  espacio = new Espacio(); //<>//
 
  //Configurar los puntos de bezier que hacen que la luna siga una orbita
  orbita.setPuntosOrbitaLuna();
  
  //Llamada al constructor de la curva
  bezier1 = new Bezier(puntoBezier1, colorBezier, numPuntosBezier);
  bezier2 = new Bezier(puntoBezier2, colorBezier, numPuntosBezier);
  
  planetaImg = loadImage("doge.jpg");
  lunaImg = loadImage("nic.jpg");
  espacioImg = loadImage("espacio.jpg");
  dog = loadShape("dog.obj");
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
  orbita.dibuja_perro();
  espacio.draw_espacio();
}
