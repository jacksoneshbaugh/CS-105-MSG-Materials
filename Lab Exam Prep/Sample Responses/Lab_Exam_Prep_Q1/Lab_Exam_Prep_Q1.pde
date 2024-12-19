Student[] students = new Student[100];

void setup() {
  // testing the functionality.
  add(new Student("Jackson Eshbaugh", "CS/French", "Biotech/Math", 20, 123456789));
  display();
  println(find(new Student("Jackson Eshbaugh", "CS/French", "Biotech/Math", 20, 123456789)));
  remove(new Student("Jackson Eshbaugh", "CS/French", "Biotech/Math", 20, 123456789));
  display();
  
}

void add(Student s) {
  for(int i = 0; i < students.length; i++) {
    if(students[i] == null) {
      students[i] = s;
      return;
    }
  }
}

void remove(Student s) {
  
  for(int i = 0; i < students.length; i++) {
    if(students[i] == null) continue;
    if(students[i].getLNumber() == s.getLNumber()) {
      // for a student to be the same as another, we compare L Numbers.
      // if this student is present, remove them from the array (set their entry to null).
      students[i] = null;
    }
  }
  
}

boolean find(Student s) {
  
  for(int i = 0; i < students.length; i++) {
    // if an entry is null, ignore it.
    if(students[i] != null) {
      // for a student to be the same as another, we compare L Numbers.
      // if this student is here, return true.
      if(students[i].getLNumber() == s.getLNumber()) {
        return true;
      }
    }
  }
  
  return false;
  
}

void display() {
  
  for(Student s : students) {
    if(s != null) {
      s.display();
    }
  }
  
}
