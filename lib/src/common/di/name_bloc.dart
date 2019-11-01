import 'package:inject/inject.dart';
import 'package:rxdart/rxdart.dart';
import 'package:telehealth/src/common/data/local/local_db_floor.dart';
import 'package:telehealth/src/common/data/remote/remote_db_chopper.dart';

class NameBloc extends BlocBase {
  AppName _name;
  FloorTestDb testDb;
  PublishSubject<String> _nameSubject;

  @provide
  NameBloc(this._name) {
    init();
  }

  init() {
    _nameSubject = PublishSubject();
    _nameSubject.add(_name.name);
    testDb = FloorTestDb();
  }

  Observable<String> get name => _nameSubject.stream;

  Stream<List<Person>> get persons => testDb.getPersonList();

  initWithMyName() async {
    _nameSubject.add("Laxman Bhattarai");
  }

  showEmail() async {
    _nameSubject.add("erluxman@gmail.com");
    final apiTest = ChopperAPITest();
    apiTest.testChopper();
    testDb.insertNewPerson();
  }

  @override
  dispose() {
    _nameSubject.close();
  }
}

abstract class BlocBase {
  void dispose();
}

class AppName {
  String name;

  AppName(this.name);
}
