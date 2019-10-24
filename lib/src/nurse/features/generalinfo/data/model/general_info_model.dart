
enum MethodOfArrival { AMBULATORY, GURNEY, WHEEL_CHAIR }

enum TemperatureSource { ORAL, TYMPANIC, AXILLARY }

enum PulseLocation { APICAL, RADICAL }

enum PulseQuality { STRONG, REGULAR, WEAK, IRREGULAR }

class BloodPressure {
  int systolic;
  int diastolic;
}

enum BloodPressureLocation { LEFT_ARM, RIGHT_ARM }

enum BloodPressurePosition { STANDING, SITTING, LYING }

class GeneralInfoModel {

  String formID;

  String name;

  DateTime dob;

  String mrMrs;

  DateTime date;

  MethodOfArrival methodOfArrival;

  String referredBy;

  String accompainedBy;

  double temperature;

  TemperatureSource temperatureSource;

  int respiration;

  int pulse;

  PulseLocation pulseLocation;

  PulseQuality pulseQuality;

  BloodPressure bloodPressure;

  BloodPressureLocation bloodPressureLocation;

  BloodPressurePosition bloodPressurePosition;

  double height;

  double weight;

  double bmi;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  GeneralInfoModel({
    this.name,
    this.dob,
    this.mrMrs,
    this.date,
    this.methodOfArrival,
    this.referredBy,
    this.accompainedBy,
    this.temperature,
    this.temperatureSource,
    this.respiration,
    this.pulse,
    this.pulseLocation,
    this.pulseQuality,
    this.bloodPressure,
    this.bloodPressureLocation,
    this.bloodPressurePosition,
    this.height,
    this.weight,
    this.bmi,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is GeneralInfoModel &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              dob == other.dob &&
              mrMrs == other.mrMrs &&
              date == other.date &&
              methodOfArrival == other.methodOfArrival &&
              referredBy == other.referredBy &&
              accompainedBy == other.accompainedBy &&
              temperature == other.temperature &&
              temperatureSource == other.temperatureSource &&
              respiration == other.respiration &&
              pulse == other.pulse &&
              pulseLocation == other.pulseLocation &&
              pulseQuality == other.pulseQuality &&
              bloodPressure == other.bloodPressure &&
              bloodPressureLocation == other.bloodPressureLocation &&
              bloodPressurePosition == other.bloodPressurePosition &&
              height == other.height &&
              weight == other.weight &&
              bmi == other.bmi);

  @override
  int get hashCode =>
      name.hashCode ^
      dob.hashCode ^
      mrMrs.hashCode ^
      date.hashCode ^
      methodOfArrival.hashCode ^
      referredBy.hashCode ^
      accompainedBy.hashCode ^
      temperature.hashCode ^
      temperatureSource.hashCode ^
      respiration.hashCode ^
      pulse.hashCode ^
      pulseLocation.hashCode ^
      pulseQuality.hashCode ^
      bloodPressure.hashCode ^
      bloodPressureLocation.hashCode ^
      bloodPressurePosition.hashCode ^
      height.hashCode ^
      weight.hashCode ^
      bmi.hashCode;

  @override
  String toString() {
    return 'GeneralInfoBlocModel{' +
        ' name: $name,' +
        ' dob: $dob,' +
        ' mrMrs: $mrMrs,' +
        ' date: $date,' +
        ' methodOfArrival: $methodOfArrival,' +
        ' referredBy: $referredBy,' +
        ' accompainedBy: $accompainedBy,' +
        ' temperature: $temperature,' +
        ' temperatureSource: $temperatureSource,' +
        ' respiration: $respiration,' +
        ' pulse: $pulse,' +
        ' pulseLocation: $pulseLocation,' +
        ' pulseQuality: $pulseQuality,' +
        ' bloodPressure: $bloodPressure,' +
        ' bloodPressureLocation: $bloodPressureLocation,' +
        ' bloodPressurePosition: $bloodPressurePosition,' +
        ' height: $height,' +
        ' weight: $weight,' +
        ' bmi: $bmi,' +
        '}';
  }

  GeneralInfoModel copyWith({
    String name,
    DateTime dob,
    String mrMrs,
    String date,
    MethodOfArrival methodOfArrival,
    String referredBy,
    String accompainedBy,
    double temperature,
    TemperatureSource temperatureSource,
    int respiration,
    int pulse,
    PulseLocation pulseLocation,
    PulseQuality pulseQuality,
    BloodPressure bloodPressure,
    BloodPressureLocation bloodPressureLocation,
    BloodPressurePosition bloodPressurePosition,
    double height,
    double weight,
    double bmi,
  }) {
    return new GeneralInfoModel(
      name: name ?? this.name,
      dob: dob ?? this.dob,
      mrMrs: mrMrs ?? this.mrMrs,
      date: date ?? this.date,
      methodOfArrival: methodOfArrival ?? this.methodOfArrival,
      referredBy: referredBy ?? this.referredBy,
      accompainedBy: accompainedBy ?? this.accompainedBy,
      temperature: temperature ?? this.temperature,
      temperatureSource: temperatureSource ?? this.temperatureSource,
      respiration: respiration ?? this.respiration,
      pulse: pulse ?? this.pulse,
      pulseLocation: pulseLocation ?? this.pulseLocation,
      pulseQuality: pulseQuality ?? this.pulseQuality,
      bloodPressure: bloodPressure ?? this.bloodPressure,
      bloodPressureLocation:
      bloodPressureLocation ?? this.bloodPressureLocation,
      bloodPressurePosition:
      bloodPressurePosition ?? this.bloodPressurePosition,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      bmi: bmi ?? this.bmi,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'dob': this.dob,
      'mrMrs': this.mrMrs,
      'date': this.date,
      'methodOfArrival': this.methodOfArrival,
      'referredBy': this.referredBy,
      'accompainedBy': this.accompainedBy,
      'temperature': this.temperature,
      'temperatureSource': this.temperatureSource,
      'respiration': this.respiration,
      'pulse': this.pulse,
      'pulseLocation': this.pulseLocation,
      'pulseQuality': this.pulseQuality,
      'bloodPressure': this.bloodPressure,
      'bloodPressureLocation': this.bloodPressureLocation,
      'bloodPressurePosition': this.bloodPressurePosition,
      'height': this.height,
      'weight': this.weight,
      'bmi': this.bmi,
    };
  }

  factory GeneralInfoModel.fromMap(Map<String, dynamic> map) {
    return new GeneralInfoModel(
      name: map['name'] as String,
      dob: map['dob'] as DateTime,
      mrMrs: map['mrMrs'] as String,
      date: map['date'] as DateTime,
      methodOfArrival: map['methodOfArrival'] as MethodOfArrival,
      referredBy: map['referredBy'] as String,
      accompainedBy: map['accompainedBy'] as String,
      temperature: map['temperature'] as double,
      temperatureSource: map['temperatureSource'] as TemperatureSource,
      respiration: map['respiration'] as int,
      pulse: map['pulse'] as int,
      pulseLocation: map['pulseLocation'] as PulseLocation,
      pulseQuality: map['pulseQuality'] as PulseQuality,
      bloodPressure: map['bloodPressure'] as BloodPressure,
      bloodPressureLocation:
      map['bloodPressureLocation'] as BloodPressureLocation,
      bloodPressurePosition:
      map['bloodPressurePosition'] as BloodPressurePosition,
      height: map['height'] as double,
      weight: map['weight'] as double,
      bmi: map['bmi'] as double,
    );
  }

//</editor-fold>
}
