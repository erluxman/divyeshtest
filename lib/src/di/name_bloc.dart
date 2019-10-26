import 'package:inject/inject.dart';
import 'package:rxdart/rxdart.dart';
import 'package:telehealth/src/data/remote/remote_db_chopper.dart';

class NameBloc extends BlocBase {
  AppName _name;
  PublishSubject<String> _nameSubject;

  @provide
  NameBloc(this._name){
    init();
  }

  init() {
    _nameSubject = PublishSubject();
    _nameSubject.add(_name.name);
  }

  Observable<String> get name => _nameSubject.stream;

  initWithMyName() async {
    _nameSubject.add("Laxman Bhattarai");
  }
  showEmail() async{
    _nameSubject.add("erluxman@gmail.com");
    final apiTest = ChopperAPITest();
    apiTest.testChopper();
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
