main(){
  List<int> numbers = [3,4,1,6,6];
  int countOf2 = count2(numbers);
  print("The counting of 2 : $countOf2");
}

int count2(List<int> numbers){
  int count = 0;
  for(int i =0;i<numbers.length;i++){
    if(numbers[i] == 2){
      count++;
    }
  }
  return count;
}