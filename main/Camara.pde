class Camara{
    float mouseZoom = 0; //Zoom por defecto de la cámara
  
  void camaraRotation(){
    translate(width/2, height/2, mouseZoom); //posicion de la pecera respecto a la camara 
    rotateX(-35.264); //Rotar la pecera para que la proyeccion sea isometrica
    rotateY(map(mouseX/10,0,width,0,-45)); //La camara rota junto al movimiento en eje X del mouse
  }
}

void mouseWheel(MouseEvent event) { //La rueda del raton amplia o aleja la camara
  camara.mouseZoom -= event.getCount()*80;
}
