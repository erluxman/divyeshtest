import 'dart:async';

import 'package:floor/floor.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'local_db_floor.g.dart';

@entity
class Person {
  @primaryKey
  final int id;

  final String name;

  Person(this.id, this.name);
}

@dao
abstract class PersonDao {
  @Query('SELECT * FROM Person')
  Stream<List<Person>> findAllPersons();

  @Query('SELECT * FROM Person WHERE id = :id')
  Future<Person> findPersonById(int id);

  @insert
  Future<void> insertPerson(Person person);
}

@Database(version: 1, entities: [Person])
abstract class AppDatabase extends FloorDatabase {
  PersonDao get personDao;
}

class FloorTestDb {
  AppDatabase _appDatabase;

  FloorTestDb() {
    _init();
  }

  _init() async {
    }

  insertNewPerson() async {
    var newPerson = Person(DateTime.now().millisecondsSinceEpoch,
        "New User at ${DateTime.now().toIso8601String()}");
    await _appDatabase.personDao.insertPerson(newPerson);
  }

  Stream<List<Person>> getPersonList()  {
    return _appDatabase.personDao.findAllPersons();
  }
}
