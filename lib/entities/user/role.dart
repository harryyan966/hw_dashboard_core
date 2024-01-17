enum Role {
  student,
  teacher,
  admin,
}

extension RoleSugar on Role {
  bool isStudent() => this == Role.student;
  bool isTeacher() => this == Role.teacher;
  bool isAdmin() => this == Role.admin;

  bool isNotStudent() => this != Role.student;
  bool isNotTeacher() => this != Role.teacher;
  bool isNotAdmin() => this != Role.admin;
}
