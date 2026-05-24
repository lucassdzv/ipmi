//variables de imagenes
PImage logo;
PImage banda;
PImage ojo;
PImage sopa;
PImage octubre;
PImage luz;
PImage fondo;

//int de boton
color rectColor;
color rectSeleccion;

//int contador
int contador;
boolean contadorAhora;
int ojocontador;
int sopacontador;
int octubrecontador;
int luzcontador;

//int de funciones de imagenes
int transp;
int tamX;
int tamY;
int posX;
int posY;
int fondoY;

//oktubre
int octubreX;
int octubreY;

//sopa
int sopaX;
int sopaY;
int sopaAncho;
int sopaAlto;

//texto
PFont LN;
int textoAlpha;
int textoX;
int textoY;

void setup() {

  // cargar imagenes
  size(640, 480);

  logo = loadImage("logo.jpg");
  banda = loadImage("banda.jpg");
  ojo = loadImage("ojo.jpg");
  sopa = loadImage("sopa.png");
  octubre = loadImage("octubre.jpg");
  luz= loadImage("luzbelito.jpg");
  fondo=loadImage("fondo.png");
 
  // boton
  rectColor = color(0);
  rectSeleccion = color(255);

  //contadores
  contador = 1;
  contadorAhora = false;
  ojocontador = 0;
  sopacontador = 0;
  octubrecontador = 0;
  luzcontador   =0;

  //octubre
  octubreX = 0;
  octubreY = -400;

  //sopa
  sopaX = 0;
  sopaY = 10;
  sopaAncho = 0;
  sopaAlto = 0;
//fondo
  fondoY=480;
  //transparencia
  transp = 0;

  //posiciones iniciales del ojo
  posX = -800;
  posY = 0;

  //texto
  textoAlpha = 0;

  LN = loadFont("bodoni.vlw");
  textFont(LN);

  textoX = 700;
  textoY = 600;
}

void draw() {

  background(0);

 

  //armado y preparado de la caja y el texto
  if (contador >= 1 && contador <= 4800) {

    fill(0);
    rect(0, 340, 680, 140);

    fill(255);
    textSize(18);
  }

  //primera diapositiva
  if (contador >= 1 && contador <= 800) {

    image(logo, 114, 40, 400, 250);

    if (textoAlpha < 255) {
      textoAlpha += 3;
    }

    fill(255);

    text(
      "Patricio Rey y sus Redonditos de Ricota, también conocidos como Los Redondos, fue un grupo musical de rock argentino formado en La Plata en el año 1976 siendo considerado uno de los grupos más importantes e influyentes de la historia de la música de Argentina, así como también uno de los más convocantes en términos de audiencia",
      20, 360, 600, 100
      );
  }

  //segunda diapositiva
  if (contador > 800 && contador <= 1600) {

    if (contador == 801) {
      textoX = 700;
    }

    if (transp < 255) {
      transp++;
    }

    tint(255, transp);

    image(banda, 0, 10, 640,480);

    noTint();

    if (textoX > 20) {
      textoX -= 4;
    }

    fill(0);
    rect(0, 340, 680, 100);

    fill(255);

    text(
      "e integrado, en la mayor parte de su carrera, por el Indio Solari (voz y composición), Skay Beilinson (guitarra y composición), Semilla Bucciarelli (bajo), Walter Sidotti (batería) y Sergio Dawi (saxofón, armónica y piano)",
      textoX, 360, 600, 100
      );
  }

  //tercera diapositiva
  if (contador > 1600 && contador <= 2400) {

    if (contador == 1601) {
      textoX = -600;
    }

    image(ojo, posX, posY,640,400);
    

    if (posX < 200) {

      posX++;

    } else {

      ojocontador++;

      if (ojocontador > 250) {
        posY++;
      }
    }

    if (textoX < 20) {
      textoX += 4;
    }

    fill(0);
    rect(0, 340, 680, 140);

    fill(255);

    text(
      "de entre sus mejores albunes se encuentran Un baión para el ojo idiota siendo el tercer álbum del grupo , editado en 1988 . Según el Indio Solari, vocalista y líder del grupo junto a Skay Beilinson es una de las grabaciones que mejor capta el espíritu y la idea musical del grupo",
      textoX, 360, 600, 100
      );
  }

  //cuarta diapositiva
  if (contador > 2400 && contador <= 3200 ) {

    image(octubre, octubreX, octubreY,640,300);

    if (octubreY < 30) {

      octubreY += 2;

    } else {

      octubrecontador++;
    }

    if (octubrecontador > 300) {
      octubreX += 2;
    }

    if (contador == 2401) {
      textoX = 700;
    }

    if (textoX > 20) {
      textoX -= 4;
    }

    fill(0);
    rect(0, 340, 680, 140);

    fill(255);

    text(
      "OKTUBRE que esta inspirada por las revoluciones sociales históricas y el contexto bélico internacional de la Guerra Fría, así como también del escenario político de Argentina en el período de la vuelta a la democracia." ,
      textoX, 360, 600, 100
      );
  }

  //quinta diapositiva
  if (contador > 3200 && contador <= 4000 ) {

    image(sopa, sopaX, sopaY, sopaAncho, 300);

    if (sopaAncho < 640){

      sopaAncho += 2;
      sopaAlto += 2;

    } else {

      sopacontador++;
    }

    if (contador == 3201) {
      textoX = -600;
    }

    if (textoX < 20) {
      textoX += 4;
    }

    fill(0);
    rect(0, 340, 680, 140);

    fill(255);

    text(
      "aunque mi favorito siempre va a ser  la mosca y la sopa. El álbum tiene canciones que más tarde se convirtieron en clásicos del grupo como «Mi perro dinamita» y «Un poco de amor francés». También tiene otras composiciones destacables como «El pibe de los astilleros» y «Queso ruso», esta última con una compleja lírica",
      textoX, 360, 600, 100
      );
  }

  //sexta diapositiva
  if (contador > 4000 && contador <= 4800 ) {

    image(luz,0,0,648,300);

    if (contador == 4001) {
      textoY = 600;
    }

    if (textoY > 360) {
      textoY -= 3;
    }

    fill(0);
    rect(220,300,420,360);

    fill(255);

    text(
      "y podria seguir con mas obras de esta iconica banda de rock y antes de que cuente diez TERMINARAy gracias por ver",
      20, textoY, 600, 100
      );
  }

  //fin
  // BOTON 
 
 
if (contador > 4800) {

  fill(255);
   //
if (fondoY > 180) {
  fondoY -= 2;
}

image(fondo,300, fondoY, 300, 300);
  rect(245, 165, 150, 60);

  fill(0);
  textSize(24);
  textAlign(CENTER, CENTER);

  text("reiniciar", 320, 195);
   
}
  contador++;

}
void mousePressed() {

 //reiniciar
  if (contador > 4800 &&
      mouseX > 245 &&
      mouseX < 395 &&
      mouseY > 165 &&
      mouseY < 225) {

    contador = 1;

    ojocontador = 0;
    sopacontador = 0;
    octubrecontador = 0;
    luzcontador = 0;

    transp = 0;

    posX = -800;
    posY = 0;

    octubreX = 0;
    octubreY = -400;

    sopaX = 0;
    sopaY = 10;
    sopaAncho = 0;
    sopaAlto = 0;

    textoX = 700;
    textoY = 600;
  }
}
