class UI{
  boolean debugMenu = false;
  
  void drawUI(){
    if(debugMenu){
      text("Hide info: Press Numeric Key 1",30,30);
      text("Moon X: " + luna.punto.x,30,50);
      text("Moon Y: " + luna.punto.y,30,70);
      text("u1: " + luna.u1,30,90);
      text("u2: " + luna.u2,30,110);
      text("Incremento de u1: " + luna.incremento_de_u1,30,130);
      text("Incremento de u2: " + luna.incremento_de_u2,30,150);
      text("Perro X: " + haciaPunto(luna.punto).x,30,170);
      text("Perro Y: " + haciaPunto(luna.punto).y,30,190);
      
      if(colisionPerroLuna){
        text("El perro colisiona con la luna? Si",30,210);
      }
      else{
        text("El perro colisiona con la luna? No",30,210);
      }
    }
    else{
      text("Show info: Press Numeric Key 1",30,30);
    }
  }
}
