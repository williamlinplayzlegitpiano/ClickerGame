void targsize() {
   //slider
   fill(color1);
   strokeWeight(5);
   stroke(circleborder);
   line(400,400,400,500);
   strokeWeight(2);
   stroke(circleborder);
   ellipse(400,sliderY,20,20);
 
 
 
   if (mousePressed) {
     if (dist (400, sliderY, mouseX, mouseY) < 20) {
       sliderY = mouseY ;
       if (sliderY < 400) {
         sliderY = 400;
       }
       if (sliderY > 500) {
         sliderY = 500;
       }
 
   }
 
 }

 strokeWeight(1);
 stroke(color1);
 fill(color1);
 ellipse(400,280,thickness,thickness);
 
thickness = map(sliderY, 400, 500, 50, 80);

fill(black);
text("SAMPLE --->",300,280);


}
