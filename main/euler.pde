PVector posPerro = new PVector(0,0,0);
PVector velPerro = new PVector(0,0,0);
PVector accelPerro = new PVector(0,0,0);
float masaPerro = 0;
float maxVel = 1.0;
float maxAccel = 0.5;

PVector haciaPunto(PVector p){
  PVector vPunto = new PVector(0,0,0);
  vPunto = vectorUnitario(posPerro, p);
  accelPerro.x = vPunto.x;
  accelPerro.y = vPunto.y;
  accelPerro.z = vPunto.z;
  
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

void applyForce(PVector acel) { // suma de fuerzas: Aceleración   
  acel.x = acel.x/(incT*masaPerro);
  acel.y = acel.y/(incT*masaPerro);
  acel.z = acel.z/(incT*masaPerro);
}

void nueva_pos() { // para actualizar la posición
  velPerro.add(accelPerro);
  velPerro.limit(maxVel);
  posPerro.add(velPerro);
  accelPerro.mult(0);
}
