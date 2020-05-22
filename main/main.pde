
void setup(){
  size(1000,1000, P3D);  
  camara = new Camara();
  planeta = new Planeta();
  esfera = new Esfera();
  orbita = new Orbita();
  
  //Indicamos los puntos que tendra Bezier //<>//
  setPuntosBezier(new PVector(-1000,0),
  new PVector(-7500,-7500),new PVector(7500,7500),new PVector(-1000,0));
  
  //Llamada al constructor de la curva
  bezier = new Bezier(puntoBezier, colorBezier, numPuntosBezier);
  
  frameRate(60);
  planeta.setCoordsPlaneta();
  planeta.createPlanetaShapes();
}

void draw(){
  noFill();
  noStroke();
  background(8,22,42);
  lights();
  camara.camaraRotation();
  planeta.drawPlaneta();
  fill(0,255,0); 
  box(50,50,50);
  noFill();
  orbita.executeOrbita();
}
