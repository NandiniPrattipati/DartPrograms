import 'dart:io';
import 'Product.dart';
import 'Item.dart';
import 'Cart.dart';

const products=<Product>[
  Product(id: 1, name: 'Apple', price: 1.5),
  Product(id: 2, name: 'Banana', price: 0.99),
  Product(id: 3, name: 'Grapes', price: 1.95),
  Product(id: 4, name: 'Mushrooms', price: 0.81),
  Product(id: 5, name: 'Potatoes', price: 1.45)];

void main() {
  print('Welcome!');
  final cart = Cart();
  stdout.writeln('Choose your options: 1.(V)iew Cart, \n2.(A)dd Item, \n3.(C)heckout, \n4.(E)xit');
  final options = stdin.readLineSync();
  while (true) {
    switch(options) {
      case 'a':
        if (options == 'A' || options == 'a') {
          Product product;
          product = allProducts();
          if (product != null) {
            cart.addProduct(product);
            print('${product.name} is added to your cart');
          }
          else {
            print('No such product found. Try again'); // Prompt again if the user picks an option not available
          }
        }
        else{
          print('Wrong option');
        }
        break;
      case 'v':  // Display all items of the cart when user picks View Cart option
        if (options == 'V' || options == 'v') {
          print(cart);
        }
        break;
      case 'c':
        if (options == 'C' || options == 'c') {
          if (checkOut(cart)){
            break;
          }
        }
        break;
      default:
        print('Wrong option');
        break;
    }
     if (options == 'E'|| options == 'e') {
        if(cart==null){
          print('Cart is empty. Thank you, Visit again :)');
          exit(0);
        }
        else if(cart!=null){
          print('There are few items in the cart.');
          print('Would you like to cancel them?:y/n');
          final cancel= stdin.readLineSync();
          if(cancel=='y'){
            print('Items are cancelled. Thank you, Visit again');
            break;
          }
          else{
            print('Wrong option');
          }
        }
      }
    }
  }

bool checkOut(Cart cart) {
  if (cart.isEmpty()) {
    print('Cart is empty');
  }
  final amount = cart.totalPrice();
  print('Total amount to be paid:\$$amount');
  stdout.write('Amount received:');
  final readAmount = stdin.readLineSync();
  if (readAmount == null || readAmount.isEmpty) {
    print('Cash Invalid');
  }
  final paidAmount = double.tryParse(readAmount);
  if (paidAmount == null) {
    print('Cash Invalid');
  }
  if(paidAmount>=amount){
    final change= paidAmount-amount;
    print('Change to be returned: \$$change');
    print('\n Thank you, Visit Again!');
  }
  else{
    print('Invalid Amount. Try again');
  }
  return true;
}

Product allProducts(){//Products in the list are coming to Map as string.
 final pList= products.map((Product product) => product.displayName()) as String;
 print('All products in the list:$pList');
 stdout.writeln('Select an item:');
 final selectItem=stdin.readLineSync();
 for(final product in products){
    if(product.initial() == selectItem){
      return product;
    }//break;
    else{
      print('Product not found');
    }
   }
   return null;
}