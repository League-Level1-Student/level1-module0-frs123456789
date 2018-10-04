PImage backgroundImage;
import ddf.minim.*;  
Minim minim;
AudioSample sound;
 int ballx = 0;
int bally=50;
double ballspeed=4;
double ballspeedy=4;
void setup(){
  size(1000,500);
  backgroundImage = loadImage("PongBackground.jpg");
  background(0,0,0);
  minim = new Minim (this);
sound = minim.loadSample("error.wav", 128);
  
}
void draw(){
  
   background(0,0,0);
   image(backgroundImage, 0, 0);
image(backgroundImage, 0, 0, width, height);
 rect(mouseX, 460, 75,20);
  ballx +=ballspeed;
  bally +=ballspeedy;
  fill(163, 37, 37);
  stroke(0,0,0);
  ellipse(ballx,bally,40,40);
  if(intersects(ballx, bally, mouseX,460, 75)){
    ballspeedy=-ballspeedy*1.1;
  }
     
  if(ballx>width){
   ballspeed=-ballspeed*1.1; 

  }
  else if (ballx<0)
  {
    ballspeed=-ballspeed*1.1;

  }
  
if(bally>height){
    
    sound.trigger(); 
   
  }
 else if(bally<0){
    ballspeedy=-ballspeedy*1.1;
    
  }
  
  
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
     if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
          return true;
     else 
          return false;
}