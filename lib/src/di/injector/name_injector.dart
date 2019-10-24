
import 'package:inject/inject.dart';
import '../../main.dart';
import '../dummy_module.dart';
import 'name_injector.inject.dart' as g;

@Injector(const [DummyModule])
abstract class NameInjector{

  @provide
  App get app;

  static final create= g.NameInjector$Injector.create;
}
