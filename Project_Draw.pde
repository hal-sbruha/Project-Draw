int r=0;
int g=0;
int b=0;
int w=5;

void setup() {
  size(1000,800);
  background(10,121,105);
}
 void draw() {
   //this creates an on screen button for the eraser 
   if(mouseX<20 && mouseY<112 && mouseY>89 && mousePressed) {
      r=10;
      g=121;
      b=105;
      w=8;
      stroke(r,g,b);
      strokeWeight(w);
      line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the black line 
   if(mouseX<20 && mouseY<20 && mouseY>0 && mousePressed) {
     r=0;
     g=0;
     b=0;
     w=5;
     stroke(r,g,b);
     strokeWeight(w);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the dark blue line 
   if(mouseX<20 && mouseY<66 && mouseY>43 && mousePressed) {
     r=4;
     g=26;
     b=142;
     w=5;
     stroke(r,g,b);
     strokeWeight(w);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the purple line 
   if(mouseX<20 && mouseY<43 && mouseY>20 && mousePressed) {
     r=96;
     g=27;
     b=147;
     w=5;
     stroke(r,g,b);
     strokeWeight(w);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the light blue line 
    if(mouseX<20 && mouseY<89 && mouseY>66 && mousePressed) {
     r=63;
     g=181;
     b=196;
     w=5;
     stroke(r,g,b);
     strokeWeight(w);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button that makes the size of the line small
   if(mouseX<23 && mouseY<800 && mouseY>777 && mousePressed) {
     w=5;
     stroke(r,g,b);
     strokeWeight(w);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button that makes the size of the line large
   if(mouseX<69 && mouseX>33 && mouseY<800 && mouseY>767 && mousePressed) {
     w=13;
     stroke(r,g,b);
     strokeWeight(w);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the full screen eraser
   if(mouseX>980 && mouseY<20 && mouseY>0 && mousePressed) {
     background(10,121,105);
   }
  
  //this draws the lines around the color buttons
   noStroke();
   fill(165);
   rect(20,0,3,115);
   noStroke();
   fill(165);
   rect(0,20,20,3);
   noStroke();
   fill(165);
   rect(0,43,20,3);
   noStroke();
   fill(165);
   rect(0,66,20,3);
   noStroke();
   fill(165);
   rect(0,89,20,3);
   noStroke();
   fill(165);
   rect(0,112,20,3);
   
   //this draws the lines around the size buttons
   noStroke();
   fill(165);
   rect(0,797,23,3);
   noStroke();
   fill(165);
   rect(0,777,3,20);
   noStroke();
   fill(165);
   rect(20,777,3,20);
   noStroke();
   fill(165);
   rect(0,777,20,3);
   noStroke();
   fill(165);
   rect(33,767,30,3);
   noStroke();
   fill(165);
   rect(33,767,3,30);
   noStroke();
   fill(165);
   rect(33,797,33,3);
   noStroke();
   fill(165);
   rect(63,767,3,30);
   
   
   //this draws the black square that signifies where the black line button is 
   noStroke();
   fill(0);
   rect(0,0,20,20);
   
   //this draws the purple square that signifies where the purple line button is
   noStroke();
   fill(96,27,147);
   rect(0,23,20,20);
   
   //this draws the dark blue square that signifies where the dark blue line button is
   noStroke();
   fill(4,26,142);
   rect(0,46,20,20);
   
   //this draws the light blue square that signifies where the light blue line button is
   noStroke();
   fill(63,181,196);
   rect(0,69,20,20);
   
   //this draws the square that signifies where the size buttons are
   noStroke();
   fill(10,121,105);
   rect(3,780,17,17);
   noStroke();
   fill(10,121,105);
   rect(36,770,27,27);
  
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