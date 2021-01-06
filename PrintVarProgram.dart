import 'dart:io';
void main(){
  print('BIODATA');
  print('Enter first name:');
  var firstName= stdin.readLineSync();
  print('Enter last name:');
  var lastName= stdin.readLineSync();
  print('Enter age:');
  var age= stdin.readLineSync();
  print('Enter height');
  var height= stdin.readLineSync();
  print('FirstName:$firstName');
  stdout.writeln('LastName:$lastName');
  stdout.writeln('Age:$age\nHeight=$height');
  }