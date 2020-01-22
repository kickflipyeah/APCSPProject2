int startTimeMs;
//time until game starts (milliseconds)
final int startDelayMs = 5000;
boolean atStartup = true;
PImage [] backGround = new PImage[4];
PImage backg;
String s = "W, A, S for movement";
boolean gameLive;
int count;

void animBG(){
  count++;//controls the speed of background
  if(gameLive){
    if(count%80<20){
       image(backGround[0], 0,0, width, height);
    }
    else if(count%80<40){
       image(backGround[1], 0,0, width, height);    
    }
   else if(count%80<60){
       image(backGround[2], 0,0, width, height);    
    }
   else{
    image(backGround[0], 0,0, width, height);
   }
  //for (int i = 0; i < backGround.length; i++){
  
  //}
  }
}

void setup(){
  size(800, 600);
  gameLive = true;
  backGround[0] = loadImage("./imgs/BG0.jpg");
  backGround[1] = loadImage("./imgs/BG2.png");
  backGround[2] = loadImage("./imgs/BG3.png");
}

void draw(){
    if (atStartup) {
    // The current time, in milliseconds
    int curTimeMs = millis();
    // The remaining time in the startup period
    int startupTimeRemainingMs = startDelayMs - (curTimeMs - startTimeMs);
    startScreen(startupTimeRemainingMs);
    atStartup = startupTimeRemainingMs > 0;
    // Short-circuit if we're still in the startup phase.
    return;
  }
    showWAS();
    animBG();
   // if(gameLive){
   // image(backGround[i],0,0, width, height);
   // }
 
  textAlign(CENTER,CENTER);
 
  text("GO!", width/2, height/2);
}

void showWAS(){
  textSize(20);
  text(s, 0, 120);
}

void startScreen(int remainingTimeMs){
  background(50);
  textSize(100);
  fill(0);
  textAlign(CENTER,CENTER);
  // Show the remaining time, in seconds;
  // show n when there are n or fewer seconds remaining. 
  text(ceil(remainingTimeMs/1000.0), width/2, height/2);
}
