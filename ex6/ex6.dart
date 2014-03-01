library ex6.dart;

part 'library.dart';

void main(){

  print('Question 1 : Cette phrase est-elle un palindrome ?');
  print('');
  print('''Définition palindrome : figure de style désignant un texte ou un mot dont l'ordre des lettres 
reste le même qu'on le lise de gauche à droite ou de droite à gauche.''');
print('');
var texte1 = "esoperesteeluparcettecrapuleetserepose";
var answer1='';
print('Essai 1: Ésope reste élu par cette crapule et se repose. (Cédric Villani)');
answer1 = Palindrome(texte1);
if (answer1==true) {
  print('Réponse Essai 1: Vrai. Le texte est un palindrome.');}
else {print('''Réponse Essai 1 : Faux. Le texte n'est pas un palindrome.''');}
print('');
print('Essai 2 : Able was I ere I saw Elba. (Napoléon Bonaparte)');
var texte2 = "ablewasiereisawelba";
var answer2='';
answer2 = Palindrome(texte2);
if (answer1==true) {
  print('Réponse Essai 2 : Vrai. Le texte est un palindrome.');}
else {print('''Réponse Essai 2 : Faux. Le texte n'est pas un palindrome.''');}
print('');
print('Essai 3: Laval est un palindrome.');
var texte3 = "lavalestunpalindrome";
var answer3='';
answer2 = Palindrome(texte3);
if (answer3==true) {
  print('Réponse Essai 3 : Vrai. Le texte est un palindrome.');}
else {print('''Reponse Essai 3 : Faux. Le texte n'est pas un palindrome.''');}
print('----');


print('Question 2 : Combien y a-t-il de jours entre deux dates ?');
print('');
DateTime date1=new DateTime(2013,12,12);
print('La premiere date est : ${date1}');
DateTime date2 = new DateTime(2014,02,28);
print('La deuxieme date est : ${date2}');
answer3=difference2date(date2,date1);
print('Il y a ${answer3} jours entre ces deux dates.');
print('----');


print('Question 3 : Conversion des notes chiffrées en notes lettrées.');
print('');
print('Note en lettre si 99%  :  ${conversiondenote(99)}');
print('Note en lettre si 84%  :  ${conversiondenote(84)}');
print('Note en lettre si 71%  :  ${conversiondenote(71)}');
print('Note en lettre si 64%  :  ${conversiondenote(64)}');
print('Note en lettre si 53%  :  ${conversiondenote(53)}');

print('----');


print('''Question 4 : Faire 3 listes de nom avec une liste de nom :
plus grande que 8 lettres, plus petites que 8 lettres et égale à 8 lettres.''');
print('');
List listedenoms = ['assaisonnemnt', 'maltodextrine', 'glutamate', 'monosodique', 'lactosérum', 'inosinate', 'guanylate', 'ciboulette',
                    'blé', 'sel', 'maïs', 'sucre', 'levure', 'soya', 'caramel', 'oignon',
                    'enrichie', 'proteine', 'autolysé', 'sulfites', 'carottes', 'contient', 'angelino', 'capretti',];
print('Liste de nom : ${listedenoms}');

print('');
print('Voici les noms classés dans chaque liste :');
print('');
Fonctiondeliste(listedenoms);


print('----');

print('''Question 5 : Classer des joueurs par ordre d'equipe''');
print('');
{
  
  var teams = new Map();
  teams[1] = 'France';
  teams[2] = 'USA';
  teams[3] = 'Italie';
  teams[4] = 'Canada';
  
  print ('Liste des équipes : ${teams}');
  
  var listteams = teams.values.toList();

  
  var players = new Map();
  players['Chirac'] = 1;
  players['Tremblay'] = 4;
  players['Sarkozy'] = 1;
  players['Clinton'] = 2;
  players['Renzi'] = 3;
  players['Kennedy'] = 2;
  players['Cartier'] = 4;
  players['Letta'] = 3;
  players['Hollande'] = 1;
  players['Kerry'] = 2;
  players['Capretti'] = 3;
  players['Simard'] = 4;
  
  var listplayer = players.keys.toList();
  
  print ('Liste des joueurs : ${players}');
  
  var liste = CreateTeamLists(teams, players);
  
  print ('');
  
  for(var v in liste)
  {
    print(v);
  }
  
} 

}