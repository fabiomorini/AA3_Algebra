Camara camara;
Planeta planeta;
Esfera esfera;
Orbita orbita;
Bezier bezier;

static int screenX = 1000;
static int screenY = 1000;

int tamPlaneta = 200;
int tamEsfera = 100;
float numPuntosBezier = 100.0; //Cuantos puntos queremos pintar?

color colorBezier = color(255,255,0);
PVector[] puntoBezier = new PVector[4];

void setPuntosBezier(PVector p1, PVector p2, PVector p3, PVector p4){
  puntoBezier[0] = p1; //Bezier si pasa por el primero
  puntoBezier[1] = p2; //Bezier no pasa por el segundo
  puntoBezier[2] = p3; //Bezier no pasa por el tercero
  puntoBezier[3] = p4; //Bezier si pasa por el ultimo
}
