
void setup(){
  size(1000,1000, P3D);  
  camara = new Camara();
  planeta = new Planeta();
  esfera = new Esfera();
  orbita = new Orbita();
  ui = new UI();
  
  //Indicamos los puntos que tendra Bezier //<>//
  setPuntosBezier1(new PVector(0,500),
  new PVector(-650,500),new PVector(-650,-500),new PVector(0,-500));
  
  setPuntosBezier2(new PVector(0,-500),
  new PVector(650,-500),new PVector(650,500),new PVector(0,500));
  
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
