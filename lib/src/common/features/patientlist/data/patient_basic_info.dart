class PatientBasicInfo {
  String id;

  String name;
  int age;
  bool isSynced;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  PatientBasicInfo({
    this.id,
    this.name,
    this.age,
    this.isSynced,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PatientBasicInfo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          age == other.age &&
          isSynced == other.isSynced);

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ age.hashCode ^ isSynced.hashCode;

  @override
  String toString() {
    return 'PatientBasicInfo{' +
        ' id: $id,' +
        ' name: $name,' +
        ' age: $age,' +
        ' isSynced: $isSynced,' +
        '}';
  }

  PatientBasicInfo copyWith({
    String id,
    String name,
    int age,
    bool isSynced,
  }) {
    return new PatientBasicInfo(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      isSynced: isSynced ?? this.isSynced,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'age': this.age,
      'isSynced': this.isSynced,
    };
  }

  factory PatientBasicInfo.fromMap(Map<String, dynamic> map) {
    return new PatientBasicInfo(
      id: map['id'] as String,
      name: map['name'] as String,
      age: map['age'] as int,
      isSynced: map['isSynced'] as bool,
    );
  }

//</editor-fold>
}
