class Orbita{
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
    bezier.pintar_curva();
    esfera.seguirBezier();
    popMatrix();
  }
}
