class Planeta{
  PShape planetaA,planetaB,planetaC,planetaD,planetaE,planetaF;
  PVector[][] planetaVertexCoords = new PVector[2][4];
  
  void drawPlaneta(){
    shape(planetaA);
    shape(planetaB);
    shape(planetaC);
    shape(planetaD);
    shape(planetaE);
    shape(planetaF);
  }

  void setCoordsPlaneta(){
    planetaVertexCoords[0][0] = new PVector(-1,-1,-1).mult(tamPlaneta); //A0/D0/F0 //<>//
    planetaVertexCoords[0][1] = new PVector(1,-1,-1).mult(tamPlaneta); //A1/B1/F1
    planetaVertexCoords[0][2] = new PVector(1,-1,1).mult(tamPlaneta); //A2/B0/C1
    planetaVertexCoords[0][3] = new PVector(-1,-1,1).mult(tamPlaneta); //A3/C0/D3
    planetaVertexCoords[1][0] = new PVector(-1,1,-1).mult(tamPlaneta); //E0/D1/F3
    planetaVertexCoords[1][1] = new PVector(1,1,-1).mult(tamPlaneta); //B2/E1/F2
    planetaVertexCoords[1][2] = new PVector(1,1,1).mult(tamPlaneta); //B3/C2/E2
    planetaVertexCoords[1][3] = new PVector(-1,1,1).mult(tamPlaneta); //C3/D2/E3
  }
  
  void createPlanetaShapes(){
    fill(255,255,255);
    planetaA = createShape();
    planetaA.beginShape();
    planetaA.vertex(planetaVertexCoords[0][0].x,planetaVertexCoords[0][0].y,planetaVertexCoords[0][0].z);
    planetaA.vertex(planetaVertexCoords[0][1].x,planetaVertexCoords[0][1].y,planetaVertexCoords[0][1].z);
    planetaA.vertex(planetaVertexCoords[0][2].x,planetaVertexCoords[0][2].y,planetaVertexCoords[0][2].z);
    planetaA.vertex(planetaVertexCoords[0][3].x,planetaVertexCoords[0][3].y,planetaVertexCoords[0][3].z);
    planetaA.endShape(CLOSE);
    
    fill(255,0,255);
    planetaB = createShape();
    planetaB.beginShape();
    planetaB.vertex(planetaVertexCoords[0][2].x,planetaVertexCoords[0][2].y,planetaVertexCoords[0][2].z);
    planetaB.vertex(planetaVertexCoords[0][1].x,planetaVertexCoords[0][1].y,planetaVertexCoords[0][1].z);
    planetaB.vertex(planetaVertexCoords[1][1].x,planetaVertexCoords[1][1].y,planetaVertexCoords[1][1].z);
    planetaB.vertex(planetaVertexCoords[1][2].x,planetaVertexCoords[1][2].y,planetaVertexCoords[1][2].z);
    planetaB.endShape(CLOSE);
    
    fill(255,255,0);
    planetaC = createShape();
    planetaC.beginShape();
    planetaC.vertex(planetaVertexCoords[0][3].x,planetaVertexCoords[0][3].y,planetaVertexCoords[0][3].z);
    planetaC.vertex(planetaVertexCoords[0][2].x,planetaVertexCoords[0][2].y,planetaVertexCoords[0][2].z);
    planetaC.vertex(planetaVertexCoords[1][2].x,planetaVertexCoords[1][2].y,planetaVertexCoords[1][2].z);
    planetaC.vertex(planetaVertexCoords[1][3].x,planetaVertexCoords[1][3].y,planetaVertexCoords[1][3].z);
    planetaC.endShape(CLOSE);
    
    fill(0,255,255);
    planetaD = createShape();
    planetaD.beginShape();
    planetaD.vertex(planetaVertexCoords[0][0].x,planetaVertexCoords[0][0].y,planetaVertexCoords[0][0].z);
    planetaD.vertex(planetaVertexCoords[1][0].x,planetaVertexCoords[1][0].y,planetaVertexCoords[1][0].z);
    planetaD.vertex(planetaVertexCoords[1][3].x,planetaVertexCoords[1][3].y,planetaVertexCoords[1][3].z);
    planetaD.vertex(planetaVertexCoords[0][3].x,planetaVertexCoords[0][3].y,planetaVertexCoords[0][3].z);
    planetaD.endShape(CLOSE);
    
    fill(255,0,0);
    planetaE = createShape();
    planetaE.beginShape();
    planetaE.vertex(planetaVertexCoords[1][0].x,planetaVertexCoords[1][0].y,planetaVertexCoords[1][0].z);
    planetaE.vertex(planetaVertexCoords[1][1].x,planetaVertexCoords[1][1].y,planetaVertexCoords[1][1].z);
    planetaE.vertex(planetaVertexCoords[1][2].x,planetaVertexCoords[1][2].y,planetaVertexCoords[1][2].z);
    planetaE.vertex(planetaVertexCoords[1][3].x,planetaVertexCoords[1][3].y,planetaVertexCoords[1][3].z);
    planetaE.endShape(CLOSE);
    
    fill(0,0,255);
    planetaF = createShape();
    planetaF.beginShape();
    planetaF.vertex(planetaVertexCoords[0][0].x,planetaVertexCoords[0][0].y,planetaVertexCoords[0][0].z);
    planetaF.vertex(planetaVertexCoords[0][1].x,planetaVertexCoords[0][1].y,planetaVertexCoords[0][1].z);
    planetaF.vertex(planetaVertexCoords[1][1].x,planetaVertexCoords[1][1].y,planetaVertexCoords[1][1].z);
    planetaF.vertex(planetaVertexCoords[1][0].x,planetaVertexCoords[1][0].y,planetaVertexCoords[1][0].z);
    planetaF.endShape(CLOSE);
    noFill();
  }
}
