part of ex5;

//Fonction question n°1
bool lettresetespacesseulement(String text)  {
  String textLowerCase = text.toLowerCase();
  List lettres = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
                    'l','m', 'n', 'o', 'p', 'q', 'r','s', 't', 'u', 'v',
                    'w', 'x', 'y', 'z', ' '];
  bool reponse = true;

  for(int i = 0; i < textLowerCase.runes.length; i++)  {
    bool presence = false;
    for(int j = 0; j < lettres.length; j++)  {
      if(textLowerCase[i] == lettres[j])  {
        presence = true;
      }
    }
    if(presence == false)  {
      reponse = false;
    }
  }
  return reponse;
}

//Fonction question n°2
String phraselongueur(String text)  {

  String longueur = "";
  String reste = "";
  for (int i = 0; i < text.length; i++) {
    if (text[i] == " " && text[i - 1] == ".")  {
      i++;
    }
    if (text[i] != ".")  {
      reste = reste + text[i];
    }
    if (text[i] == ".")  {
      if (reste.length > longueur.length) {
        longueur = reste;
      }
      reste = "";
    }
  }

  return longueur;
}

//Fonction question n°3
String motlongueur(String text)  {

  String longueur = "";
  String reste = "";
  for (int i = 0; i < text.length; i++) {
    if (text[i] != " ")  {
      reste = reste + text[i];
    }
    if (text[i] == " ")  {
      if (reste.length > longueur.length) {
        longueur = reste;
      }
      reste = "";
    }
  }

  return longueur;
}

//Fonction question n°4
List Table(num value, int length)  {
  List nombre = new List();

  for (int i = 1; i <= length; i++) {
    num produit = value * i;
    nombre.add("$value * $i = ${value * i}");
  }

  return nombre;
}

//Fonction question n°5
void arbre(int heigth)  {
  List reste = new List(heigth);
  num nombre = heigth * 2 - 1;


  for (int i = 1; i <= heigth; i++)  {
    String ligne = "";
    num nombreetoile = i * 2 - 1;
    num nombreespace = nombre - nombreetoile;
    nombreespace = nombreespace / 2;
    for (int j = 0; j < nombre; j++)  {
      if(j < nombreespace || j >= nombreespace + nombreetoile)  {
        ligne = ligne + " ";
      }
      else  {
        ligne = ligne + "*";
      }
    }
    reste[i - 1] = ligne;
  }

  //Pour montrer l'arbre
  for (int k = 0; k < heigth; k++)  {
    print("${reste[k]}");
  }
}