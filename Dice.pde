Die dice1;
 void setup()
  {
    size(700,700);
      noLoop();
  }
  void draw()
  {
    int counter = 0;
      background(255,255,0);
      for (int y = 0; y < 500; y+=50) {
        for(int x = 0; x < 500; x+=50) {
          dice1 = new Die(x,y);
          dice1.roll();
           dice1.show();

      if (dice1.sideValue == 1) {
        counter++;
      }
      else if (dice1.sideValue == 2) {
        counter+=2;
      }
      else if (dice1.sideValue == 3) {
        counter+=3;
      }
      else if (dice1.sideValue == 4) {
        counter+=4;
      }
      else if (dice1.sideValue == 5) {
        counter+=5;
      }
      else {
        counter+=6;
      }
  }
      }
      textSize(50);
  text("There are: " + counter + " pips", 0,650);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
     int myX,myY, sideValue; //member variable declarations here
      
      Die(int x, int y) //constructor
      {
         myX = x;
         myY = y;
      }
      void roll()
      {
       sideValue = (int)(Math.random()*6)+1;
      }
      void show()
      {
 fill(255,255,255);
rect(myX,myY,50,50);
fill(0,0,0);
if (sideValue == 1) {
  ellipse(myX+25,myY+25,10,10);
  }
  if (sideValue == 2) {
  ellipse(myX+40,myY+10,10,10);
  ellipse(myX+10,myY+40,10,10);
  }
  if (sideValue == 3) {
  ellipse(myX+40,myY+10,10,10);
  ellipse(myX+10,myY+40,10,10);
  ellipse(myX+25,myY+25,10,10);
  }
  if (sideValue == 4) {
 ellipse(myX+40,myY+10,10,10);
  ellipse(myX+10,myY+40,10,10);
  ellipse(myX+10,myY+10,10,10);
  ellipse(myX+40,myY+40,10,10);
  }
  if (sideValue == 5) {

  ellipse(myX+40,myY+10,10,10);
  ellipse(myX+10,myY+40,10,10);
  ellipse(myX+10,myY+10,10,10);
  ellipse(myX+40,myY+40,10,10);
  ellipse(myX+25,myY+25,10,10);
  }
  if (sideValue == 6) {
 ellipse(myX+40,myY+10,10,10);
  ellipse(myX+10,myY+40,10,10);
  ellipse(myX+10,myY+10,10,10);
  ellipse(myX+40,myY+40,10,10);
  ellipse(myX+40,myY+25,10,10);
  ellipse(myX+10,myY+25,10,10);
  }

  
  }
  }
