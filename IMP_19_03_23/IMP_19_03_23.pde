float s = 50;
float x = 0;
float y = 0;
void setup() {
    size(500, 500);
    background(150);
    viereck();

}

void viereck() {
    noStroke();
    fill(0);
    quad(x,y,x+s,y+s/2, x+s, y+s+s/2, x, y+s);
}

void zeichneAlleRouten() {
    
}