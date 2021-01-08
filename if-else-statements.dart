import 'dart:io';
void main(){
  int totalSalary, allExpenses;
  print('please enter your total salary');
  totalSalary=int.parse(stdin.readLineSync());
  print('please enter your whole expenses in a month');
  allExpenses=int.parse(stdin.readLineSync());
  print('Your total salary is $totalSalary and expenses are $allExpenses for this month');
  if(totalSalary>allExpenses){
    int balance=totalSalary-allExpenses;
    print('You have saved $balance this month. Good job!');
  }
  else if(allExpenses>totalSalary){
    int loss=allExpenses-totalSalary;
    print('You have lost $loss this month. Spend less!');
  }
  else
  print ('Your balance have not changed');
}
