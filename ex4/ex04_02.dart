import 'dart:math' as M;

void main(){
  
  var x0= 0;
  var y0= 0;
  var width = 980;
  var height = 660;
  var degrees = 33;
  var length = 120; 
  var radians = degrees * (M.PI / 180);
  var xend = width/2 + 120*M.cos(radians);
  var yend = height/2 + 120*M.sin(radians);
  //Calculer les coordonnées du point en fin de ligne
  //Pour information affichage du début de ligne
  print('Les coordonnées en debut de ligne sont : (${(width/2).toStringAsFixed(1)},${(height/2).toStringAsFixed(1)})'
  ' et ceux en fin de ligne sont: (${xend.toStringAsFixed(1)},${yend.toStringAsFixed(1)}).');
}