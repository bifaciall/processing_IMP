String verschluesseleVigenere(String nachricht, String schluessel) {
    String verschluesselteNachricht = "";
    int nachrichtLaenge = nachricht.length();
    int schluesselLaenge = schluessel.length();
    
    for (int i = 0; i < nachrichtLaenge; i++) {
        char nachrichtZeichen = nachricht.charAt(i);
        char schluesselZeichen = schluessel.charAt(i % schluesselLaenge);
        
        // Umwandlung von Buchstaben in den Bereich 0-25 (A=0, B=1, ...)
        int nachrichtWert = (int) nachrichtZeichen - 65;
        int schluesselWert = (int) schluesselZeichen - 65;
        
        // Vigenère-Verschlüsselung: Addition der Werte und Modulo 26
        int verschluesselterWert = (nachrichtWert + schluesselWert) % 26;
        
        // Umwandlung des verschlüsselten Werts in den Buchstabenbereich 65-90 (A-Z)
        char verschluesseltesZeichen = (char)(verschluesselterWert + 65);
        
        verschluesselteNachricht += verschluesseltesZeichen;
    }
    
    return verschluesselteNachricht;
}

String entschluesseleVigenere(String verschluesselteNachricht, String schluessel) {
    String entschluesselteNachricht = "";
    int nachrichtLaenge = verschluesselteNachricht.length();
    int schluesselLaenge = schluessel.length();
    
    for (int i = 0; i < nachrichtLaenge; i++) {
        char verschluesseltesZeichen = verschluesselteNachricht.charAt(i);
        char schluesselZeichen = schluessel.charAt(i % schluesselLaenge);
        
        // Umwandlung von Buchstaben in den Bereich 0-25 (A=0, B=1, ...)
        int verschluesselterWert = (int) verschluesseltesZeichen - 65;
        int schluesselWert = (int) schluesselZeichen - 65;
        
        // Vigenère-Entschlüsselung: Subtraktion der Werte und Modulo 26
        int entschluesselterWert = (verschluesselterWert - schluesselWert + 26) % 26;
        
        // Umwandlung des entschlüsselten Werts in den Buchstabenbereich 65-90 (A-Z)
        char entschluesseltesZeichen = (char)(entschluesselterWert + 65);
        
        entschluesselteNachricht += entschluesseltesZeichen;
    }
    
    return entschluesselteNachricht;
}


void setup() {
    String nachricht = "WICHTIG";
    String schluessel = "HUT";
    
    String verschluesselteNachricht = verschluesseleVigenere(nachricht, schluessel);
    String entschluesselteNachricht = entschluesseleVigenere(verschluesselteNachricht, schluessel);
    
    
    println("Ursprüngliche Nachricht: " + nachricht);
    println("Verschlüsselte Nachricht: " + verschluesselteNachricht);
    
    
}