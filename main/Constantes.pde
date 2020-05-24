Camara camara;
Planeta planeta;
Esfera esfera;
Orbita orbita;
Bezier bezier1, bezier2;
UI ui;

static int screenX = 1000;
static int screenY = 1000;

int tamPlaneta = 200;
int tamEsfera = 100;
float incT = 0.04;
float numPuntosBezier = 1000.0; //Cuantos puntos queremos pintar?

color colorBezier = color(255,255,0);
PVector[] puntoBezier1 = new PVector[4];
PVector[] puntoBezier2 = new PVector[4];

void setPuntosBezier1(PVector p1, PVector p2, PVector p3, PVector p4){
  puntoBezier1[0] = p1; //Bezier si pasa por el primero
  puntoBezier1[1] = p2; //Bezier no pasa por el segundo
  puntoBezier1[2] = p3; //Bezier no pasa por el tercero
  puntoBezier1[3] = p4; //Bezier si pasa por el ultimo
}

void setPuntosBezier2(PVector p1, PVector p2, PVector p3, PVector p4){
  puntoBezier2[0] = p1; //Bezier si pasa por el primero
  puntoBezier2[1] = p2; //Bezier no pasa por el segundo
  puntoBezier2[2] = p3; //Bezier no pasa por el tercero
  puntoBezier2[3] = p4; //Bezier si pasa por el ultimo
}
