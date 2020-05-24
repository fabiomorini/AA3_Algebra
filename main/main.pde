
void setup(){
  size(500,500, P3D);  
  camara = new Camara();
  planeta = new Planeta();
  esfera = new Esfera();
  orbita = new Orbita();
  ui = new UI();
  
  //Indicamos los puntos que tendra Bezier //<>// //<>//
  setPuntosBezier1(new PVector(0,500),
  new PVector(-ellipseX,ellipseY),new PVector(-ellipseX,-ellipseY),new PVector(0,-ellipseY));
  
  setPuntosBezier2(new PVector(0,-500),
  new PVector(ellipseX,-ellipseY),new PVector(ellipseX,ellipseY),new PVector(0,ellipseY));
  
  //Llamada al constructor de la curva
  bezier1 = new Bezier(puntoBezier1, colorBezier, numPuntosBezier);
  bezier2 = new Bezier(puntoBezier2, colorBezier, numPuntosBezier);
  
  frameRate(60);
  planeta.setCoordsPlaneta();
  planeta.createPlanetaShapes();
}

void draw(){
  noFill();
  noStroke();
  background(8,22,42);
  lights();
  ui.drawUI();
  camara.camaraRotation();
  planeta.drawPlaneta();
  fill(0,255,0); 
  box(50,50,50);
  noFill();
  orbita.executeOrbita();
}
