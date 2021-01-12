import 'dart:core';
void main()  {
  double Fahrenheit=86;
  double Celsius;
  Runes degree = new Runes(' \u{00B0} ');
  var deg=new String.fromCharCodes(degree);
  print(deg);
  Celsius=(Fahrenheit-32)/1.8;
  print('$Fahrenheit$deg F is $Celsius$deg C');
}