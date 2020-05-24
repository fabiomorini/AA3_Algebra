class Camara{
  float mouseZoom = -1000; //Zoom por defecto de la cámara
  PVector camaraPos = new PVector(0,-18,0);
  float  camaraX = 0, camaraY = 0, camaraZ = 0;
  int cameraController = 0; //Ayuda a corregir el eje X del mouse cuando cambiamos la cara del cubo a la que miramos
  boolean pausaCamara = true;

  void camaraRotation(){
    if(cameraController == 0 && pausaCamara){
      translate(width/2, height/2, mouseZoom); //posicion de la pecera respecto a la camara 
      rotateX(camaraX = camaraPos.x-0.8); //Rotar la pecera para que la proyeccion sea isometrica
      rotateY(camaraY = camaraPos.y+map(-mouseX/10,0,width,0,-90)); //La camara rota junto al movimiento en eje X del mouse
      rotateZ(camaraZ = camaraPos.z);
    }
    
    else if(cameraController == 1 && pausaCamara){
      translate(width/2, height/2, mouseZoom); //posicion de la pecera respecto a la camara 
      rotateX(camaraX = camaraPos.y); //Rotar la pecera para que la proyeccion sea isometrica
      rotateY(camaraY =camaraPos.x+map(mouseX/10,0,width,0,-90)); //La camara rota junto al movimiento en eje X del mouse
      rotateZ(camaraZ = camaraPos.z);
    }
    
    else if(cameraController == 2 && pausaCamara){
      translate(width/2, height/2, mouseZoom); //posicion de la pecera respecto a la camara 
      rotateX(camaraX = camaraPos.x-0.8); //Rotar la pecera para que la proyeccion sea isometrica
      rotateY(camaraY = camaraPos.y+map(-mouseX/10,0,width,0,-90)); //La camara rota junto al movimiento en eje X del mouse
      rotateZ(camaraZ = camaraPos.z);
    }
    
    else if(cameraController == 3 && pausaCamara){
      translate(width/2, height/2, mouseZoom); //posicion de la pecera respecto a la camara 
      rotateX(camaraX = camaraPos.y); //Rotar la pecera para que la proyeccion sea isometrica
      rotateY(camaraY = camaraPos.x+map(-mouseX/10,0,width,0,-90)); //La camara rota junto al movimiento en eje X del mouse
      rotateZ(camaraZ = camaraPos.z);
    }
    
    else if(!pausaCamara){
      translate(width/2, height/2, mouseZoom); //posicion de la pecera respecto a la camara 
      rotateX(camaraX); //Rotar la pecera para que la proyeccion sea isometrica
      rotateY(camaraY); //La camara rota junto al movimiento en eje X del mouse
      rotateZ(camaraZ);
    }
  }
}

void mouseWheel(MouseEvent event) { //La rueda del raton amplia o aleja la camara
  if(camara.mouseZoom <= 920){
      camara.mouseZoom -= event.getCount()*80;
  }
  else{
    camara.mouseZoom = 920;
  }
}
