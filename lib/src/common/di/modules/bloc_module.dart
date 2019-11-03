import 'package:inject/inject.dart';
import 'package:telehealth/src/common/features/foobar/data/local/local_db_floor.dart';

@module
class BlocModule {
  @provide
  @singleton
  Person getPerson() => Person(4, "Laxman");
}
