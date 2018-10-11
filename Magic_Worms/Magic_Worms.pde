void setup(){
   
  size(500,500);
  int maxValue = 500;
  random(maxValue);

  
  
  
}
void draw(){
  background(255,170,136);
  makeMagical();
  for(int i = 0; i<500; i+= 2){
    fill(0,0,255);
   ellipse(getWormX(i) ,getWormY(i) , 2,10); 
  }
   
  
  
  
  
}
float frequency = .001;
float noiseInterval = PI;

void makeMagical() {
     fill( 0, 0, 0, 10 );
     rect(0, 0, width, height);
     noStroke();
}

float getWormX(int i) {
     return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
     return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}