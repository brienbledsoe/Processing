import processing.video.*; 
Capture video;
int x=0;
//int x=0; 

void setup(){
  //size(700,240); //640
  size(640,720);//240,700
  video = new Capture(this, 640,480); //320,240 this is used for the computer to know that this is the screen 
  //it capturing too, then width, and height; 
  video.start(); 
}

//now to create the capture event so that the camera knows we need to read from it
void captureEvent(Capture video){
    video.read(); //saying everytime there is a new image in a video, read that image
}

//the copy function needs nine arguments, the first argument is the thing we want to copy from. We want to
//to copy from the image, the next four positions are the rectangle that we want  to copy from, an x, y, width, and height.
//the last four are the rectangle dimensions of where we want to copy to in the canvas

void draw(){
 //image(video,0,0); 
 int w = video.width; //getting the center of the video
 int h = video.height;
 copy(video, w/2, 0, h,1, 0, x, h, 1);//last rectangle x, 0, 1, h
 //copy(video, w/2, 0,1, h, x, 0, 1, h); //x starts at zero but we want to incrament it  
  //the zero in the third coloumn is the top of the picture, the zero index/position
  //the 1 in the fourth slot is because we want the width to be one pixel wide as it copies
  //x = x -1; 
  //x = x + 1; //saying every frame after we copy that column of pixels, increase x by one
  ////x = (x+h) * width;
 
  
  x = x+1;
  
  if (x> width){
    x = 0; 
  }
   
}

void mousePressed() {
  saveFrame("scan-######.png");
}
