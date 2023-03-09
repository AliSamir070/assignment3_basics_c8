void main(){
  List<int> numbers = [3,1,0,7,9,4,-1];
  selectionSort(numbers);
  print(numbers);
}

void selectionSort(List<int> numbers){
  for(int i=0;i<numbers.length;i++){
    int minIndex = getMin(numbers , i);
    swap(i, minIndex, numbers);
  }
}

void swap(int index1 , int index2 , List<int> numbers){
  int temp = numbers[index1];
  numbers[index1] = numbers[index2];
  numbers[index2] = temp;
}

int getMin(List<int> numbers , int index){
  int minimumIndex = index;
  int minimum = numbers[index];
  for(int i=index;i<numbers.length;i++){
    if(numbers[i]<minimum){
      minimum = numbers[i];
      minimumIndex = i;
    }
  }
  return minimumIndex;

}