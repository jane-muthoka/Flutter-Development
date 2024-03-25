
// Interface
abstract class Person {
  void introduceYourself();
}

//class and properties
class Human implements Person {
  String name;
  int age;
  int weight;
  int yearOfStudy;
  String gender;
  String nationality;

  // Constructor
  Human(this.name, this.weight, this.age, this.yearOfStudy, this.gender,this.nationality);

  // Method that overrides an inherited method
  @override
  void introduceYourself() {
    print('Hello, my name is $name. I am $age years old.');
  }

  // Method with a loop
  void checkWeight() {
    if (weight >= 100) {
      print('Warning: You are obese.');
    } else {
      print('Your weight is okay.');
    }
  }

  // Method to read data from a file and initialize an instance of the class
  factory Human.fromFile(String filename) {
    // Open the file
    var file = File(filename);

    try {
      // Read the contents of the file
      List<String> data = file.readAsLinesSync();

      // Extract data from file
      var name = data[0];
      var age = int.parse(data[1]);
      var weight = int.parse(data[2]);
      var yearOfStudy = int.parse(data[3]);
      var gender = data[4];
      var nationality = data[5];

      // Create and return an instance of Human
      return Human(name, weight, age, yearOfStudy, gender, nationality);
    } catch (e) {
      print('Error reading file: $e');
      return null;
    }
  }
}

// Child class inheriting from Human
class Student extends Human {
  String school;

  // Constructor
  Student(String name, int weight, int age, int yearOfStudy, String gender,
      String nationality, this.school)
      : super(name, weight, age, yearOfStudy, gender, nationality);

  // Method that demonstrates the use of a loop
  void study() {
    for (int i = 1; i <= yearOfStudy; i++) {
      print('Studying year $i');
    }
  }
}

void main() {
  // Initialize an instance of Human from file
  var humanFromFile = Human.fromFile('data.txt');
  if (humanFromFile != null) {
    print('Human initialized from file:');
    humanFromFile.introduceYourself();
    humanFromFile.checkWeight();
  }

  // Create an instance of Student
  var student = Student('John', 70, 20, 2, 'Male', 'American', 'XYZ School');
  print('\nStudent information:');
  student.introduceYourself();
  student.study();
  student.checkWeight(); // Using the method from parent class
}
