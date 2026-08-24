// ============================================================
// PART I - OOP CONCEPT IDENTIFICATION
// ============================================================

// 1. A Student class contains name, studentId, and course.
// ANSWER: Class

// 2. Student student1 = Student("Juan", "2026-001", "BSIT");
// ANSWER: Object

// 3. A MobilePhone class contains a method called makeCall().
// ANSWER: Method

// 4. Smartphone extends MobilePhone.
// ANSWER: Inheritance

// 5. A subclass provides its own implementation of displayInfo().
// ANSWER: Polymorphism

// 6. A class keeps its variables private and provides methods
//    for accessing them.
// ANSWER: Encapsulation

// 7. A constructor automatically initializes an object's attributes.
// ANSWER: Constructor

// 8. Several Student objects are created from the same Student class.
// ANSWER: Object

// ============================================================
// CODING EXERCISE 1
// CREATE A CLASS - MobileApp
// ============================================================


// class MobileApp {
//   String appName;
//   String developer;
//   String version;

//   // Constructor
//   MobileApp(this.appName, this.developer, this.version);

//   // Method
//   void displayInfo() {
//     print("App Name: $appName");
//     print("Developer: $developer");
//     print("Version: $version");
//   }
// }


// void main() {

// print("============================");
// print("EXERCISE 1: MOBILE APP");
// print("============================");

// MobileApp app1 = MobileApp(
// "Instagram",
// "Meta",
// "350.0",
// );

// MobileApp app2 = MobileApp(
// "Netflix",
// "Netflix Inc.",
// "8.140",
// );

// MobileApp app3 = MobileApp(
// "YouTube",
// "Google",
// "20.30",
// );

// app1.displayInfo();

// print("============================");

// app2.displayInfo();

// print("============================");

// app3.displayInfo();

// print("============================");

// }

// 1. What happens when you create multiple objects from the same class?
// Observation: Each object has its own data and can be used separately.

// 2. Do the three objects contain the same data? Explain.
// Observation: No. Each object contains different app information.

// 3. What is the purpose of the constructor?
// Observation: It initializes the attributes when an object is created.

// 4. What would happen if you removed the displayInfo() method?
// Observation: displayInfo(). Calling the removed method would cause an error.


// ============================================================
// CODING EXERCISE 2
// ENCAPSULATION - UserAccount
// ============================================================


// class UserAccount {
//   String username;
//   String email;
//   String _password;

//   UserAccount(this.username, this.email, this._password);

//   // Change password
//   void setPassword(String newPassword) {
//     _password = newPassword;
//   }

//   // Check password
//   bool checkPassword(String password) {
//     return _password == password;
//   }

//   // Display user information.
//   void displayUserInfo() {
//     print("Username: $username");
//     print("Email: $email");
//   }
// }


// void main () {
// print("\n=======================");
// print("EXERCISE 2: ENCAPSULATION");
// print("=========================");

// UserAccount account = UserAccount(
// "student01",
// "student01@email.com",
// "Mobile123",
// );

// account.displayUserInfo();

// print("------------------------------");

// // 1. Correct password
// print(
// "Correct password: ${account.checkPassword("Mobile123")}"
// );

// // 2. Incorrect password
// print(
// "Incorrect password: ${account.checkPassword("wrongpass")}"
// );

// // 3. Changing password
// account.setPassword("Mobile321");
// print("Password changed.");

// // 4. Testing new password
// print(
// "New password: ${account.checkPassword("Mobile321")}"
// );

// }

// 1. Why should a password not be directly accessible?
// Observation: To protect the password from being changed or seen directly.

// 2. What is the purpose of _password?
// Observation: It keeps the password private inside the class.

// 3. What happens when you try to access _password directly from outside the
// class?
// Observation: Dart gives an error because _password is private to the class.

// 4. How can encapsulation improve the security of a mobile application?
// Observation: It protects sensitive data by controlling how it can be accessed.


// class MobileDevice {
//   String brand;
//   String model;

//   MobileDevice(this.brand, this.model);

//   void displayDeviceInfo() {
//     print("Brand: $brand");
//     print("Model: $model");
//   }

//   void showPlatform() {
//     print("Generic Mobile Platform");
//   }
// }

// class AndroidDevice extends MobileDevice {
//   String androidVersion;

//   AndroidDevice(
//     String brand,
//     String model,
//     this.androidVersion,
//   ) : super(brand, model);

