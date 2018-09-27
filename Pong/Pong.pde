import ddf.minim.*;  
Minim minim;
AudioSample sound;

int ballx = 0;
int bally=50;
int ballspeed=2;
int ballspeedy=2;
void setup(){
  size(1000,500);
  background(0,0,0);
  minim = new Minim (this);
sound = minim.loadSample("error.wav", 128);
  
}
void draw(){
   background(0,0,0);
  ballx +=ballspeed;
  bally +=ballspeed;
  fill(163, 37, 37);
  stroke(0,0,0);
  ellipse(ballx,bally,40,40);
  if(ballx>width){
   ballspeed=-ballspeed; 
    sound.trigger();
  }
  else if (ballx<0)
  {
    ballspeed=2;
     sound.trigger();
  }
 
  
  
  
}