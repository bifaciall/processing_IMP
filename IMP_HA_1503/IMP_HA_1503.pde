int s = 30;
int a = 10;

void quadrate() {
    fill(0);
    //int xPosition = 0;
    int i = 0;
    int j = 0;
    while(j*(s) < height){
        while(i*(s) < width){
            System.out.println(i);
            rect(a+i*(s+a), a+j*(s+a),s,s);
            i++;
            
        }
        j++;
        System.out.println(j);
    }
}

void setup(){
    size(1920, 1080);
    quadrate();
}