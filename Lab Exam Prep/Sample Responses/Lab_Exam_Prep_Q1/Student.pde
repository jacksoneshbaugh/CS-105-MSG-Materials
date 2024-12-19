class Student {

  String name, major, minor;
  int age, lNumber;
  
  Student(String tempName, String tempMajor, String tempMinor, int tempAge, int tempLNumber) {
    
    name = tempName;
    major = tempMajor;
    minor = tempMinor;
    age = tempAge;
    lNumber = tempLNumber;
    
  }
  
  String getName() {
    return name;
  }
  
  int getAge() {
    return age;
  }
  
  int getLNumber() {
    return lNumber;
  }
  
  String getMajor() {
    return major;
  }
  
  String getMinor() {
    return minor;
  }
  
  void display() {
    println("L#" + getLNumber() + " " + getName() + " (" + getAge() + ") [" + getMajor() + "/" + getMinor() + "]");
  }
  
  
  
}
