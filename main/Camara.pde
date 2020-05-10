class Camara{
  float mouseZoom = 0; //Zoom por defecto de la cámara
  PVector camaraPos = new PVector(0,-18,0);
  
  void camaraRotation(){
    translate(width/2, height/2, mouseZoom); //posicion de la pecera respecto a la camara 
    rotateX(camaraPos.y); //Rotar la pecera para que la proyeccion sea isometrica
    rotateY(camaraPos.x+map(mouseX/10,0,width,0,-45)); //La camara rota junto al movimiento en eje X del mouse
    rotateZ(camaraPos.z);
  }
}

void mouseWheel(MouseEvent event) { //La rueda del raton amplia o aleja la camara
  camara.mouseZoom -= event.getCount()*80;
}
