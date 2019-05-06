import processing.video.*;
Capture myVideo;

int vwidth = 640;
int vheight = 480;
//int vheight = 250;
//int temp = 60; 

void setup() { 
  PImage img;
  size(630, 800);
  background(0, 0, 0);
  myVideo = new Capture(this, vwidth, vheight);
  myVideo.start();
}

void draw() {
  if (myVideo.available()) {
    myVideo.read();
  }
  loadPixels(); 
  int slice = (width*height/2)-width; //Subtracts everything above the middle row of pixels from the selection
  for (int i = slice; i < (width*height)/2; i++) { //For each individual pixel in the middle row of pixels in the video
    int sliceDestination = i - slice; //Pixels  will copied to the top row of the canvas
    int sliceSource = i; //Pixels will be copied from the center row of the video
    //pixels[sliceDestination] = myVideo.pixels[sliceSource]; //Copy the center row of the video to the top of the canvas
    pixels[sliceSource] = myVideo.pixels[sliceDestination];
}
  arrayCopy(pixels, 0, pixels, width, (height - 1) * width); //Move everything down one row to make room for new frames of video
  updatePixels();
}

void mousePressed() {
  saveFrame("scan-######.png");
}
