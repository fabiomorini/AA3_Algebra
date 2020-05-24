class Esfera{
  //Atributos
  //Necesitamos un punto
  PVector punto = new PVector(0,0);
  float u = 0.0;
  float incremento_de_u = 0.0;
  
  void drawEsfera(){
    fill(255);
    sphere(tamEsfera);
    noFill();
  }
  
  void seguirBezier(){
    incremento_de_u = 1.0/bezier.numero_de_puntos_a_pintar;
    u += incremento_de_u;
    
    punto = bezier.calcula_un_punto(u);
    point(punto.x,punto.y);
    
    pushMatrix();
    translate(punto.x,punto.y,0);
    drawEsfera();
    popMatrix();
    
    if(u >= 1.0){
      u = 0;
    }
  }
}
