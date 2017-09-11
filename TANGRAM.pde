float pxt1=600;
float pyt1=700;
float rotT1=0.0;
color T1= color(150,60,140);

float pxt2=650;
float pyt2=800;
float rotT2=0.0;
color T2 = color(60,150,140);

float pxtm=550;
float pytm=550;
float rotTm=0.0;
color Tm = color (140,60,150);

float pxtp=750;
float pytp=175;
float rotTp=0.0;
color Tp = color(30,60,80);

float pxtp2=625;
float pytp2=700;
float rotTp2=0.0;
color Tp2 = color(10,255,20);

float pxr=700;
float pyr=650;
float rotr=0.0;
color R = color (255,10,20);

float pxq=375;
float pyq=675;
float rotq=0.0;
float scaleq=1;
color Q = color(200,0,255); 


void setup()
{ 
size(900,900);
strokeJoin(ROUND); // ESTILO DE LA LINEA
strokeWeight(3);
rectMode(CENTER);
}
void draw()
{
background(255);

fill(190);
rect(450,450,600,600);

loadPixels();
pixelnivel();


pushStyle();
pushMatrix();
translate(pxt1, pyt1);
rotate(radians(rotT1));
fill(T1);
triangle(150,-300,150,300,-150,0);
popStyle();
popMatrix();

pushStyle();
pushMatrix();
translate(pxt2, pyt2);
rotate(radians(rotT2));
fill(T2);
triangle(-300,150,300,150,0,-150);
popStyle();
popMatrix();

pushStyle();
pushMatrix();
translate(pxtm, pytm);
rotate(radians(rotTm));
fill(Tm);
triangle(-150,-150,-150,150,150,-150);
popStyle();
popMatrix();

pushStyle();
pushMatrix();
translate(pxtp, pytp);
rotate(radians(rotTp));
fill(Tp);
triangle(-150,-75,150,-75,0,75);
popStyle();
popMatrix();

pushStyle();
pushMatrix();
translate(pxtp2, pytp2);
rotate(radians(rotTp2));
fill(Tp2);
triangle(-75,-150,75,0,-75,150);
popStyle();
popMatrix();

pushStyle();
pushMatrix();
translate(pxr, pyr);
rotate(radians(rotr));
fill(R);
quad(-150,0,0,-150,150,0,0,150); //rombo rosa
popStyle();
popMatrix();

pushStyle();
pushMatrix();
translate(pxq, pyq);
rotate(radians(rotq));
scale(scaleq,1);
fill(Q);
quad(-75,-75,75,-225,75,75,-75,225); //ultima figura lila
popStyle();
popMatrix();



} 

void pixelnivel()
{ color c;
  int contador = 0;
  for (int i =0; i<810000; i++)
  {
  c=pixels [i];
  if (c==color(190))
  {contador++;
  }
}
  if ((contador>0) && (contador<10000))
  {
    println("Lo has conseguido, TERMINASTE");
  }
  
  else
  {println(" Te falta Poco");
  } }
