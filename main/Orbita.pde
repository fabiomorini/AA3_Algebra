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
    if((posPerro.x <= pos.x && posPerro.x+tamPerro >= pos.x+tamLuna) ||
    (posPerro.x >= pos.x && posPerro.x+tamPerro <= pos.x+tamLuna)){
      pos.x -= 10;
      colisionPerroLuna = true;
    }
    if((posPerro.y <= pos.y && posPerro.y+tamPerro >= pos.y+tamLuna) ||
    (posPerro.y >= pos.y && posPerro.y+tamPerro <= pos.y+tamLuna)){
      pos.y -= 10;
      colisionPerroLuna = true;
    }
    else{
      colisionPerroLuna = false;
    }
    dog.setTexture(planetaImg);
    translate(pos.x,pos.y);
    rotateX(180);
    rotateY(3.4);
    rotateZ(180 + rot);
    scale(tamPerro);
    fill(255);
    shape(dog);
    popMatrix();
  }
}
