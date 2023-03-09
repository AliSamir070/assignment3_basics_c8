main(){
  // 34589
  List<int> numbers = [3,1,0,7,9,4,-1];
  bubbleSort(numbers);
  print(numbers);
}

void bubbleSort(List<int>numbers){
  for(int i=0;i<numbers.length;i++){
    bool isSwapped = false;
    for(int j=0;j<numbers.length-i-1;j++){
      if(numbers[j]>numbers[j+1]){
        isSwapped = true;
        swap(j, j+1, numbers);
      }
    }
    if(isSwapped == false){
      break;
    }
  }
}
void swap(int index1 , int index2 , List<int> numbers){
  int temp = numbers[index1];
  numbers[index1] = numbers[index2];
  numbers[index2] = temp;
}