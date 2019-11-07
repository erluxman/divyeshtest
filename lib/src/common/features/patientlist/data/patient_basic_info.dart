class PatientBasicInfo {
  String id;

  String name;
  int age;

  PatientBasicInfo({this.name, this.age}) {
    id = DateTime.now().toIso8601String();
  }
}
