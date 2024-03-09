//Assignment on data types
void main(){
 //Num
int myint = 4;
print('Integer:$myint');
//Boolean
bool iampretty=true;
print("Jane is $iampretty");
//double
double isdouble=12.3;
print('Double:$isdouble');
//string
String mystr='loves dart';
print('Jane $mystr');
//map
Map <String,int> mymap = {'mango':5,'apple':4,'banana':8};
print('Map:');
mymap.forEach((key,value){
  print('$key :$value');
});

//list
List<int> mylist = [1,2,3,4,5];
print('List:');
for (int i =0;i<mylist.length;i++){
  print('Element $i:${mylist[i]}');
}
}