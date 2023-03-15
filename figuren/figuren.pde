//***** Aufgabe 1 *****
void zeichneBildC() {
  // Zeichne dir zunächst eine Skizze auf ein Blatt Papier und überlege dir, welche
  // Werte du den Methoden rect(x,y,b,h) und ellipse(x,y,b,h) übergeben musst, 
  // dass geforderte Bild C gezeichnet wird

  // ***** hier kommen deine Anweisungen hin ************

rect(100, 100, 100, 100);
ellipse(150, 150, 80, 80);
ellipse(150, 150, 60, 60);
ellipse(150, 150, 40, 40);
//-------------------------//
ellipse(150, 270, 100, 100);
rect(120, 240, 60, 60); 
rect(130, 250, 40, 40); 
rect(140, 260, 20, 20); 
  // ***** Ende der eigenen Anweisungen **********
}


//***** Aufgbe 2 *****
void zeichneBildA() {
  // ***** hier kommen deine Anweisungen hin ************
  
  triangle(200, 270, 300, 270, 250, 220);
  rect(200, 170, 100, 50);
  ellipse(250, 120, 100, 100);

  // ***** Ende der eigenen Anweisungen **********  
 
}


void setup() {
  size(500, 350); // Festlegen der Fenstergröße
  //zeichneBildC(); // Aufruf deiner Methode
  zeichneBildA();
}
