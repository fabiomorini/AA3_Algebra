class UI{
  void drawUI(){
    text("Moon X: " + esfera.punto.x,30,30);
    text("Moon Y: " + esfera.punto.y,30,50);
    text("u1: " + esfera.u1,30,70);
    text("u2: " + esfera.u2,30,90);
    text("Incremento de u1: " + esfera.incremento_de_u1,30,110);
    text("Incremento de u2: " + esfera.incremento_de_u2,30,130);
  }
}
