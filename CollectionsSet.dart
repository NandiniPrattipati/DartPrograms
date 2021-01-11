int sum=0;
int Sets( setA, setB) {
  var A = setA.elementAt(0);
  var lenA = setA.length;
  print('Length of setA is $lenA');
  print('the element 0 of set {1,3} is $A');
  var B = setB.elementAt(1);
  var lenB = setB.length;
  print('Length of setB is $lenB');
  print('the element 1 of set {1,3} is $B');
  Set setC = setB.difference(setA);
  Set setD = setA.difference(setB);
  var FinalSet = setD.union(setC);//The result set{1,5}
  var setE = setA.union(setB);//the union of both sets{1,3,5}
  print('The set union of both sets is $setE');
  print('The difference of both sets $FinalSet');

  for (var i=0;i<=FinalSet.length;i++) {
    sum += FinalSet.length;
  }
  return sum;

}
void main() {
  const setA = {1, 3};
  const setB = {3, 5};
  Sets(setA, setB);
  print('The total sum is $sum');
}