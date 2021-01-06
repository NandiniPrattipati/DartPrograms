void main() {
  List<double> aList = [343, 534, 23423, 4545, 223, 434.534, 1434.534, 232.534];
  print(aList);
  num sum = 0;
  for (num value in aList) {
    sum += value;
  }
  print('Sum of values:$sum');
}
