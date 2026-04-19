PImage miImagen;
void setup(){
  size(800,400);
  background(50);
  miImagen= loadImage("indio.JPG");
 
}
 void draw(){ 
   image(miImagen, 0, 0, width/2, height);
  fill(180,106,77);
 //figuras del fondo
  quad(400,300,400,400,800,400,800,300);
  fill(30);
  ellipse(585,200,250,275);
  fill(235);
  ellipse(600,200,250,300);
  fill(50,100,25);
  quad(400,350,400,400,750,400,650,375);
  fill(255);
  //personaje
  rect(580,110,30,50);
  ellipse(600,100,50,65);
  fill(0);
  circle(601,93,15);
  circle(620,90,15);
  line(607,91,622,92);
  line(595,92,580,110);
  fill(0,100,200);
  rect(550,135,80,150);
  triangle(630,137,630,200,653,200);
  triangle(550,136,550,210,520,210);
  quad(580,250,625,360,660,330,630,250);
  rect(550,250,50,100);
  fill(0);
  rect(560,250,30,10);
  fill(255);
  quad(525,211,554,207,600,240,581,250);
  quad(631,200,647,242,654,231,653,199);
  rect(580,241,25,25);
  rect(648,225,25,25);
  fill(0);
  circle(609,250,20);

} 
