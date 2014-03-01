library ex5;

part 'fcns.dart';

void main() {

  //Test pour la question 1
  print('''Test pour la question n°1:
True quand il n'y a que des lettres et des espaces
False s'il y a des choses en plus''');
 
  String myString1 = "Une phrase avec des lettres et des espaces";
  bool test1 = lettresetespacesseulement(myString1);
  print("Test 1 : Une phrase avec des lettres et des espaces. Réponse : ${(test1)}");

  String myString2 = "Comme la phrase 1";
  bool test2 = lettresetespacesseulement(myString2);
  print("Test 2 : Comme la phrase 1. Réponse : ${(test2)}");
  
  String myString3 = "Sans chiffre, pardi !";
  bool test3 = lettresetespacesseulement(myString3);
  print("Test 3 : Sans chiffre, pardi ! Réponse : ${(test3)}");

  print ('');
  
  //Test pour la question n°2
  print('''Test pour la question n°2
Montrer la phrase la plus longue d'un texte''');
  String myString4 = "Voici le texte. Une phrase courte est plus petite qu'une phrase longue.";
  String test4 = phraselongueur(myString4);
  print(test4);

  print ('');
  
  //Test pour la question n°3
  print('''Test pour question n°3
Montrer le mot le plus long du texte''');
  String myString5 = "Anticonstitutionnellement est le mot le plus long.";
  String test5 = motlongueur(myString5);
  print(test5);

  print ('');

  //Test pour la question n°4
  print('''Test pour la question n°4:
Montrer la table du 8''');
  List list1 = Table(8, 10);
  for (int i = 0; i < list1.length; i++)  {
    print('${list1[i]}');
  }
  
  print ('');

  //Test pour la question n°5
  print('''Test pour la question n°5: avec 5 branches
''');
 arbre(5);
 
 print('''Test pour la question n°5: avec 6 branches
''');
 arbre(6);
 print ('');
}