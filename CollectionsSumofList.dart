//
// void main(){
//   num list = sum([]);
//   print('Sum of list[]: $sum');
//   num list1 = sum([1,2]);
//   print('Sum of list1[1,2]: $sum');
//   num list2 = sum([1,2,3,4]);
//   print('Sum of list2[1,2,3,4]: $sum');
// }
//  double sum(List<double>args) {
//   var values = 0.0;
//   for(num total in args){
//     values += total;
//   }
//   return values;
//

void main(){
sum([]);
sum([1,2]);
sum([1,2,3,4]);
}

double sum(List<double> sumList){
double sum=0;
for(int i=0;i<=sumList.length-1;i++){
  sum+=sumList[i];
}
print(sum);
}