PVector posPerro = new PVector(0,0,0);
PVector accelPerro = new PVector(0,0,0);
int separacion = 500;

PVector haciaPunto(PVector p){
  PVector vPunto = new PVector(0,0,0);
  vPunto = vectorUnitario(posPerro, p);
  accelPerro.x = vPunto.x*separacion;
  accelPerro.y = vPunto.y*separacion;
  accelPerro.z = vPunto.z*separacion;
  
  return accelPerro;
}

PVector vectorUnitario(PVector pos1, PVector pos2){
  PVector vector_calculado;
  vector_calculado = new PVector();
  
  vector_calculado.x = pos2.x - pos1.x;
  vector_calculado.y = pos2.y - pos1.y;
  vector_calculado.z = pos2.z - pos1.z;
  
  float modulo = sqrt(
  vector_calculado.x*vector_calculado.x+
  vector_calculado.y*vector_calculado.y+
  vector_calculado.z*vector_calculado.z);
    
  vector_calculado.x /= modulo;
  vector_calculado.y /= modulo;
  vector_calculado.z /= modulo;

  return vector_calculado;
}
