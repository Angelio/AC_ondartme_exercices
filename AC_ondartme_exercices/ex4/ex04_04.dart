import 'dart:math' as M;

int Y = 10; //années
var I = 0.033; //intérêt
int K = 1000; //capital de départ

main () {
  var a = 1 + I; 
  var b = M.pow(a, Y);
  var c = b*K;
  var d = c - K;
  
  //Calculer un intérêt composé sur 10 ans d'une somme de 1000$ à 3,3% de taux d'intérêt
  print ("Au bout de 10 ans, mes 1000 dollars à 3,3% de taux d'intérêt m'auront rapporté ${(d).toStringAsFixed(2)} dollars. Mon capital sera alors de ${(c).toStringAsFixed(2)} dollars.");
}
