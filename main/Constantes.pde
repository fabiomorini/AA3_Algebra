import ddf.minim.*;

Camara camara;
Planeta planeta;
Luna luna;
Orbita orbita;
Bezier bezier1, bezier2;
UI ui;
Espacio espacio;
Minim minim;
AudioPlayer player;

static int screenX = 1000;
static int screenY = 1000;

PImage planetaImg;
PImage lunaImg;
PImage espacioImg;
PShape dog;

int tamPlaneta = 300;
int tamLuna = 150;
int tamPerro = 5;
boolean colisionPerroLuna = false;
boolean fastSimulation = false;

float incT = 0.04;
float rot = 1;
float numPuntosBezier = 1000.0; //Cuantos puntos queremos pintar?

float ellipseX = 1650;
float ellipseY = 1500;

float velocidadEsfera = 0.2;

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
