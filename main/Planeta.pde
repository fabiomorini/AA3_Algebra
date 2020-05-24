class Planeta{
  
  PShape planeta;

  void planeta_shape(){
    noStroke();
    noFill();
    planeta = createShape(SPHERE, tamPlaneta);
    planeta.setTexture(planetaImg);

  }
  
  void draw_planeta(){ // dibuja la esfera que representa el planeta
    planeta_shape();
    shape(planeta);
  }
}
