import 'package:inject/inject.dart';
import 'package:telehealth/src/di/modules/bloc_module.dart';
import 'package:telehealth/src/di/modules/data_module.dart';
import 'package:telehealth/src/di/modules/widget_module.dart';

import '../../main.dart';
import '../dummy_module.dart';
import 'name_injector.inject.dart' as g;

@Injector(const [DummyModule, DataModule, BlocModule, WidgetModule])
abstract class NameInjector {
  @provide
  App get app;

  static create() => g.NameInjector$Injector.create(
        DummyModule(),
        DataModule(),
        BlocModule(),
        WidgetModule(),
      );
}
