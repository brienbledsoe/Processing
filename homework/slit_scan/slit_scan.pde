import processing.video.*; //imports the video library 

Capture video; 

int x = 0; //global variable x that starts at 0
void setup(){
  //size(640, 240);
  size(1280, 480); // creating a larger canvas for higher resolution
  //video = new Capture(this, 320, 240); //making the canvas small starting off low resolution
  //the argument that the capture object needs in order to connect to the camera are the keyword 
  //this referencing this particular sketh so the camer knows to communicate with this sketch and 
  //then we want to give a width and a height
  video = new Capture(this, 640, 480); // creating a higher resolution
  video.start(); //we want to start capturing from the camera 
  
}

void captureEvent(Capture video){
  video.read(); //continuously reading from the camera 
}

void draw(){
  //image(video,0,0);
  int w = video.width;
  int h = video.height; 
  //copy(video, w/2, 0, 1, h, 0, 0, 1, h);  //top left of the canvas, one pixel wide and the same height
  copy(video, w/2, 0, 1, h, x, 0, 1, h);
  x=x+1; //every frame after we copy the column of pixels increase x by one 
  
  //maybe we want to go back to the beginning
  //if (x > width){
  // x = 0;  
  //}
}
