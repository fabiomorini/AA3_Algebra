//Codigo que implementa curva de Bezier que tiene continuidad C1,
//que es mejor que la C0 de la curva de interpolacion

//Clases
class Bezier{
  //Atributos
  PVector[] puntos_de_control;
  PVector[] coeficientes;
  color color_curva;
  float numero_de_puntos_a_pintar;
  
  //Constructor
  Bezier(PVector[] pc, color c, float num){
    //Inicializamos el array de puntos
    puntos_de_control = new PVector[4];
    
    //Inicializamos el array de coeficientes
    coeficientes = new PVector[4];
    
    //Determinamos de cuantas dimensiones son los puntos
    //Guardamos los puntos que me pasan
    for(int i=0;i<4;i++){
      //Inicializar las posiciones del array de puntos de control
      puntos_de_control[i] = new PVector(0,0);
      //Inicializar las posiciones del array de coeficientes
      coeficientes[i] = new PVector(0,0);
      //Copiar los puntos
      puntos_de_control[i] = pc[i];
    }
    //Almacenamos el resto...
    color_curva = c;
    numero_de_puntos_a_pintar = num;
    
    //Calculamos lo coeficientes de la curva de bezier
    calculo_coefs();
  }
  
  //Metodos
  //Calculo de los 4 coeficientes
  void calculo_coefs(){
    //Igual que en la curva de interpolacion, pero la matriz y sus ecuaciones son distintas
    coeficientes[0].x = puntos_de_control[0].x;
    coeficientes[0].y = puntos_de_control[0].y;
    
    coeficientes[1].x = -3*puntos_de_control[0].x + 3*puntos_de_control[1].x;
    coeficientes[1].y = -3*puntos_de_control[0].y + 3*puntos_de_control[1].y;
    
    coeficientes[2].x = 3*puntos_de_control[0].x - 6*puntos_de_control[1].x + 3*puntos_de_control[2].x;
    coeficientes[2].y = 3*puntos_de_control[0].y - 6*puntos_de_control[1].y + 3*puntos_de_control[2].y;
    
    coeficientes[3].x = -1*puntos_de_control[0].x + 3*puntos_de_control[1].x - 3*puntos_de_control[2].x + puntos_de_control[3].x;
    coeficientes[3].y = -1*puntos_de_control[0].y + 3*puntos_de_control[1].y - 3*puntos_de_control[2].y + puntos_de_control[3].y;
  }
  //Calcular un punto
  PVector calcula_un_punto(float u){
    PVector punto = new PVector(0,0);
    //Lo calculamos segun la ecuacion de la curva
    //p(u) = c0 + c2*u2 + c3*u3
    //x(u)...
    //y(u)...
    punto.x = coeficientes[0].x + coeficientes[1].x * u + coeficientes[2].x * u*u + coeficientes[3].x * u*u*u;
    punto.y = coeficientes[0].y + coeficientes[1].y * u + coeficientes[2].y * u*u + coeficientes[3].y * u*u*u;
    
    return punto;
  }
  
  //Pintar la curva
  void pintar_curva(){
    //Necesito un punto
    PVector punto = new PVector(0,0);
    
    //Definir como pintar
    stroke(color_curva);
    strokeWeight(5);
    //Me desplazo por toda la curva desde "u" igual a 0 hasta "u" igual a 1, pintando puntos...
    float incremento_de_u = 1.0/numero_de_puntos_a_pintar;
    for(float u=0.0;u<=1;u+=incremento_de_u){
      punto = calcula_un_punto(u);
      point(punto.x,punto.y);
    }
    noStroke();
  }
}
