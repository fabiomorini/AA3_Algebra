class Luna{
  //Atributos
  //Necesitamos un punto
  PVector punto = new PVector(0,0);
  float u1 = 0.0;
  float u2 = 0.0;
  float incremento_de_u1 = 0.0;
  float incremento_de_u2 = 0.0;
  boolean mitad = false;
  PShape luna;
  
  void luna_shape(){
    noStroke();
    noFill();
    luna = createShape(SPHERE, tamLuna);
    luna.setTexture(lunaImg);
  }
  
  void drawLuna(){
    luna_shape();
    fill(255);
    shape(luna);
    noFill();
  }
  
  void seguirBezier1(){
    incremento_de_u1 = velocidadEsfera/bezier1.numero_de_puntos_a_pintar;
    u1 += incremento_de_u1;
    
    punto = bezier1.calcula_un_punto(u1);
    point(punto.x,punto.y);
    
    pushMatrix();
    translate(punto.x,punto.y,0);
    drawLuna();
    popMatrix();
    if(u1 >= 1.0){
      mitad = true;
      u1 = 0;
    }
  }
  
  void seguirBezier2(){
    incremento_de_u2 = velocidadEsfera/bezier2.numero_de_puntos_a_pintar;
    u2 += incremento_de_u2;
    
    punto = bezier2.calcula_un_punto(u2);
    point(punto.x,punto.y);
    
    pushMatrix();
    translate(punto.x,punto.y,0);
    drawLuna();
    popMatrix();
    if(u2 >= 1.0){
      mitad = false;
      u2 = 0;
    }
  }
}
