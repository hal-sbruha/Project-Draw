int r=0;
int g=0;
int b=0;
int w=5;
color black=color(0);
color darkBlue=color(4,26,142);
color purple=color(96,27,147);
color lightBlue=color(63,181,196);

void setup() {
  size(1000,800);
  background(10,121,105);
}
 void draw() {
   //erases the whole screen 
   if((keyPressed==true)&&(key=='q')) {
      background(10,121,105);
    }
    
    //erases a section that follows the mouse
    if((keyPressed==true)&&(key=='f')) {
      stroke(10,121,105);
      strokeWeight(8);
      line(mouseX,mouseY,pmouseX,pmouseY);
    }
   
   //draws a dark blue line
    if((keyPressed==true)&&(key=='a')) {
      stroke(4,26,142);
      strokeWeight(5);
      line(mouseX,mouseY,pmouseX,pmouseY);
    }
   
   //draws a purple line
   if((keyPressed==true)&&(key=='l')) {
     stroke(96,27,147);
     strokeWeight(5);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //draws a light blue line
   if((keyPressed==true)&&(key=='d')) {
     stroke(63,181,196);
     strokeWeight(5);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //draws a large black line that follows the mouse
   if((keyPressed==true)&&(key=='i')) {
     stroke(0);
     strokeWeight(13);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //erases a large section that follows the mouse
   if((keyPressed==true)&&(key=='j')) {
     stroke(10,121,105);
     strokeWeight(13);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //-----------------------------------------------------------------------------
   
   //this creates an on screen button for the eraser instead of the 'f' key
   if(mouseX<20 && mouseY<20 && mousePressed) {
      r=10;
      g=121;
      b=105;
      w=8;
      stroke(r,g,b);
      strokeWeight(w);
      line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the small black line instead of void mouseDragged
   if(mouseX<20 && mouseY<40 && mouseY>20 && mousePressed) {
     r=0;
     g=0;
     b=0;
     w=5;
     stroke(r,g,b);
     strokeWeight(w);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the dark blue line instead of the 'd' key
   if(mouseX<20 && mouseY<60 && mouseY>40 && mousePressed) {
     r=4;
     g=26;
     b=142;
     w=5;
     stroke(r,g,b);
     strokeWeight(w);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the purple line instead of the 'd' key
   if(mouseX<20 && mouseY<80 && mouseY>60 && mousePressed) {
     r=96;
     g=27;
     b=147;
     w=5;
     stroke(r,g,b);
     strokeWeight(w);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the light blue line instead of the 'l' key
    if(mouseX<20 && mouseY<100 && mouseY>80 && mousePressed) {
     r=63;
     g=181;
     b=196;
     w=5;
     stroke(r,g,b);
     strokeWeight(w);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the large eraser instead of the 'j' key
   if(mouseX<20 && mouseY<140 && mouseY>100 && mousePressed) {
      r=10;
      g=121;
      b=105;
      w=13;
      stroke(r,g,b);
      strokeWeight(w);
      line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the large black line instead of the 'i'
   if(mouseX<20 && mouseY<180 && mouseY>140 && mousePressed) {
      r=0;
      g=0;
      b=0;
      w=13;
      stroke(r,g,b);
      strokeWeight(w);
      line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   if(mouseX>980 && mouseY<20 && mouseY>0 && mousePressed) {
     background(10,121,105);
   }
   
   //this draws the pink "eraser" that signifies where the erase button is
   noStroke();
   fill(237,172,236);
   rect(0,0,12,20);
   noStroke();
   fill(237,172,236);
   triangle(12,0,12,20,20,20);
   
   //this draws the black square that signifies where the black line button is 
   noStroke();
   fill(0);
   rect(0,20,20,20);
   
   //this draws the dark blue square that signifies where the dark blue line button is
   noStroke();
   fill(4,26,142);
   rect(0,40,20,20);
   
   //this draws the purple square that signifies where the purple line button is
   noStroke();
   fill(96,27,147);
   rect(0,60,20,20);
   
   //this draws the light blue square that signifies where the light blue line button is
   noStroke();
   fill(63,181,196);
   rect(0,80,20,20);
   
   //this draws the large pink "eraser" that signifies where the large eraser is
   noStroke();
   fill(237,172,236);
   rect(0,100,5,40);
   noStroke();
   fill(237,172,236);
   triangle(5,100,5,140,20,140);
   
   //this draws the large black rectangle that signifies where the large black line button is
   noStroke();
   fill(0);
   rect(0,140,20,40);
   
   //this draws the trash can that signifies where the full screen erase button is
   noStroke();
   fill(155,155,155);
   rect(985,5,10,15);
   noStroke();
   fill(139,139,139);
   rect(982,3,16,3);
 }

 //draws a line when you click the mouse
void mouseDragged() {
  stroke(r,g,b);
  strokeWeight(w);
  line(pmouseX,pmouseY,mouseX,mouseY);
}