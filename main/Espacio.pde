class Espacio{

  PShape espacio;
  
  void espacio_shape(){
    noStroke();
    noFill();
    espacio = createShape(SPHERE, 4000);
    espacio.setTexture(espacioImg);
  }
  
  void draw_espacio(){
   espacio_shape();
   shape(espacio);
  }
  


}
