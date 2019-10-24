

import 'model/user_model.dart';

abstract class AccountRepository {
  Stream<Account> getAccount();
  String setUserId();
  String setSessionKey();
  String setName();
  bool isLoggedIn();
  signOut();
}
