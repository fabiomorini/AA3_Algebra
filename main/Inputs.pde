boolean released = true;

void keyPressed(){
  if(keyCode == LEFT && released){
    camara.camaraPos.x -= 1.5708;
    released = false;
  }
  
  if(keyCode == RIGHT && released){
    camara.camaraPos.x += 1.5708;
    released = false;
  }
  
  if(keyCode == DOWN && released){
    camara.camaraPos.y += 1.5708;
    released = false;
    if(camara.cameraController == 3){
      camara.cameraController = 0;
    }
    else {
      camara.cameraController += 1;
    }
  }
  
  if(keyCode == UP && released){
    camara.camaraPos.y -= 1.5708;
    released = false;
    if(camara.cameraController == 0){
      camara.cameraController = 3;
    }
    else {
      camara.cameraController -= 1;
    }
  }
  
  if(keyCode == 32 && released){
    camara.pausaCamara = !camara.pausaCamara;
  }
  
  if(keyCode == '1' && released){
    ui.debugMenu = !ui.debugMenu;
  }
}

void keyReleased(){
  released = true;
}
