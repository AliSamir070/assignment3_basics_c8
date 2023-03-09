void main(){
  List<int> numbers = [2,2,5,9,0,1,9,-5];
  int minimum = getMin(numbers);
  print("The minimum : $minimum");
}

int getMin(List<int> numbers){
  int minimum = numbers[0];
  for(int i=0;i<numbers.length;i++){
    if(numbers[i]<minimum){
      minimum = numbers[i];
    }
  }
  return minimum;
}