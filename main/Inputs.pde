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
  }
  
  if(keyCode == UP && released){
    camara.camaraPos.y -= 1.5708;
    released = false;
  }
}

void keyReleased(){
  released = true;
}
