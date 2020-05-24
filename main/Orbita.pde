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
    pushMatrix();
    translate(1000,1000);
    rotateY(180 + rot);
    rotateZ(180 + rot);
    scale(10);
    fill(255);
    shape(dog);
    popMatrix();
  }
}
