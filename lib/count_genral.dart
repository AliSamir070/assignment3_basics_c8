main(){
  List<int> numbers = [1,2,3,1,3,6];
  countGeneral(numbers);

}
// 1 2 3 1 3 6
// 0 1 2 3

countGeneral(List<int>numbers){
  for(int i=0;i<numbers.length;i++){
    int count = 1;
    for(int j = i+1;j<numbers.length;j++){
      if(numbers[i] == numbers[j]){
        count++;
        numbers.removeAt(j);
      }
    }
    print("${numbers[i]} -> $count");
  }
}