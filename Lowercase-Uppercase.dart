import 'dart:io';
void main(){
  String title;
  print('Enter the title:');
  title=stdin.readLineSync();
  print(title);
  title=title.toLowerCase();
  print(title);
  title=title.toUpperCase();
  print(title);
}