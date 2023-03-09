main(){
  List<int> numbers = [1,2,3,1,3,6];

  // because we will remove items so we need numbers list to full for other solutions
  List<int> tempList = [];
  tempList.addAll(numbers);
  print("Count General using remove");
  countGeneralUsingRemove(tempList);

  print("================================");
  print("Count General using Map");
  Map<int,int> counts = countGeneralUsingMap(numbers);
  for(int i in counts.keys){
    print("$i -> ${counts[i]}");
  }
  print("================================");
  print("Count General using bool flag");
  countGeneralUsingBoolean(numbers);
}
// 1 2 3 1 3 6
// 0 1 2 3


// using remove
countGeneralUsingRemove(List<int>numbers){
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
Map<int,int> countGeneralUsingMap(List<int>numbers){
  Map<int,int> counts = {};
  for(int i=0;i<numbers.length;i++){
    if(!counts.keys.contains(numbers[i])){
      int count = 1;
      for(int j = i+1;j<numbers.length;j++){
        if(numbers[i] == numbers[j]){
          count++;
        }
      }
      counts.putIfAbsent(numbers[i], () => count);
    }

  }
  return counts;
}

bool isExistBefore(List<int>numbers , int currentIndex){
  int value = numbers[currentIndex];
  for(int i=0;i<currentIndex-1;i++){
    if(value == numbers[i]) return true;
  }
  return false;
}
countGeneralUsingBoolean(List<int>numbers){
  for(int i=0;i<numbers.length;i++){
    if(isExistBefore(numbers, i)) continue;
    int count = 1;
    for(int j = i+1;j<numbers.length;j++){
      if(numbers[i] == numbers[j]){
        count++;
      }
    }
    print("${numbers[i]} -> $count");
  }
}