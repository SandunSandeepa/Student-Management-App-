class StudentManagement {
  int id;
  String name;
  String degree;

  StudentManagement({
    required this.id,
    required this.name,
    required this.degree,
  });

  //store all students
  static final List<StudentManagement> _students = [];

  static void addStudent(StudentManagement student) {
    _students.add(student);
  }
}
