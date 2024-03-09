//functions in dart
//void main() {
//  PrintName();
//}

//function to add integers
void addTwo(int num1,int num2) {
  int sum=(num1 + num2);
  print("The sum is $sum");
}

//function to subtract
void subtractTwo(int num1,int num2){
  int subtract=(num1 - num2);
  print("The subtraction is $subtract");
}

//function to multiply
void multiplyTwo(int num1,int num2){
  int multiply=(num1*num2);
  print('The product is $multiply');
}

//function to divide
void divideTwo(num num1,num num2){
  double divide=(num1/num2);
  print('Division is equals to $divide');
}
//that takes an argument of type String and returns the length of that string.
void stringLength(String str){
  int Length=str.length;
  print('The length of the string is $Length');
}
//function  takes a list as an argument and returns the first element of that list.
//dynamic getFirtsElement(List <dynamic> mylist){
 // if(mylist.isNotEmpty){
 //   return mylist[0];
  //} else { 
  //  return null;

 // }
  
//}
dynamic getFirstElement(List<dynamic> mylist) {
  if (mylist.isNotEmpty) {
    return mylist[0]; // Return the first element (index 0) of the list
  } else {
    return null; // Return null if the list is empty
  }
}

void main(){
  addTwo(22,22);
  //print("The total is $sum");
  subtractTwo(10,9);
  //print("The difference is $subtract");
  multiplyTwo(2,2);
  divideTwo(4,2);
  stringLength('Jane');
  List<int> myList = [1, 2, 3, 4];
  print(getFirstElement(myList));
}


