main() {
//Supposons qu'il y a 30 jours dans un mois comme en comptabilité

// mes renseignements sur mon anniversaire à midi
  int birthday = 26;
  int birthmonth = 4;
  int birthyear = 1991;
  int birthhour = 12;
  var birth = (birthyear*360*24) + (birthmonth*30*24) + (birthday*24) + birthhour;

// renseignements sur ce jour
  int nowday = 5;
  int nowmonth = 2;
  int nowyear = 2014;
  int nowhour = 12;
  var now = (nowyear*360*24) + (nowmonth*30*24) + (nowday*24) + nowhour;
  
  var a = now - birth; //heures
  var b = (a/24); //jours
  var c = b/30; //mois
  var d = c/12; //années
 
  //Calcul du temps en années, mois et jours écoulés entre mon anniversaire et aujourd'hui à midi.
  //Pour information affichage en heures
  
  print('''Cela fait ${(d).toStringAsFixed(1)} années, soit ${(c).toStringAsFixed(0)} mois, soit ${b.toStringAsFixed(0)} jours, ou encore ${a.toStringAsFixed(0)} heures que je suis né.''');
 
  }