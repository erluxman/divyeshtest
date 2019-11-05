import 'package:inject/inject.dart';
import 'package:telehealth/src/common/features/patientlist/di/patient_list_module.dart';

import '../../../main.dart';
import 'name_injector.inject.dart' as g;

@Injector(const [
  PatientListModule,
])
abstract class NameInjector {
  @provide
  App get app;

  static create() => g.NameInjector$Injector.create(PatientListModule());
}
