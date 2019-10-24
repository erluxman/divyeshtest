import 'package:flutter/material.dart';
import 'package:telehealth/src/common/account/business/usecases/account_usecases.dart';
import 'package:telehealth/src/common/account/data/model/user_model.dart';

class AccountProvider with ChangeNotifier {
  AccountUseCases _accountUseCases;

  Stream<Account> get user => _accountUseCases.fetchAccountInfo.getAccount();

  AccountProvider(this._accountUseCases);

  updateFullName(String fullName) {
    _accountUseCases.updateFullName(fullName);
  }
}
