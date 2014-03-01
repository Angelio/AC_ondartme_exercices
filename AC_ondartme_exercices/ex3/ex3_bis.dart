void main (){

  for (var i=1; i<=100; i++)
    print(i % 15 == 0 ? "$i : FizzBuzz" :
      i % 3 == 0 ? "$i : Fizz" : 
        i % 5 == 0 ? "$i : Buzz" :
          i);
}