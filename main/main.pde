
void setup(){
  size(1000,1000, P3D);  
  camara = new Camara();
  planeta = new Planeta();
  esfera = new Esfera();
  orbita = new Orbita();
  frameRate(60);
  planeta.setCoordsPlaneta(); //<>//
  planeta.createPlanetaShapes();
}

void draw(){
  background(8,22,42);
  lights();
  camara.camaraRotation();
  planeta.drawPlaneta();
  fill(0,255,0); 
  box(50,50,50);
  noFill();
  orbita.executeOrbita();
}
