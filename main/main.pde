
void setup(){
  size(1000,1000, P3D);  
  camara = new Camara();
  frameRate(60);
  
}

void draw(){
  background(8,22,42);
  lights();
  camara.camaraRotation();
  fill(0,255,0); 
  box(250,250,250);

}
