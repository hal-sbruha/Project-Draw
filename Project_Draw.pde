int r=0;
int g=0;
int b=0;

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
     strokeWeight(10);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //erases a large section that follows the mouse
   if((keyPressed==true)&&(key=='j')) {
     stroke(10,121,105);
     strokeWeight(13);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the eraser instead of the 'f' key
   if(mouseX<20 && mouseY<20 && mousePressed) {
      r=10;
      g=121;
      b=105;
      stroke(r,g,b);
      strokeWeight(8);
      line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the small black line instead of void mouseDragged
   if(mouseX<20 && mouseY<40 && mouseY>20 && mousePressed) {
     r=0;
     g=0;
     b=0;
     stroke(r,g,b);
     strokeWeight(8);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the dark blue line instead of the 'd' key
   if(mouseX<20 && mouseY<60 && mouseY>40 && mousePressed) {
     r=4;
     g=26;
     b=142;
     stroke(r,g,b);
     strokeWeight(8);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this creates an on screen button for the purple line instead of the 'l' key
   if(mouseX<20 && mouseY<80 && mouseY>60 && mousePressed) {
     r=96;
     g=27;
     b=147;
     stroke(r,g,b);
     strokeWeight(8);
     line(mouseX,mouseY,pmouseX,pmouseY);
   }
   
   //this draws the white square that signifies where the erase button is
   noStroke();
   fill(255);
   rect(0,0,20,20);
   
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
   
 }

 //draws a line when you click the mouse
void mouseDragged() {
  stroke(r,g,b);
  strokeWeight(5);
  line(pmouseX,pmouseY,mouseX,mouseY);
}