part of ex8;


//exercice 1
List creationphrase(List nom, List verbe, List adjectif, List adverbe) {
  
  int nbrphrase = max(nom.length, max(verbe.length, max(adjectif.length, adverbe.length)));
  List phrase_hasard = new List();
  Random rndm = new Random();

  for (int i = 0; i < nbrphrase; i++) {
    String nouvellePhrase = ""; 
    
    nouvellePhrase = nouvellePhrase + adjectif.elementAt(rndm.nextInt(adjectif.length));
    nouvellePhrase = nouvellePhrase + nom.elementAt(rndm.nextInt(nom.length));
    nouvellePhrase = nouvellePhrase + verbe.elementAt(rndm.nextInt(verbe.length));
    nouvellePhrase = nouvellePhrase + adverbe.elementAt(rndm.nextInt(adverbe.length));
   
    phrase_hasard.add(nouvellePhrase);
  }
  
  return phrase_hasard;
  
}

//exercice 2

triNom(var membres) {  
  List nom = new List();
  for (var i = 0; i < membres.length; i++) {
    nom.add(membres[i]['nom']);
  }    
  for (var i = 1; i < nom.length; i++) {
    var x;
    var t = new Map();
    var j;
    x = nom[i];
    t = membres[i];
    j = i;
    while (j >= 1 && nom[j - 1].compareTo(x) > 0 ) {
      nom[j] = nom[j - 1];
      membres[j] = membres[j - 1];
      j = j - 1;      
    }    
    nom[j] = x;
    membres[j] = t;
  } 
  print(membres);
}  

triPrenom(var membres) {  
  List prenom = new List();
  for (var i = 0; i < membres.length; i++) {    
    prenom.add(membres[i]['prénom']);
  }    
  for (var i = 1; i < prenom.length; i++) {
    var x;
    var t = new Map();
    var j;
    x = prenom[i];
    t = membres[i];
    j = i;    
    while (j >= 1 && prenom[j - 1].compareTo(x) > 0 ) {      
      prenom[j] = prenom[j - 1];
      membres[j] = membres[j - 1];
      j = j - 1;      
    }    
    prenom[j] = x;
    membres[j] = t;
  } 
  print(membres);  
}  

obtenirListeLettre(membres, car) {  
  List lettre = new List();  
  for (var i = 0; i < membres.length; i++) {
    Map obtenirLettre = membres[i];
    var nom = obtenirLettre["nom"];
    if(nom.startsWith(car)) {
      lettre.add(obtenirLettre);
    }
  }  
  print(lettre);
}

// exercice 3

// exercice 4

List prepmatrice(int intHeight, int intWidth) {
  var matrice = new List(intHeight);
  for (var i = 0; i < intHeight; i++) {
    matrice[i] = new List(intWidth);
  }
  for (int row = 0; row < intHeight; row++) {
    for (int col = 0; col < intWidth; col++) {
      matrice[row][col] = false;
    }
  }
  return matrice;
}
bool save(List matrix, int row, int col, int intHeight, int intWidth, List visitedMatrix) {
  bool rowIsValid = row >= 0 && row < intHeight;
  bool columnIsValid = col >= 0 && col < intWidth;
  if (rowIsValid && columnIsValid) {
    bool valueIsOne = matrix[row][col] == 1;
    bool valueNotVisited = !visitedMatrix[row][col];
    if (valueIsOne && valueNotVisited) {
      return true;
    }
  }
  return false;
}
void att(List matrix, int row, int col, int intHeight, int intWidth, List visitedMatrix) {
  List nrowPositions = [-1, -1, -1, 0, 0, 1, 1, 1];
  List ncolPositions = [-1, 0, 1, -1, 1, -1, 0, 1];
  visitedMatrix[row][col] = true;
  for (int n = 0; n < 8; ++n) {
    var nrow = row + nrowPositions[n];
    var ncol = col + ncolPositions[n];
    if (save(matrix, nrow, ncol, intHeight, intWidth, visitedMatrix)) {
      att(matrix, nrow, ncol, intHeight, intWidth, visitedMatrix);
    }
  }
}
String nbrile(List lstMatrix){
  String strReturn = '';
  int intHeight = lstMatrix.length;
  int intWidth = lstMatrix[0].length;
  int ile = 0;
  List matrice = prepmatrice(intHeight, intWidth);  
  for (int row = 0; row < intHeight; ++row){
    for (int col = 0; col < intWidth; ++col){
      if (lstMatrix[row][col] == 1 && !matrice[row][col]) {
        att(lstMatrix, row, col, intHeight, intWidth, matrice);
        ++ile;
      }
    }
  }
  strReturn += ile.toString();
  return strReturn;


// exercice 5
}