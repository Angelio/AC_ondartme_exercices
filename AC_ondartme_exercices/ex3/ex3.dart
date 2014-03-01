void main () {
  String x = 'Fizz';
  String y = 'Buzz';
  String z = 'FizzBuzz';
  String o = '';
  
  for (int i = 1; i <= 100; i ++ ) {
    bool fizz = i % 3 == 0;
    bool buzz = i % 5 == 0;
    bool fizzbuzz = (i % 3 == 0) && (i % 5 == 0);
    bool oo = (i % 3 != 0) && (i % 5 != 0);
    if (fizzbuzz){
      print ('$i : $z');
    }
    else if (fizz){
      print ('$i : $y');  
    }
    else if (buzz){
      print ('$i : $x');
    }
    else if (oo){
      print ('$i : $o');   
    }
  }
}