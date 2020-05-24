class UI{
  boolean debugMenu = false;
  
  void drawUI(){
    if(debugMenu){
      text("Hide info: Press Numeric Key 1",30,30);
      text("Moon X: " + luna.punto.x,30,50);
      text("Moon Y: " + luna.punto.y,30,70);
      text("u1: " + luna.u1,30,90);
      text("u2: " + luna.u2,30,110);
      text("Incremento de u1: " + luna.incremento_de_u1,30,130);
      text("Incremento de u2: " + luna.incremento_de_u2,30,150);
    }
    else{
      text("Show info: Press Numeric Key 1",30,30);
    }
  }
  
  //Botones switch
  //Habilitar UI lateral
  PVector selectableLateralUIButton;  //Coordenadas del boton
  PVector selectableLateralUIButtonSize; //Tamanyo del boton
  boolean selectableLateralUIButtonOver = false;  //Se ha presionado el boton
  int weightPosMenu = 1200;
  int weightPosButton = 540;
  
  //Botones simples
  PVector buttonVolver;  //Coordenadas del boton
  PVector buttonVolverSize; //Tamanyo del boton
  boolean buttonVolverOver = false;  //Se ha presionado el boton
  
  PVector buttonRecargar;  //Coordenadas del boton
  PVector buttonRecargarSize; //Tamanyo del boton
  boolean buttonRecargarOver = false;  //Se ha presionado el boton
  
  PVector buttonMasRapido;  //Coordenadas del boton
  boolean buttonMasRapidoOver = false;  //Se ha presionado el boton
  
  PVector buttonMasLento;  //Coordenadas del boton
  boolean buttonMasLentoOver = false;  //Se ha presionado el boton
  
  PVector buttonMasPrioridadSeparacion;  //Coordenadas del boton
  boolean buttonMasPrioridadSeparacionOver = false;  //Se ha presionado el boton
  
  PVector buttonMenosPrioridadSeparacion;  //Coordenadas del boton
  boolean buttonMenosPrioridadSeparacionOver = false;  //Se ha presionado el boton
  
  PVector buttonMasPrioridadAlineacion;  //Coordenadas del boton
  boolean buttonMasPrioridadAlineacionOver = false;  //Se ha presionado el boton
  
  PVector buttonMenosPrioridadAlineacion;  //Coordenadas del boton
  boolean buttonMenosPrioridadAlineacionOver = false;  //Se ha presionado el boton
  
  PVector buttonMasPrioridadCohesion;  //Coordenadas del boton
  boolean buttonMasPrioridadCohesionOver = false;  //Se ha presionado el boton
  
  PVector buttonMenosPrioridadCohesion;  //Coordenadas del boton
  boolean buttonMenosPrioridadCohesionOver = false;  //Se ha presionado el boton
  
  PVector buttonMasPrioridadMeta;  //Coordenadas del boton
  boolean buttonMasPrioridadMetaOver = false;  //Se ha presionado el boton
  
  PVector buttonMenosPrioridadMeta;  //Coordenadas del boton
  boolean buttonMenosPrioridadMetaOver = false;  //Se ha presionado el boton
  
  PVector buttonMasPrioridadLider;  //Coordenadas del boton
  boolean buttonMasPrioridadLiderOver = false;  //Se ha presionado el boton
  
  PVector buttonMenosPrioridadLider;  //Coordenadas del boton
  boolean buttonMenosPrioridadLiderOver = false;  //Se ha presionado el boton
  
  PVector buttonMasVelocidad;  //Coordenadas del boton
  boolean buttonMasVelocidadOver = false;  //Se ha presionado el boton
  
  PVector buttonMenosVelocidad;  //Coordenadas del boton
  boolean buttonMenosVelocidadOver = false;  //Se ha presionado el boton
  
  void numerosUI(){
    fill(255);
    textSize(30);
    //text(pecera.max_peces, 30, 50);
    text((int)camara.mouseZoom +500, 30, 90);
  }
  
  void drawLateralUI(){
    //Parametros menu lateral
    fill(255,255,255,150);
    rect(weightPosMenu,0,width/3,height);
    if(!selectableLateralUIButtonEnabled && weightPosMenu <= 1200){
      weightPosMenu += 10;
      weightPosButton += 10;
    } else if(selectableLateralUIButtonEnabled && weightPosMenu >= 900) {
      weightPosMenu -= 10;
      weightPosButton -= 10;
    }
    
    drawBotonesDesplazables();
    setLateralUIButtons();
  }
  
  void setButtons(){
    //Botones switch
    selectableLateralUIButtonSize = new PVector(30,30); //Tamanyo
    buttonSalirColor = color(150); //Color 1
    selectableButtonColor2 = color(100, 220, 100); //Color 1 alternativo
    buttonSalirHighlight = color(200); //Color 2
    selectableButtonHighlight2 = color(100, 170, 100); //Color 2 alternativo
    
    //Botones simples
    //Boton volver
    buttonVolverSize = new PVector(58,30); //Tamanyo
    buttonG3Color = color(150); //Color 1
    buttonG3Highlight = color(200); //Color 2
    
    //Boton recargar
    buttonRecargarSize = new PVector(152,30); //Tamanyo
    buttonG3Color = color(150); //Color 1
    buttonG3Highlight = color(200); //Color 2
    
    //Grupo 3
    buttonG3Size = new PVector(30,30); //Tamanyo
    buttonG3Color = color(150); //Color 1
    buttonG3Highlight = color(200); //Color 2
  }
  
  void drawBotonesDesplazables(){
    //Posicion del boton volver
    buttonVolver = new PVector (width/2+buttonVolverSize.x+weightPosButton+140, height/2+buttonVolverSize.y-500);
    
    //Posicion del boton recargar peces
    buttonRecargar = new PVector (width/2+buttonRecargarSize.x+weightPosButton, height/2+buttonRecargarSize.y-460);
    
    //Posicion del boton que abre el menu lateral
    selectableLateralUIButton = new PVector (width/2+selectableLateralUIButtonSize.x+weightPosButton, height/2+selectableLateralUIButtonSize.y-400);
    
    //Posicion del boton que aumenta el delta time
    buttonMasRapido = new PVector (width/2+buttonVolverSize.x+weightPosButton+220, height/2+buttonG3Size.y-320);
    
    //Posicion del boton que reduce el delta time
    buttonMasLento = new PVector (width/2+buttonVolverSize.x+weightPosButton+100, height/2+buttonG3Size.y-320);
    
    //Posicion del boton que aumenta la prioridad de separacion entre peces
    buttonMasPrioridadSeparacion = new PVector (width/2+buttonVolverSize.x+weightPosButton+220, height/2+buttonG3Size.y-200);
    
    //Posicion del boton que reduce la prioridad de separacion entre peces
    buttonMenosPrioridadSeparacion = new PVector (width/2+buttonVolverSize.x+weightPosButton+100, height/2+buttonG3Size.y-200);
    
    //Posicion del boton que aumenta la prioridad de alineacion entre peces
    buttonMasPrioridadAlineacion = new PVector (width/2+buttonVolverSize.x+weightPosButton+220, height/2+buttonG3Size.y-80);
    
    //Posicion del boton que reduce la prioridad de alineacion entre peces
    buttonMenosPrioridadAlineacion = new PVector (width/2+buttonVolverSize.x+weightPosButton+100, height/2+buttonG3Size.y-80);
    
    //Posicion del boton que aumenta la prioridad de cohesion entre peces
    buttonMasPrioridadCohesion = new PVector (width/2+buttonVolverSize.x+weightPosButton+220, height/2+buttonG3Size.y+40);
    
    //Posicion del boton que reduce la prioridad de cohesion entre peces
    buttonMenosPrioridadCohesion = new PVector (width/2+buttonVolverSize.x+weightPosButton+100, height/2+buttonG3Size.y+40);
    
    //Posicion del boton que aumenta la prioridad de los peces, de llegar a la meta
    buttonMasPrioridadMeta = new PVector (width/2+buttonVolverSize.x+weightPosButton+220, height/2+buttonG3Size.y+160);
    
    //Posicion del boton que reduce la prioridad de los peces, de llegar a la meta
    buttonMenosPrioridadMeta = new PVector (width/2+buttonVolverSize.x+weightPosButton+100, height/2+buttonG3Size.y+160);
    
    //Posicion del boton que aumenta la prioridad de los peces, de seguir al lider
    buttonMasPrioridadLider = new PVector (width/2+buttonVolverSize.x+weightPosButton+220, height/2+buttonG3Size.y+280);
    
    //Posicion del boton que reduce la prioridad de los peces, de seguir al lider
    buttonMenosPrioridadLider = new PVector (width/2+buttonVolverSize.x+weightPosButton+100, height/2+buttonG3Size.y+280);
    
    //Posicion del boton que aumenta la velocidad de los peces
    buttonMasVelocidad = new PVector (width/2+buttonVolverSize.x+weightPosButton+220, height/2+buttonG3Size.y+400);
    
    //Posicion del boton que reduce la velocidad de los peces
    buttonMenosVelocidad = new PVector (width/2+buttonVolverSize.x+weightPosButton+100, height/2+buttonG3Size.y+400);
  }
  
  void setLateralUIButtons(){
    update();
    
    //Tamanyo del texto de los botones
    textSize(20);
    
    //Botones switch
    //Boton para abrir el menu lateral
    if (selectableLateralUIButtonOver){
      if(!selectableLateralUIButtonEnabled){
        fill(buttonSalirHighlight);
        stroke(255);
        rect(selectableLateralUIButton.x, selectableLateralUIButton.y, selectableLateralUIButtonSize.x, selectableLateralUIButtonSize.y);
        fill(0);
        text("<",selectableLateralUIButton.x+5, selectableLateralUIButton.y+23);
      } else {
        fill(selectableButtonHighlight2);
        stroke(255);
        rect(selectableLateralUIButton.x, selectableLateralUIButton.y, selectableLateralUIButtonSize.x, selectableLateralUIButtonSize.y);
        fill(0);
        text(">",selectableLateralUIButton.x+5, selectableLateralUIButton.y+23);
      }
    } else {
      if(!selectableLateralUIButtonEnabled){
        fill(buttonSalirColor);
        stroke(255);
        rect(selectableLateralUIButton.x, selectableLateralUIButton.y, selectableLateralUIButtonSize.x, selectableLateralUIButtonSize.y);
        fill(255);
        text("<",selectableLateralUIButton.x+5, selectableLateralUIButton.y+23);
      } else {
        fill(selectableButtonColor2);
        stroke(255);
        rect(selectableLateralUIButton.x, selectableLateralUIButton.y, selectableLateralUIButtonSize.x, selectableLateralUIButtonSize.y);
        fill(0);
        text(">",selectableLateralUIButton.x+5, selectableLateralUIButton.y+23);
      }
    }
    noStroke();
    noFill();
    
    //Botones simples
    //Boton de vuelta al menu
    if (buttonVolverOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonVolver.x, buttonVolver.y, buttonVolverSize.x, buttonVolverSize.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonVolver.x, buttonVolver.y, buttonVolverSize.x, buttonVolverSize.y);
      fill(255);
    }
    text("Menu",buttonVolver.x+3, buttonVolver.y+23);
    noStroke();
    noFill();
    
    //Boton de vuelta al menu
    if (buttonRecargarOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonRecargar.x, buttonRecargar.y, buttonRecargarSize.x, buttonRecargarSize.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonRecargar.x, buttonRecargar.y, buttonRecargarSize.x, buttonRecargarSize.y);
      fill(255);
    }
    text("Recargar peces",buttonRecargar.x+3, buttonRecargar.y+23);
    noStroke();
    noFill();
    
    //Grupo 3
    //Aumenta el delta time
    if (buttonMasRapidoOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonMasRapido.x, buttonMasRapido.y, buttonG3Size.x, buttonG3Size.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonMasRapido.x, buttonMasRapido.y, buttonG3Size.x, buttonG3Size.y);
      fill(255);
    }
    text("+1",buttonMasRapido.x, buttonMasRapido.y+23);
    noStroke();
    noFill();
    
    //Reduce el delta time
    if (buttonMasLentoOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonMasLento.x, buttonMasLento.y, buttonG3Size.x, buttonG3Size.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonMasLento.x, buttonMasLento.y, buttonG3Size.x, buttonG3Size.y);
      fill(255);
    }
    text("-1",buttonMasLento.x+3, buttonMasLento.y+23);
    noStroke();
    noFill();
    
    //Texto DeltaTime
    stroke(0);
    fill(0);
    text("DeltaTime",buttonMasLento.x+22, buttonMasLento.y-16);
    text(incT,buttonMasLento.x+40, buttonMasLento.y+24);
    noStroke();
    noFill();
    
    //Aumenta la prioridad de separacion entre peces
    if (buttonMasPrioridadSeparacionOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonMasPrioridadSeparacion.x, buttonMasPrioridadSeparacion.y, buttonG3Size.x, buttonG3Size.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonMasPrioridadSeparacion.x, buttonMasPrioridadSeparacion.y, buttonG3Size.x, buttonG3Size.y);
      fill(255);
    }
    text("+1",buttonMasPrioridadSeparacion.x, buttonMasPrioridadSeparacion.y+23);
    noStroke();
    noFill();
    
    //Reduce la prioridad de separacion entre peces
    if (buttonMenosPrioridadSeparacionOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonMenosPrioridadSeparacion.x, buttonMenosPrioridadSeparacion.y, buttonG3Size.x, buttonG3Size.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonMenosPrioridadSeparacion.x, buttonMenosPrioridadSeparacion.y, buttonG3Size.x, buttonG3Size.y);
      fill(255);
    }
    text("-1",buttonMenosPrioridadSeparacion.x+3, buttonMenosPrioridadSeparacion.y+23);
    noStroke();
    noFill();
    
    //Texto Prioridad de separacion
    stroke(0);
    fill(0);
    text("Prioridad de separacion",buttonMenosPrioridadSeparacion.x-40, buttonMenosPrioridadSeparacion.y-16);
    //text(banco.peces.get(0).sepForce,buttonMenosPrioridadSeparacion.x+40, buttonMenosPrioridadSeparacion.y+24);
    noStroke();
    noFill();
    
    //Aumenta la prioridad de alineacion entre peces
    if (buttonMasPrioridadAlineacionOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonMasPrioridadAlineacion.x, buttonMasPrioridadAlineacion.y, buttonG3Size.x, buttonG3Size.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonMasPrioridadAlineacion.x, buttonMasPrioridadAlineacion.y, buttonG3Size.x, buttonG3Size.y);
      fill(255);
    }
    text("+1",buttonMasPrioridadAlineacion.x, buttonMasPrioridadAlineacion.y+23);
    noStroke();
    noFill();
    
    //Reduce la prioridad de alineacion entre peces
    if (buttonMenosPrioridadAlineacionOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonMenosPrioridadAlineacion.x, buttonMenosPrioridadAlineacion.y, buttonG3Size.x, buttonG3Size.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonMenosPrioridadAlineacion.x, buttonMenosPrioridadAlineacion.y, buttonG3Size.x, buttonG3Size.y);
      fill(255);
    }
    text("-1",buttonMenosPrioridadAlineacion.x+3, buttonMenosPrioridadAlineacion.y+23);
    noStroke();
    noFill();
    
    //Texto Prioridad de alineacion
    stroke(0);
    fill(0);
    text("Prioridad de alineacion",buttonMenosPrioridadAlineacion.x-37, buttonMenosPrioridadAlineacion.y-16);
    //text(banco.peces.get(0).aliForce,buttonMenosPrioridadAlineacion.x+40, buttonMenosPrioridadAlineacion.y+24);
    noStroke();
    noFill();
    
    //Aumenta la prioridad de cohesion entre peces
    if (buttonMasPrioridadCohesionOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonMasPrioridadCohesion.x, buttonMasPrioridadCohesion.y, buttonG3Size.x, buttonG3Size.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonMasPrioridadCohesion.x, buttonMasPrioridadCohesion.y, buttonG3Size.x, buttonG3Size.y);
      fill(255);
    }
    text("+1",buttonMasPrioridadCohesion.x, buttonMasPrioridadCohesion.y+23);
    noStroke();
    noFill();
    
    //Reduce la prioridad de cohesion entre peces
    if (buttonMenosPrioridadCohesionOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonMenosPrioridadCohesion.x, buttonMenosPrioridadCohesion.y, buttonG3Size.x, buttonG3Size.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonMenosPrioridadCohesion.x, buttonMenosPrioridadCohesion.y, buttonG3Size.x, buttonG3Size.y);
      fill(255);
    }
    text("-1",buttonMenosPrioridadCohesion.x+3, buttonMenosPrioridadCohesion.y+23);
    noStroke();
    noFill();
    
    //Texto Prioridad de cohesion
    stroke(0);
    fill(0);
    text("Prioridad de cohesion",buttonMenosPrioridadCohesion.x-32, buttonMenosPrioridadCohesion.y-16);
    //text(banco.peces.get(0).cohForce,buttonMenosPrioridadCohesion.x+40, buttonMenosPrioridadCohesion.y+24);
    noStroke();
    noFill();
    
    //Aumenta la prioridad de alcanzar la meta
    if (buttonMasPrioridadMetaOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonMasPrioridadMeta.x, buttonMasPrioridadMeta.y, buttonG3Size.x, buttonG3Size.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonMasPrioridadMeta.x, buttonMasPrioridadMeta.y, buttonG3Size.x, buttonG3Size.y);
      fill(255);
    }
    text("+1",buttonMasPrioridadMeta.x, buttonMasPrioridadMeta.y+23);
    noStroke();
    noFill();
    
    //Reduce la prioridad de alcanzar la meta
    if (buttonMenosPrioridadMetaOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonMenosPrioridadMeta.x, buttonMenosPrioridadMeta.y, buttonG3Size.x, buttonG3Size.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonMenosPrioridadMeta.x, buttonMenosPrioridadMeta.y, buttonG3Size.x, buttonG3Size.y);
      fill(255);
    }
    text("-1",buttonMenosPrioridadMeta.x+3, buttonMenosPrioridadMeta.y+23);
    noStroke();
    noFill();
    
    //Texto Prioridad alcanzar la meta
    stroke(0);
    fill(0);
    text("Prioridad alcanzar meta",buttonMenosPrioridadMeta.x-40, buttonMenosPrioridadMeta.y-16);
    //text(banco.peces.get(0).metForce,buttonMenosPrioridadMeta.x+40, buttonMenosPrioridadMeta.y+24);
    noStroke();
    noFill();
    
    //Aumenta la prioridad de seguir al lider
    if (buttonMasPrioridadLiderOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonMasPrioridadLider.x, buttonMasPrioridadLider.y, buttonG3Size.x, buttonG3Size.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonMasPrioridadLider.x, buttonMasPrioridadLider.y, buttonG3Size.x, buttonG3Size.y);
      fill(255);
    }
    text("+1",buttonMasPrioridadLider.x, buttonMasPrioridadLider.y+23);
    noStroke();
    noFill();
    
    //Reduce la prioridad de seguir al lider
    if (buttonMenosPrioridadLiderOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonMenosPrioridadLider.x, buttonMenosPrioridadLider.y, buttonG3Size.x, buttonG3Size.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonMenosPrioridadLider.x, buttonMenosPrioridadLider.y, buttonG3Size.x, buttonG3Size.y);
      fill(255);
    }
    text("-1",buttonMenosPrioridadLider.x+3, buttonMenosPrioridadLider.y+23);
    noStroke();
    noFill();
    
    //Texto Prioridad seguir al lider
    stroke(0);
    fill(0);
    text("Prioridad seguir al lider",buttonMenosPrioridadLider.x-38, buttonMenosPrioridadLider.y-16);
    //text(banco.peces.get(0).lidForce,buttonMenosPrioridadLider.x+40, buttonMenosPrioridadLider.y+24);
    noStroke();
    noFill();
    
    //Aumenta la prioridad de seguir al lider
    if (buttonMasVelocidadOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonMasVelocidad.x, buttonMasVelocidad.y, buttonG3Size.x, buttonG3Size.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonMasVelocidad.x, buttonMasVelocidad.y, buttonG3Size.x, buttonG3Size.y);
      fill(255);
    }
    text("+1",buttonMasVelocidad.x, buttonMasVelocidad.y+23);
    noStroke();
    noFill();
    
    //Reduce la prioridad de seguir al lider
    if (buttonMenosVelocidadOver) {
      fill(buttonG3Highlight);
      stroke(255);
      rect(buttonMenosVelocidad.x, buttonMenosVelocidad.y, buttonG3Size.x, buttonG3Size.y);
      fill(0);
    } else {
      fill(buttonG3Color);
      stroke(255);
      rect(buttonMenosVelocidad.x, buttonMenosVelocidad.y, buttonG3Size.x, buttonG3Size.y);
      fill(255);
    }
    text("-1",buttonMenosVelocidad.x+3, buttonMenosVelocidad.y+23);
    noStroke();
    noFill();
    
    //Texto Velocidad maxima peces
    stroke(0);
    fill(0);
    text("Velocidad maxima peces",buttonMenosVelocidad.x-38, buttonMenosVelocidad.y-16);
    //text(banco.peces.get(0).maxVel,buttonMenosVelocidad.x+40, buttonMenosVelocidad.y+24);
    noStroke();
    noFill();
  }
  
  //Botones switch
  void update(){
    if (overButton(selectableLateralUIButton.x, selectableLateralUIButton.y, selectableLateralUIButtonSize.x, selectableLateralUIButtonSize.y)) {
      selectableLateralUIButtonOver = true;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonVolver.x, buttonVolver.y, buttonVolverSize.x, buttonVolverSize.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = true;
      buttonRecargarOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonRecargar.x, buttonRecargar.y, buttonRecargarSize.x, buttonRecargarSize.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = true;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonMasRapido.x, buttonMasRapido.y, buttonG3Size.x, buttonG3Size.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = true;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonMasLento.x, buttonMasLento.y, buttonG3Size.x, buttonG3Size.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = false;
      buttonMasLentoOver = true;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonMasPrioridadSeparacion.x, buttonMasPrioridadSeparacion.y, buttonG3Size.x, buttonG3Size.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = true;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonMenosPrioridadSeparacion.x, buttonMenosPrioridadSeparacion.y, buttonG3Size.x, buttonG3Size.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = true;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonMasPrioridadAlineacion.x, buttonMasPrioridadAlineacion.y, buttonG3Size.x, buttonG3Size.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = true;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonMenosPrioridadAlineacion.x, buttonMenosPrioridadAlineacion.y, buttonG3Size.x, buttonG3Size.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = true;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonMasPrioridadCohesion.x, buttonMasPrioridadCohesion.y, buttonG3Size.x, buttonG3Size.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = true;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonMenosPrioridadCohesion.x, buttonMenosPrioridadCohesion.y, buttonG3Size.x, buttonG3Size.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = true;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonMasPrioridadMeta.x, buttonMasPrioridadMeta.y, buttonG3Size.x, buttonG3Size.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = true;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonMenosPrioridadMeta.x, buttonMenosPrioridadMeta.y, buttonG3Size.x, buttonG3Size.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = true;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonMasPrioridadLider.x, buttonMasPrioridadLider.y, buttonG3Size.x, buttonG3Size.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = true;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonMenosPrioridadLider.x, buttonMenosPrioridadLider.y, buttonG3Size.x, buttonG3Size.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = true;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonMasVelocidad.x, buttonMasVelocidad.y, buttonG3Size.x, buttonG3Size.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = true;
      buttonMenosVelocidadOver = false;
    }
    else if (overButton(buttonMenosVelocidad.x, buttonMenosVelocidad.y, buttonG3Size.x, buttonG3Size.y)) {
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = true;
    }
    else{
      selectableLateralUIButtonOver = false;
      buttonVolverOver = false;
      buttonRecargarOver = false;
      buttonMasRapidoOver = false;
      buttonMasLentoOver = false;
      buttonMasPrioridadSeparacionOver = false;
      buttonMenosPrioridadSeparacionOver = false;
      buttonMasPrioridadAlineacionOver = false;
      buttonMenosPrioridadAlineacionOver = false;
      buttonMasPrioridadCohesionOver = false;
      buttonMenosPrioridadCohesionOver = false;
      buttonMasPrioridadMetaOver = false;
      buttonMenosPrioridadMetaOver = false;
      buttonMasPrioridadLiderOver = false;
      buttonMenosPrioridadLiderOver = false;
      buttonMasVelocidadOver = false;
      buttonMenosVelocidadOver = false;
    }
  }
  
  boolean overButton(float x, float y, float width, float height)  {
    if (mouseX >= x && mouseX <= x+width && 
        mouseY >= y && mouseY <= y+height) {
      return true;
    } else {
      return false;
    }
  }
}
