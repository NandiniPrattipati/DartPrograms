void main(){
  for(var i=0;i<=15;i++){
    if(i%3==0 && i%5==0){
      print('Masala Dosa');
    }
    else if(i%3==0){
      print('Masala');
    }
    else if(i%5==0){
      print('Dosa');
    }
    else {
      print('Biryani');
    }
  }
}