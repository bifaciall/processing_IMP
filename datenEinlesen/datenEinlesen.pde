void setup() {
    background(100);
    size(1920,500);
    Table punkte = loadTable("punkte.csv", "header");
    int[] zahlen = new int[punkte.getRowCount()];
    String[] namen = new String[punkte.getRowCount()];
    for (int i = 0; i < punkte.getRowCount(); i++) {
        TableRow r = punkte.getRow(i);
        int score = r.getInt("Punkte");
        String name = r.getString("Name");
        zahlen[i] = score;
        namen[i] = name;
    }
     int n = zahlen.length;  
        int temp = 0;  
        String temp2 = ""; 
         for(int i=0; i < n; i++){  
                 for(int j=1; j < (n-i); j++){  
                          if(zahlen[j-1] > zahlen[j]){  
                                 //swap elements  
                                 temp = zahlen[j-1];  
                                 temp2 = namen[j-1]; 
                                 zahlen[j-1] = zahlen[j]; 
                                 namen[j-1] = namen[j]; 
                                 zahlen[j] = temp;  
                                 namen[j] = temp2;
                         }  
                          
                 }  
         }  
    /*int i = 0;
    for (TableRow row : punkte.rows()){
      int score = row.getInt("Punkte");
      String name = row.getString("Name");
      zahlen[i] = score;
      namen[i] = name;
      i++;
    }*/
    
    zeichneBalken(zahlen, namen);
    
}

void zeichneBalken(int[] zahlen, String[] namen) {

  clear();

  // Überschrift
  fill(255);
  //textFont(grosseSchrift);
  text("Scoreliste", 2, 20);
  //textFont(kleineSchrift);

  // ----------------------------------------------------------------------
  for (int i = 0; i<zahlen.length; i++) {
    rect (120,25+15*i, zahlen[i], 10); //multiplikator 4 zum vergrößern
    text (namen[i]+":      "+ zahlen[i], 10, 34+15*i); 
  }
}