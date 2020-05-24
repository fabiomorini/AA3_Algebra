class Orbita{
  
  float dist;

  void drawOrbita(){
    int radio = 1000;
    stroke(0,255,0);
    pushMatrix();
    rotateX(180);
    ellipse(0,0,radio,radio);
    popMatrix();
    noStroke();
  }
  
  void setPuntosOrbitaLuna(){
    //Indicamos los puntos que tendra Bezier
  setPuntosBezier1(new PVector(0,-ellipseY),
  new PVector(ellipseX,-ellipseY),new PVector(ellipseX,ellipseY),new PVector(0,ellipseY));
  
  setPuntosBezier2(new PVector(0,ellipseY),
  new PVector(-ellipseX,ellipseY),new PVector(-ellipseX,-ellipseY),new PVector(0,-ellipseY));
  }
  
  void executeOrbita(){
    drawOrbita();
    pushMatrix();
    rotateX(180);
    bezier1.pintar_curva();
    bezier2.pintar_curva();
    
    if(!luna.mitad){
      luna.seguirBezier1();
    }
    else{
      luna.seguirBezier2();
    }
    popMatrix();
  }
  
  void dibuja_perro(){
    PVector pos = haciaPunto(luna.punto);
    
    pushMatrix();
    //translate(1000,1000);
    translate(pos.x*500,pos.y*500);
    rotateX(180);
    rotateY(3.4);
    rotateZ(180 + rot);
    scale(10);
    fill(255);
    shape(dog);
    popMatrix();
  }
}
