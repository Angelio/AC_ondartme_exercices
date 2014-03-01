library ex8;

import 'dart:math';

part 'fonctions.dart';
part 'ex8_test.dart';

void main() {
  
  print("Exercice 1 : Faire une phrase avec un choix de mots au hasard");
  print("");
  
  List adjectifliste = ["gentil", "super", "génial"];
  List nomliste = ["papa", "maman", "papi"];
  List verbeliste = ["prépare", "répare","nettoie"];
  List adverbeliste = ["violemment", "immédiatement","gentillement"];
  
  print ("Liste des adjectifs : ${adjectifliste}");
  print("Liste des noms :${nomliste}");
  print ("Liste des verbes : ${verbeliste}");
  print ("Liste des adverbes : ${adverbeliste}");
  
  List resultliste = creationphrase(nomliste, verbeliste, adjectifliste, adverbeliste);
  print ("Phrase au hasard : ${resultliste}");
print('----');

print("Exercice 2 : Création d'une liste des membres d'une association"); 
print('');

var lettre = 'M';

var association = [
                   {'nom': 'Hanouna Bande', 'description': 'Bande Touche pas à mon poste !'},
                   {'nom': 'Ruquier Bande', 'description': '''Bande On va s'gêner'''},];

var membres = [
               {'associationNom' : 'Hanouna Bande','nom': 'Maire', 'prénom': 'Jean-Michel','courriel': 'jeanmimi@hb.fr'},
               {'associationNom' : 'Hanouna Bande','nom': 'Carrière', 'prénom': 'Christophe','courriel': 'cachris@hb.fr'},
               {'associationNom' : 'Ruquier Bande','nom': 'Bénichou', 'prénom': 'Pierre', 'courriel': 'papygaga@rb.com'},
               {'associationNom' : 'Ruquier Bande','nom': 'Steevy', 'prénom': 'Boulay', 'courriel': 'bourricot@rb.com'}]; 

print('Liste des membres :');
print(membres);
print('');

print('Liste des membres triés selon leurs noms:');
triNom(membres);
print('');

print('Liste des membres triés selon leurs prénoms:');
triPrenom(membres);
print('');

print('Liste des membres dont leurs noms commencent par $lettre :');
obtenirListeLettre(membres, lettre);
print ('----');

print("Exercice 3 : Création d'une liste des membres d'une association"); 
print ('');
print ('Ok pour le concept mais à part faire des changements dans votre modèle, que faire ?');

print ('----');

print("Exercice 4 : Création d'un algotithme d'une matrice"); 
print ('');
print ('''Je n'ai pas assez étudier les matrices pour comprendre l'exercice et ce qui est demandé. Notamment la notion d'île, d'horizontale et de verticale.''');
matrice();

print ('----');

print("Exercice 5 : Création d'un puzzle ou de carrés mystiques"); 
print ('');
print ('''Ok pour le concept, je partirais de votre algorithme et je fais arrêter le modèle dès qu'il y a la bonne configuration. Puis il faudrait trouver un moyen de faire le chemin le plus court pour y arriver. ''');
block();
  

}

