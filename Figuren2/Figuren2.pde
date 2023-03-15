void zeichneBildC(){
    rect(10,10,100,100); //äußeres Rechteck
    ellipse(60, 170, 100, 100); //äußere Ellipse
    for(int i = 0; i < 3; i++){ // 3x Loop
        ellipse(60, 60, 80-i*20, 80-i*20); // innere Ellipsen
        rect(30+i*10,140+i*10,60-i*20,60-i*20); // innere Rechtecke
    }
}
void setup(){
    size(600,600);
    zeichneBildC();
}