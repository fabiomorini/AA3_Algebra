
void setup(){
  size(1000,1000, P3D);  
  camara = new Camara();
  planeta = new Planeta();
  esfera = new Esfera();
  orbita = new Orbita();
  
  //Indicamos los puntos que tendra Bezier //<>//
  setPuntosBezier(new PVector(-600,0),
  new PVector(850,-2000),new PVector(850,2000),new PVector(-600,0));
  
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
  text("Moon X: " + esfera.punto.x,30,30);
  text("Moon Y: " + esfera.punto.y,30,50);
  text("u: " + esfera.u,30,70);
  text("Incremento de u: " + esfera.incremento_de_u,30,90);
  camara.camaraRotation();
  planeta.drawPlaneta();
  fill(0,255,0); 
  box(50,50,50);
  noFill();
  orbita.executeOrbita();
}
