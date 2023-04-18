void setup() {
    Table namepunkte;
    namepunkte = loadTable("punkte.csv", "header");
    String[] namen = new String[namepunkte.getRowCount()];
    int[] punkte = new int[namepunkte.getRowCount()];
    
    for (int i = 0; i < namepunkte.getRowCount(); i++) {
        namen[i] = namepunkte.getString(i, 0);
        punkte[i] = namepunkte.getInt(i, 1);
    }
    int[] highscorePunkte = new int[3];
    String[] highscoreNamen = new String[3];
    int indexM1 = maximumsuche(punkte); //Variable indexM1 wird auf das Index des Maximum der Punkteliste gesetzt
    System.out.printf("Der Erste Platz ist %s mit %d Punkten%n", namen[indexM1],punkte[indexM1]);
    highscorePunkte[0] = punkte[indexM1];
    highscoreNamen[0] = namen[indexM1];
    punkte[indexM1] = 0;                //der Wert des Indexes wird auf 0 gesetzt-> kein Maximum mehr
    
    int indexM2 = maximumsuche(punkte); //Variable indexM2 wird auf das Index des Maximum der Punkteliste gesetzt
    System.out.printf("Der Zweite Platz ist %s mit %d Punkten%n", namen[indexM2],punkte[indexM2]);
    highscorePunkte[1] = punkte[indexM2];
    highscoreNamen[1] = namen[indexM2];
    punkte[indexM2] = 0;                //auch dieses Element wird auf 0 gesetzt
    
    int indexM3 = maximumsuche(punkte); //Variable indexM3 wird auf das Index des Maximum der Punkteliste gesetzt
    System.out.printf("Der Dritte Platz ist %s mit %d Punkten%n", namen[indexM3],punkte[indexM3]);
    highscorePunkte[2] = punkte[indexM3];
    highscoreNamen[2] = namen[indexM3];
    speichern(highscoreNamen, highscorePunkte);
    
    
    
}
int maximumsuche(int[] array) {
    int indexM = 0;
    for (int i = 1; i < array.length; i++) {
        if (array[i] > array[indexM]) {
            indexM = i;
            
        }
    }
    return indexM;
}


void speichern(String[] namen, int[] punkte) {
    Table highscoreListe = new Table();
    highscoreListe.addColumn("Name");
    highscoreListe.addColumn("Punkte");
    for (int i = 0; i < namen.length; i++) {
        TableRow highscoreRow = highscoreListe.addRow();
        highscoreRow.setString("Name", namen[i]);
        highscoreRow.setInt("Punkte", punkte[i]);
    }
    saveTable(highscoreListe, "highscoreListe.csv");
    
}