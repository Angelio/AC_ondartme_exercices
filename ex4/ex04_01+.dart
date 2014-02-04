//Après avoir lu cours n°4, essaye seul
String SuiteFibonacci(int k) {
  var a = 0;
  var b = 1; 
  var f = 1;
  var n = 1;
  String result = '0' ' 1';
  while (n < k) {
    f = a + b;
    result = '$result $f';
    a = b;
    b = f;
    n = n + 1;
  }
  return result;
}
// imprimer les 11 premiers termes de la suite de Fibonacci en partant du terme 0
main() {
  int count = 10;
  String sequence =
      SuiteFibonacci(count);
  print('Suite de Fibonacci: '
        '${count + 1} premiers termes');
  print(sequence);
}
