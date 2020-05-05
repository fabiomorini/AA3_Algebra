
class Camara{
    
  
  void camaraRotation(){
    translate(width/2, height/2); //posicion de la pecera respecto a la camara 
    rotateX(-35.264); //Rotar la pecera para que la proyeccion sea isometrica
    rotateY(map(mouseX/10,0,width,0,-45)); //La camara rota junto al movimiento en eje X del mouse
  }
}
