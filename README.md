## 1A. Evaluering av tabellen *bok_utvidet*


### Normaliseringsprinsipper
Normaliseringsprinsippene viser til enkelt og greit at: 
hver type informasjon lagres på riktig sted, som sin egen enhet. Vi ønsker ingen duplisering eller gjentagelse. vi vil sikre god datakvalitet som gjør det enkelt å vedlikeholde. 

### Utvidet - tabell eksempel
I dette eksempelet så ser vi at; 
Bøker, forfatter og forlag er på samme linje. Denne type struktur byr på flere utfordringer. 
Vi kan ikke søke opp hver ting seperat. Hvilket betyr at man må legge til samme forlag og ect forfatter på nytt hver gang, dette skaper redundens og kan gi duplikater. 

Stavefeil og variasjoner i skrivemåte kan registrere samme forlag som forskjellige og hvil gi dårlig datastruktur da det ikke blir mulig å søke de opp.
Det foreligger også situasjoner hvor man f.eks sletter en bok og vil også slette forfatter da det ligger kun som tekst og ikke som en egen enhet. Dette er ellers viktig informasjon vi trenger og er derfor viktig at alt av slike ting blir lagret som en egen enhet i egen tabell. 


### 1B. Skisser forbedret tabell
Under så vil jeg skissere i form at tekst en forbedret versjon av tabell "utvidet Bok". 
Jeg har valgt å dele den opp og putte "Forfatter" og "forlag" som egne enheter og heller referere de som en ID i bok tabell. 


## Tabell Bok
 - Kolonner: 
   - ISBN
   - Tittel
   - Utgivelses år
   - AntallSider
   - ForfatterID (dette er blitt gjort om som egen enhet)
   - ForlagID (Dette er blitt gjort om som egen enhet)
 - Primærnøkkel:
   - ISBN
 - Fremmednøkkel:
   - ForfatterID - Forfatter tabell
   - ForlagID - Forlag tabell

## Tabell Forfatter
 - 