void mousePressed()
{
  color c = get(mouseX,mouseY);
  
   if( c == T1)
 {
  stroke(255);
triangle(300,-300,300,300,0,0); //Triangulo grande morado 
 
 } else   if( c == T2)
 {
  stroke(255);
triangle(-300,150,300,150,0,-150); //Triangulo grande azul
 
 } else if( c == Tm)
 {
  stroke(255);
triangle(-150,-150,-150,150,150,-150); //Triangulo mediano morado
 
 } else   if( c == Tp)
 {
  stroke(255);
triangle(-150,-150,-150,150,150,-150); //Triangulo mediano morado
 
 } else   if( c == Tp2)
 {
  stroke(255);
triangle(-75,-150,75,0,-75,150); //Triangulo PEQUEÑO morado
 
 } else  if( c == R)
 {
  stroke(255);
quad(-150,0,0,-150,150,0,0,150); //rombo rosa
 
 } else if( c == Q)
 {
  stroke(255);
quad(-75,-75,75,-225,75,75,-75,225); //ultima figura lila
 
 }
 
}
void mouseDragged()
{
 color c = get(mouseX,mouseY);
 
 if (c == T1)
  {
    float tempxt1=mouseX-pxt1;
    pxt1= pxt1+tempxt1-50;
    float tempyt1=mouseY-pyt1;
    pyt1=pyt1+tempyt1-50;

  } else  if (c == T2)
  {
    float tempxt1=mouseX-pxt2;
    pxt2= pxt2+tempxt1-50;
    float tempyt1=mouseY-pyt2;
    pyt2=pyt2+tempyt1-50;

  } else if (c == Tm)
  {
    float tempxt1=mouseX-pxtm;
    pxtm= pxtm+tempxt1+25;
    float tempyt1=mouseY-pytm;
    pytm=pytm+tempyt1+25;

  } else   if (c == Tp)
  {
    float tempxt1=mouseX-pxtp;
    pxtp= pxtp+tempxt1+25;
    float tempyt1=mouseY-pytp;
    pytp=pytp+tempyt1+25;

  } else  if (c == Tp2)
  {
    float tempxt1=mouseX-pxtp2;
    pxtp2= pxtp2+tempxt1+25;
    float tempyt1=mouseY-pytp2;
    pytp2=pytp2+tempyt1+25;

  } else   if (c == R)
  {
    float tempxt1=mouseX-pxr;
    pxr= pxr+tempxt1+25;
    float tempyt1=mouseY-pyr;
    pyr=pyr+tempyt1+25;

  } else  if (c == Q)
  {
    float tempxt1=mouseX-pxq;
    pxq= pxq+tempxt1+25;
    float tempyt1=mouseY-pyq;
    pyq=pyq+tempyt1+25;

  }
}  
void mouseReleased()
{
    color c = get(mouseX,mouseY);
    
     if( c == T1)
 {
  stroke(0);
triangle(300,-300,300,300,0,0); //Triangulo grande morado 
 
 } else   if( c == T2)
 {
  stroke(0);
triangle(-300,150,300,150,0,-150); //Triangulo grande azul
 
 } else  if( c == Tm)
 {
  stroke(0);
triangle(-150,-150,-150,150,150,-150); //Triangulo mediano morado
 
 } else  if( c == Tp)
 {
  stroke(0);
triangle(-150,-150,-150,150,150,-150); //Triangulo mediano morado
 
 } else  if( c == Tp2)
 {
  stroke(0);
triangle(-75,-150,75,0,-75,150); //Triangulo PEQUEÑO morado
 
 } else  if( c == R)
 {
  stroke(0);
quad(-150,0,0,-150,150,0,0,150); //rombo rosa
 
 } else if( c == Q)
 {
  stroke(0);
quad(-75,-75,75,-225,75,75,-75,225); //ultima figura lila
 
 }
 
}
void keyPressed() {
 color c = get(mouseX,mouseY);
  if (c == T1) {
    if (keyCode == RIGHT) {
      
      rotT1=rotT1+5;
      
    } else if (keyCode == LEFT) {
      rotT1=rotT1-5;
    } 
  } else   if (c == T2) {
    if (keyCode == RIGHT) {
      
      rotT2=rotT2+5;
      
    } else if (keyCode == LEFT) {
      rotT2=rotT2-5;
    } 
  } else  if (c == Tm) {
    if (keyCode == RIGHT) {
      
      rotTm=rotTm+5;
      
    } else if (keyCode == LEFT) {
      rotTm=rotTm-5;
    } 
  } else   if (c == Tp) {
    if (keyCode == RIGHT) {
      
      rotTp=rotTp+5;
      
    } else if (keyCode == LEFT) {
      rotTp=rotTp-5;
    } 
  } else   if (c == Tp2) {
    if (keyCode == RIGHT) {
      
      rotTp2=rotTp2+5;
      
    } else if (keyCode == LEFT) {
      rotTp2=rotTp2-5;
    } 
  } else  if (c == R) {
    if (keyCode == RIGHT) {
      
      rotr=rotr+5;
      
    } else if (keyCode == LEFT) {
      rotr=rotr-5;
    } 
  } else  if (c == Q) {
    if (keyCode == RIGHT) {
      
      rotq=rotq+5;
      
    } else if (keyCode == LEFT) {
      rotq=rotq-5;
    } 
    else if(keyCode==UP) {
      scaleq=-scaleq;
    }
  } 
}