import 'package:inject/inject.dart';

@module
class DataModule {
  @provide
  @singleton
  int rollNo() =>5;
}
