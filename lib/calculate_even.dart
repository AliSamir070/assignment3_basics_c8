import 'dart:io';

main(){
  List<int> numbers = [];
  getInput(numbers);
  int summation = calculateEven(numbers);
  print("The sum of even numbers = $summation");
}

void getInput(List<int> numbers){
  print("Enter the numbers you need and enter negative number to close program");
  int n = int.parse(stdin.readLineSync());
  while(n>=0){
    numbers.add(n);
    print("");
    n = int.parse(stdin.readLineSync());
  }
  print(numbers);
}
int calculateEven(List<int> numbers){
  int sum = 0;
  for(int i=0;i<numbers.length;i++){
    if(numbers[i]%2==0){
      sum+=numbers[i];
    }
  }
  return sum;
}