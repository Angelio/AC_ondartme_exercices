part of ex6.dart;


//arguments de la question 1
bool Palindrome(String text) {
  
  int debut = 0;
  int fin = text.length - 1;
  
  while (debut < fin) {
    if (text[debut] != text[fin]) {
      return false;
    }
    debut = debut + 1;
    fin = fin - 1;
  }
  
  return true;
}


//arguments de la question 2

 difference2date(DateTime date1, DateTime date2) {
  
  Duration tempsentrelesdeux = date1  .difference(date2);
  return tempsentrelesdeux.inDays.ceil();
}


//arguments de la question 3
 conversiondenote(resultat){
   if (resultat>=88)
     return "A";
   else if (resultat>=78)
     return "B";
   else if (resultat>=67)
     return "C";
   else if (resultat>=60)
     return "D";
   else return "E";
  
   
 }
 

//arguments de la question 4
 Fonctiondeliste(listedenoms){
  
   var plushuit=[];
   var moinshuit = [];
   var egalehuit = [];
   
   
   for (int i = 0; i < listedenoms.length; i++) {
     String s = listedenoms.elementAt(i);
     if (s.length < 8) {
       moinshuit.add(s);
     } else if (s.length > 8) {
       plushuit.add(s);
     } else {
       egalehuit.add(s);
     }

   }
   {
   print('celle avec mots de moins de 8 lettres: ${moinshuit}');
   print('');
   print('celle avec des mots de 8 lettres: ${egalehuit}');
   print('');
   print('celle avec des mots de plus de 8 lettres: ${plushuit}');
   
   
   }
 }
  //arguments de la question 5
 
 listedejoueuretclub(TeamPlayers){
   List teams = new List();
   List players = new List();
   
   for (String equipe in TeamPlayers.values) {
     if (!teams.contains(equipe)) {
       teams.add(equipe);
       players.add(new List());
     }
   }
   teams.sort();
   
   
   for (String joueur in TeamPlayers.keys) {
     int position = teams.indexOf(TeamPlayers[joueur]);
     players.elementAt(position).add(joueur);
   }
   
   List fonctiondeliste2 = new List();
   for (int i = 0; i < teams.length; i++) {
     fonctiondeliste2.add(teams.elementAt(i));
     for(int j = 0; j < players.elementAt(i).length; j++) {
       fonctiondeliste2.add(players.elementAt(i).elementAt(j));
     }
   }
  return(fonctiondeliste2);
 }
 CreateTeamLists(var teams, var players)
 {
   var liste = new List();
   
   var equipeJoueurs = players.values.toList();
   var nomJoueurs = players.keys.toList();
   
   for(int i = 0; i < players.length; i++)
   {
     var noEquipe = equipeJoueurs[i];
     var nomEquipe = teams[noEquipe]; 
     var nomJoueur = nomJoueurs[i];
     
     var chaine = nomEquipe + " - " + nomJoueur;
     
     liste.add(chaine);
   }
   
   liste.sort((players,team) => players[0].compareTo(team[0]));

   return liste;
 }
 
 