//   void displayAndroidInfo() {
//     displayDeviceInfo();
//     print("Android Version: $androidVersion");
//   }

//   @override
//   void showPlatform() {
//     print("Android Platform");
//   }
// }

// class IOSDevice extends MobileDevice {
//   String iosVersion;

//   IOSDevice(
//     String brand,
//     String model,
//     this.iosVersion,
//   ) : super(brand, model);

//   void displayIOSInfo() {
//     displayDeviceInfo();
//     print("iOS Version: $iosVersion");
//   }

//   @override
//   void showPlatform() {
//     print("iOS Platform");
//   }
// }

// void main() {
//   print("\n==========================");
//   print("EXERCISE 4: POLYMORPHISM");
//   print("==========================");

//   MobileDevice device1 = AndroidDevice(
//   "OnePlus",
//   "OnePlus 13",
//   "15",
//   );

//   MobileDevice device2 = IOSDevice(
//   "Apple",
//   "iPhone 13",
//   "16",
//   );

//   device1.showPlatform();

//   print("--------------------------");

//   device2.showPlatform();

//   print("==========================");
// }

// 1. Which attributes are inherited by AndroidDevice?
// Observation: AndroidDevice inherits the brand and model from MobileDevice.

// 2. Which attributes are inherited by IOSDevice?
// Observation: IOSDevice inherits the brand and model from MobileDevice.

// 3. What is the purpose of extends?
// Observation: extends allows a child class to inherit properties and methods from a parent class.

// 4. What is the purpose of super()?
// Observation: super() is used to call the parent class constructor and initialize its attributes.It calls the parent class constructor.

// 5. Why is inheritance useful when developing mobile applications?
// Observation: Inheritance is useful because it allows us to reuse code, save time, and avoid repeating the same code.

// Observation 4

// 1. What output did you observe?
// Observation: It displayed "Android Platform" and "iOS Platform".

// 2. Why did device1.showPlatform() execute the Android implementation?
// Observation: Because device1 is actually an AndroidDevice, so it uses the Android version of showPlatform().

// 3. Why did device2.showPlatform() execute the iOS implementation?
// Observation: Because device2 is actually an IOSDevice, so it uses the iOS version of showPlatform().

// 4. What is method overriding?
// Observation: Method overriding means a child class creates its own version of a method from the parent class.


////////////////////////
// Challenge Exercise:
///////////////////////

class Student {
  String studentId;
  String name;
  String email;

  Student(this.studentId, this.name, this.email);

  void displayStudent() {
    print("ID: $studentId");
    print("Name: $name");
    print("Email: $email");
  }

  void enrollCourse(Course course) {
    course.displayCourse();
  }
}

class Course {
  String courseCode;
  String courseName;
  int units;

  Course(this.courseCode, this.courseName, this.units);

  void displayCourse() {
    print("Code: $courseCode");
    print("Course: $courseName");
    print("Units: $units");
  }
}

class StudentMobileApp {
  String appName;
  String version;

  StudentMobileApp(this.appName, this.version);

  void displayAppInfo() {
    print("Application: $appName");
    print("Version: $version");
  }
}

void main() {
  StudentMobileApp app = StudentMobileApp(
    "Student Portal",
    "1.0",
  );

  Student student = Student(
    "2026-001",
    "Juan Dela Cruz",
    "juan@email.com",
  );

  Course course = Course(
    "IT101",
    "Basic Mobile Development",
    3,
  );

  print("==============================");
  print("STUDENT MOBILE APP");
  print("==============================");

  app.displayAppInfo();

  print("Student Information");
  print("------------------------------");

  student.displayStudent();

  print("Enrolled Course");
  print("------------------------------");

  student.enrollCourse(course);
}

//1. Class vs Object
//Answer: A class is like a blueprint, while an object is something created from that blueprint.
//Example: Student is the class, and student1 is an object with a student's own information.


//2. Encapsulation
//Answer: Encapsulation can be used to protect a user's password.
//The password is kept private and can only be changed or checked using special methods.


//3. Inheritance
//Answer: Inheritance can be useful for mobile devices.
//For example, AndroidDevice and IOSDevice can get common information like brand and model
//from the MobileDevice class.


//4. Polymorphism
//Answer: Polymorphism allows the same method to do different things.
//For example, showPlatform() can show "Android Platform" for Android and "iOS Platform" for iOS.


//5. OOP and Mobile Development
//Answer: OOP helps Flutter developers organize and reuse their code.
//It makes the application easier to understand, build, and update.
